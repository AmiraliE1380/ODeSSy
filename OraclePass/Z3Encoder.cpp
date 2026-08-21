#include "Z3Encoder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Operator.h"
#include "llvm/ADT/SmallString.h"
#include <chrono>
#include <string>
#include <sstream>

using namespace llvm;

Z3Encoder::Z3Encoder(unsigned TimeoutMs) : Solver(Ctx) {
    // Per-query safety net: a pathological query returns UNKNOWN after
    // TimeoutMs (handled like SAT downstream) instead of hanging the run.
    Solver.set("timeout", TimeoutMs);
}

void Z3Encoder::push() { Solver.push(); }
void Z3Encoder::pop()  { Solver.pop(); }

void Z3Encoder::enableUnsatCores() { Solver.set("unsat_core", true); }

void Z3Encoder::assertConditionTracked(Value *Cond, bool IsTrue, const std::string &Label) {
    z3::expr c = asBool(getOrCreateZ3Expr(Cond));
    if (!IsTrue) c = !c;
    Solver.add(c, Label.c_str());     // tracked: eligible for the core
}

std::string Z3Encoder::getUnsatCore() {
    std::string out;
    z3::expr_vector core = Solver.unsat_core();
    for (unsigned i = 0; i < core.size(); ++i) out += core[i].to_string() + " ";
    return out.empty() ? "(empty)" : out;
}

z3::expr Z3Encoder::bvConst(const llvm::APInt &A) {
    unsigned W = A.getBitWidth();
    if (W <= 64) return Ctx.bv_val(A.getZExtValue(), W);
    llvm::SmallString<40> S;
    A.toString(S, /*Radix=*/10, /*Signed=*/false);
    return Ctx.bv_val(S.c_str(), W);
}

void Z3Encoder::addFact(const z3::expr &Fact, const std::string &Label) {
    if (Label.empty()) Solver.add(Fact);
    else               Solver.add(Fact, Label.c_str());
}

bool Z3Encoder::assertRange(Value *V, const ConstantRange &CR,
                            const std::string &Label) {
    // Full set: no information. Empty set: LVI's "this point is dead" --
    // importing it would manufacture a contradictory context, so refuse
    // (the vacuity checker would rightly scream).
    if (CR.isFullSet() || CR.isEmptySet()) return false;
    unsigned W = CR.getBitWidth();
    if (!V->getType()->isIntegerTy() ||
        V->getType()->getIntegerBitWidth() != W) return false;  // width sanity
    z3::expr X = asBV(getOrCreateZ3Expr(V), W);
    llvm::APInt UMin = CR.getUnsignedMin(), UMax = CR.getUnsignedMax();
    llvm::APInt SMin = CR.getSignedMin(),   SMax = CR.getSignedMax();
    z3::expr Fact = Ctx.bool_val(true);
    bool Any = false;
    if (!UMin.isZero())           { Fact = Fact && z3::uge(X, bvConst(UMin)); Any = true; }
    if (!UMax.isAllOnes())        { Fact = Fact && z3::ule(X, bvConst(UMax)); Any = true; }
    if (!SMin.isMinSignedValue()) { Fact = Fact && (X >= bvConst(SMin));      Any = true; }
    if (!SMax.isMaxSignedValue()) { Fact = Fact && (X <= bvConst(SMax));      Any = true; }
    if (!Any) return false;                     // all four bounds trivial
    addFact(Fact, Label);
    return true;
}

bool Z3Encoder::assertKnownBits(Value *V, const llvm::KnownBits &KB,
                                const std::string &Label) {
    if (KB.isUnknown()) return false;
    if ((KB.Zero & KB.One) != 0) return false;  // conflict: refuse to import
    unsigned W = KB.getBitWidth();
    if (!V->getType()->isIntegerTy() ||
        V->getType()->getIntegerBitWidth() != W) return false;
    z3::expr X = asBV(getOrCreateZ3Expr(V), W);
    z3::expr Fact = Ctx.bool_val(true);
    if (!KB.Zero.isZero())
        Fact = Fact && ((X & bvConst(KB.Zero)) == Ctx.bv_val(0, W));
    if (!KB.One.isZero())
        Fact = Fact && ((X & bvConst(KB.One)) == bvConst(KB.One));
    addFact(Fact, Label);
    return true;
}

// =====================================================================
// LDEQ -- load-equality (oracle-pass<ldeq>, default OFF).
//
// Soundness: if L0 and L load the same pointer SSA value, have the same
// type, sit in the same basic block, are both simple (non-volatile,
// non-atomic), and NO instruction between them may write memory, then
// every execution observes identical memory at both loads => identical
// loaded values. This is precisely the theorem GVN uses to delete the
// second load; we only merge their SMT variables (no IR change), so a
// wrong merge cannot miscompile -- but it could manufacture a false
// UNSAT, hence the conservatism:
//   * exact same pointer Value* (no aliasing reasoning at all),
//   * mayWriteToMemory() on ANY intervening instruction kills the match
//     (calls, stores, atomics -- LLVM's own conservative predicate),
//   * fences kill the match explicitly (ordering, not writing),
//   * same-BB only: encode order (RPO + BB instruction order) guarantees
//     the earlier load is already encoded; cross-block equivalence needs
//     a path-clobber argument (MemorySSA) and is deliberately deferred.
// =====================================================================
llvm::LoadInst *Z3Encoder::findEquivalentLoad(LoadInst *L) {
    if (!LoadEqEnabled) return nullptr;
    if (!L->isSimple()) return nullptr;

    Value *Ptr = L->getPointerOperand();
    LoadInst *Match = nullptr;

    auto It = LoadsByPtr.find(Ptr);
    if (It != LoadsByPtr.end()) {
        for (LoadInst *L0 : It->second) {
            if (L0->getParent() != L->getParent()) continue;  // same-BB fence
            if (L0->getType() != L->getType()) continue;      // same width/type
            if (!L0->isSimple()) continue;
            // Walk the straight-line gap L0..L; any may-write clobbers.
            bool Clobbered = false;
            for (auto I = std::next(L0->getIterator());
                 &*I != L && I != L->getParent()->end(); ++I) {
                if (I->mayWriteToMemory() || isa<FenceInst>(&*I)) {
                    Clobbered = true;
                    break;
                }
            }
            if (!Clobbered) { Match = L0; break; }
        }
    }
    LoadsByPtr[Ptr].push_back(L);   // L is now a candidate for later loads
    return Match;
}

z3::expr Z3Encoder::asBool(z3::expr e) {
    if (e.is_bool()) return e;
    return e != Ctx.bv_val(0, e.get_sort().bv_size());
}

z3::expr Z3Encoder::asBV(z3::expr e, unsigned w) {
    if (e.is_bool())
        return z3::ite(e, Ctx.bv_val(1, w), Ctx.bv_val(0, w));
    unsigned s = e.get_sort().bv_size();
    if (s == w) return e;                       // also guards zext(e, 0)
    return s < w ? z3::zext(e, w - s) : e.extract(w - 1, 0);
}


// --- Handle unnamed LLVM IR values ---
std::string getSafeName(Value *Val) {
    if (Val->hasName()) return Val->getName().str();
    return "unnamed_" + std::to_string(reinterpret_cast<uintptr_t>(Val));
}

z3::expr Z3Encoder::getOrCreateZ3Expr(Value *Val) {
    auto it = ValueMap.find(Val);
    if (it != ValueMap.end()) {
        return it->second; 
    }

    if (auto *CI = dyn_cast<ConstantInt>(Val)) {
        if (CI->getType()->isIntegerTy(1)) {
            z3::expr z3_bool = Ctx.bool_val(CI->getZExtValue() != 0);
            ValueMap.insert({Val, z3_bool});
            return z3_bool;
        }
        
        // DYNAMIC WIDTH: Read exact bit-width from LLVM type
        unsigned BitWidth = CI->getType()->getIntegerBitWidth();
        z3::expr z3_const(Ctx);
        if (BitWidth <= 64) {
            // uint64_t overload: no (unsigned) truncation of the top 32 bits
            z3_const = Ctx.bv_val(CI->getZExtValue(), BitWidth);
        } else {
            // i128 etc.: getZExtValue() would assert; go via decimal string
            llvm::SmallString<40> S;
            CI->getValue().toString(S, /*Radix=*/10, /*Signed=*/false);
            z3_const = Ctx.bv_val(S.c_str(), BitWidth);
        }
        ValueMap.insert({Val, z3_const});
        return z3_const;
    }

    if (DebugOracle) {
        errs() << "    [WIRETAP] Creating FREE SMT VARIABLE for: " << getSafeName(Val) << "\n";
    }

    if (Val->getType()->isIntegerTy(1)) {
        z3::expr new_bool = Ctx.bool_const(getSafeName(Val).c_str());
        ValueMap.insert({Val, new_bool});
        FreeVars.push_back(Val);
        return new_bool;
    }

    if (Val->getType()->isIntegerTy()) {
        unsigned BitWidth = Val->getType()->getIntegerBitWidth();
        z3::expr new_var = Ctx.bv_const(getSafeName(Val).c_str(), BitWidth);
        ValueMap.insert({Val, new_var});
        FreeVars.push_back(Val);
        return new_var;
    }

    // --- THE Z3 TYPE FIX ---
    // Pointers and other alien types must be mapped to BitVectors, not Ints.
    // Z3 will throw exceptions if we mix Ints with BV operations like `ult`.
    // We over-approximate all alien types as 64-bit BitVectors.
    z3::expr unk = Ctx.bv_const(getSafeName(Val).c_str(), 64);
    ValueMap.insert({Val, unk});
    FreeVars.push_back(Val);   // recorded for completeness; FactEncoder skips non-int
    return unk;
}


// =====================================================================
// MEMOIZED CFG ENCODING
//
// Instead of enumerating every simple path (DNF, O(2^N) work + O(2^N)
// formula terms), we compute ONE guard formula per basic block:
//
//     Reach(Root) = true
//     Reach(B)    = OR over preds P in region: Reach(P) AND EdgeCond(P->B)
//
// Each Reach(B) is computed exactly once and cached. Z3 terms form a
// hash-consed DAG, so Reach(P) is *shared by reference* between all of
// P's successors: shared path prefixes are stored once. The exponential
// set of paths is now represented implicitly by an O(E)-node circuit and
// explored by the SAT engine (with clause learning), not by our C++ DFS.
// =====================================================================

z3::expr Z3Encoder::getEdgeCond(BasicBlock *Pred, BasicBlock *Succ) {
    auto *Term = Pred->getTerminator();

    if (auto *Br = dyn_cast<BranchInst>(Term)) {
        if (!Br->isConditional()) return Ctx.bool_val(true);
        z3::expr c = asBool(getOrCreateZ3Expr(Br->getCondition()));
        z3::expr e = Ctx.bool_val(false);
        // Both arms may target the same block (br %c, %bb, %bb), so OR
        // every matching successor instead of assuming exactly one.
        if (Br->getSuccessor(0) == Succ) e = e || c;
        if (Br->getSuccessor(1) == Succ) e = e || !c;
        return e;
    }

    if (auto *Sw = dyn_cast<SwitchInst>(Term)) {
        unsigned cw = Sw->getCondition()->getType()->getIntegerBitWidth();
        z3::expr c = asBV(getOrCreateZ3Expr(Sw->getCondition()), cw);
        z3::expr e = Ctx.bool_val(false);

        // Default edge: cond != case_1 && cond != case_2 && ...
        if (Sw->getDefaultDest() == Succ) {
            z3::expr def = Ctx.bool_val(true);
            for (auto Case : Sw->cases()) {
                def = def && (c != asBV(getOrCreateZ3Expr(Case.getCaseValue()), cw));
            }
            e = e || def;
        }
        // Case edges: several case values may share one successor block.
        for (auto Case : Sw->cases()) {
            if (Case.getCaseSuccessor() == Succ) {
                e = e || (c == asBV(getOrCreateZ3Expr(Case.getCaseValue()), cw));
            }
        }
        return e;
    }

    // Alien terminators (invoke, indirectbr, callbr, ...): over-approximate
    // the edge with a fresh unconstrained boolean, consistent with the
    // pass's boundary philosophy.
    std::string name = "edge_" + std::to_string(reinterpret_cast<uintptr_t>(Pred)) +
                       "_" + std::to_string(reinterpret_cast<uintptr_t>(Succ));
    return Ctx.bool_const(name.c_str());
}

z3::expr Z3Encoder::getBlockReachCond(BasicBlock *BB, BasicBlock *Root,
                                      BasicBlock *PhiBB, DominatorTree *DT) {
    if (BB == Root) return Ctx.bool_val(true);

    auto Key = std::make_tuple(Root, BB, PhiBB);
    auto it = ReachCache.find(Key);
    if (it != ReachCache.end()) return it->second; // <-- the memoization

    InProgress.insert(BB);

    z3::expr Reach = Ctx.bool_val(false);
    for (BasicBlock *Pred : predecessors(BB)) {
        // --- THE BOUNDARY WALL ---
        // Never walk back through the Phi's own block.
        if (Pred == PhiBB) continue;

        // Region filter: every block on any Root->PhiBB path is dominated
        // by Root (otherwise a path to PhiBB would bypass its IDom), so
        // predecessors outside Root's dominance region cannot contribute.
        if (!DT->dominates(Root, Pred)) continue;

        // Back edge (Pred is on the current recursion stack): skip it.
        // This reproduces the old simple-path / acyclic semantics.
        if (InProgress.count(Pred)) continue;

        Reach = Reach || (getBlockReachCond(Pred, Root, PhiBB, DT)
                          && getEdgeCond(Pred, BB));
    }

    InProgress.erase(BB);
    ReachCache.insert({Key, Reach});
    return Reach;
}


bool Z3Encoder::encodeInstruction(Instruction *Inst, DominatorTree *DT, LoopInfo *LI) {
    if (DebugOracle) {
        errs() << "    [DEBUG] Visiting Instruction: " << Inst->getOpcodeName() << " (" << getSafeName(Inst) << ")\n";
    }

    // If we already encoded it during our slice, skip
    if (ValueMap.find(Inst) != ValueMap.end()) return true;

    if (auto *BinOp = dyn_cast<BinaryOperator>(Inst)) {
        // Vector / FP binops: over-approximate instead of crashing on
        // getIntegerBitWidth() (O3 + inlining can produce vectorized IR).
        if (!BinOp->getType()->isIntegerTy()) {
            getOrCreateZ3Expr(Inst);
            return true;
        }
        unsigned W = BinOp->getType()->getIntegerBitWidth();
        z3::expr op1 = getOrCreateZ3Expr(BinOp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(BinOp->getOperand(1));
        z3::expr res(Ctx);

        switch (BinOp->getOpcode()) {
            case Instruction::Add:  res = asBV(op1, W) + asBV(op2, W); break;
            case Instruction::Sub:  res = asBV(op1, W) - asBV(op2, W); break;
            case Instruction::Mul:  res = asBV(op1, W) * asBV(op2, W); break;
            case Instruction::SDiv: res = asBV(op1, W) / asBV(op2, W); break;
            case Instruction::UDiv: res = z3::udiv(asBV(op1, W), asBV(op2, W)); break;
            case Instruction::SRem: res = z3::srem(asBV(op1, W), asBV(op2, W)); break;
            case Instruction::URem: res = z3::urem(asBV(op1, W), asBV(op2, W)); break;
            case Instruction::And:
                res = (W == 1) ? (asBool(op1) && asBool(op2))
                               : (asBV(op1, W) & asBV(op2, W));
                break;
            case Instruction::Or:
                res = (W == 1) ? (asBool(op1) || asBool(op2))
                               : (asBV(op1, W) | asBV(op2, W));
                break;
            case Instruction::Xor:
                res = (W == 1) ? (asBool(op1) != asBool(op2))
                               : (asBV(op1, W) ^ asBV(op2, W));
                break;
            case Instruction::Shl:  res = z3::shl(asBV(op1, W), asBV(op2, W));  break;
            case Instruction::LShr: res = z3::lshr(asBV(op1, W), asBV(op2, W)); break;
            case Instruction::AShr: res = z3::ashr(asBV(op1, W), asBV(op2, W)); break;
            default: 
                // OVER-APPROXIMATE unsupported binary ops
                getOrCreateZ3Expr(Inst); 
                return true; 
        }
        // --- nsw/nuw FLAGS AS FREE FACTS ---
        // LLVM guarantees a flagged op never wraps in any defined execution
        // (wrapping would yield poison; every op we encode feeds a
        // branched-on condition, and branching on poison is UB, so defined
        // executions reaching the trap have no wrap here).
        if (auto *OBO = dyn_cast<OverflowingBinaryOperator>(BinOp)) {
            unsigned Opc = BinOp->getOpcode();
            if (Opc == Instruction::Add || Opc == Instruction::Sub ||
                Opc == Instruction::Mul) {
                z3::expr a = asBV(op1, W), b = asBV(op2, W);
                if (OBO->hasNoSignedWrap()) {
                    if (Opc == Instruction::Add)
                        Solver.add(z3::bvadd_no_overflow(a, b, true) &&
                                   z3::bvadd_no_underflow(a, b));
                    else if (Opc == Instruction::Sub)
                        Solver.add(z3::bvsub_no_overflow(a, b) &&
                                   z3::bvsub_no_underflow(a, b, true));
                    else
                        Solver.add(z3::bvmul_no_overflow(a, b, true) &&
                                   z3::bvmul_no_underflow(a, b));
                }
                if (OBO->hasNoUnsignedWrap()) {
                    if (Opc == Instruction::Add)
                        Solver.add(z3::bvadd_no_overflow(a, b, false));
                    else if (Opc == Instruction::Sub)
                        Solver.add(z3::bvsub_no_underflow(a, b, false));
                    else
                        Solver.add(z3::bvmul_no_overflow(a, b, false));
                }
            }
        }
        ValueMap.insert({Inst, res});
        return true;
    } 
    else if (auto *Cmp = dyn_cast<ICmpInst>(Inst)) {
        z3::expr op1 = getOrCreateZ3Expr(Cmp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(Cmp->getOperand(1));

        // i1 operands may be Bool or 1-bit BV depending on their producer;
        // unify to 1-bit BV so every predicate below is sort-correct.
        if (Cmp->getOperand(0)->getType()->isIntegerTy(1)) {
            op1 = asBV(op1, 1);
            op2 = asBV(op2, 1);
        }

        z3::expr res(Ctx);

        switch (Cmp->getPredicate()) {
            case CmpInst::ICMP_EQ:  res = (op1 == op2); break;
            case CmpInst::ICMP_NE:  res = (op1 != op2); break;
            case CmpInst::ICMP_SGT: res = (op1 > op2); break;
            case CmpInst::ICMP_SGE: res = (op1 >= op2); break;
            case CmpInst::ICMP_SLT: res = (op1 < op2); break;
            case CmpInst::ICMP_SLE: res = (op1 <= op2); break;
            case CmpInst::ICMP_UGT: res = z3::ugt(op1, op2); break;
            case CmpInst::ICMP_UGE: res = z3::uge(op1, op2); break;
            case CmpInst::ICMP_ULT: res = z3::ult(op1, op2); break;
            case CmpInst::ICMP_ULE: res = z3::ule(op1, op2); break;
            default: 
                // OVER-APPROXIMATE unsupported comparisons
                getOrCreateZ3Expr(Inst); 
                return true;
        }
        ValueMap.insert({Inst, res});
        return true;
    }
    else if (auto *Cast = dyn_cast<CastInst>(Inst)) {
        if (isa<PtrToIntInst>(Inst)) {
            getOrCreateZ3Expr(Inst);
            return true;
        }

        // 2. Type Safety Guard -> Over-approximate instead of aborting
        if (!Cast->getSrcTy()->isIntegerTy() || !Cast->getDestTy()->isIntegerTy()) {
            getOrCreateZ3Expr(Inst);
            return true;
        }

        z3::expr src = getOrCreateZ3Expr(Cast->getOperand(0));
        unsigned src_width = Cast->getSrcTy()->getIntegerBitWidth();
        unsigned dst_width = Cast->getDestTy()->getIntegerBitWidth();
        z3::expr res(Ctx);

        if (isa<TruncInst>(Inst)) {
            if (dst_width == 1) {
                // trunc iN -> i1: result must be a Bool, because the rest of
                // the system (branches, asserts, edge conds) treats i1 as Bool.
                res = (asBV(src, src_width).extract(0, 0) == Ctx.bv_val(1, 1));
            } else {
                res = asBV(src, src_width).extract(dst_width - 1, 0);
            }
        } else if (isa<ZExtInst>(Inst)) {
            // asBV totalizes this: a Bool i1 source becomes 0/1 then widens.
            // This is the `zext i1 %cmp to i32` fix (x += (a < b), bool->int).
            res = asBV(src, dst_width);
        } else if (isa<SExtInst>(Inst)) {
            if (Cast->getSrcTy()->isIntegerTy(1)) {
                // sext i1 -> 0 or all-ones (bv_val(-1, w) sign-extends to all-ones)
                res = z3::ite(asBool(src), Ctx.bv_val(-1, dst_width),
                                           Ctx.bv_val(0, dst_width));
            } else {
                res = z3::sext(asBV(src, src_width), dst_width - src_width);
            }
        } else {
            // OVER-APPROXIMATE
            getOrCreateZ3Expr(Inst);
            return true;
        }
        
        ValueMap.insert({Inst, res});
        return true;
    }
    else if (isa<FreezeInst>(Inst)) {
        // freeze(x) == x, asserted by construction: the frozen value IS
        // its operand's expression. LangRef: freeze is the IDENTITY on
        // any non-poison/undef operand; it differs only when x is
        // poison, where it picks some fixed ordinary value v -- and in
        // that case x is (directly or transitively) a free variable in
        // this encoding, so the solver may choose x = v: every defined
        // execution still has a model, the over-approximation is
        // intact, UNSAT still means unreachable. Same trust class as
        // the nsw/umin_seq poison caveats documented elsewhere.
        //
        // Load-bearing discovery (jl_gemm_base, Aug 20 2026): Julia's
        // vectorizer multiversioning FREEZES its guard flags and -- in
        // 13 of 16 trap jobs -- the TRAP CONDITION itself. As an
        // unknown opcode, freeze fell through to a fresh free variable,
        // so those queries were "guards && (unconstrained Bool)":
        // trivially SAT in 0.2 ms no matter what facts were added.
        // Found via the DebugOracle countermodel dump (HANDOFF §8.7).
        Value *Op = Inst->getOperand(0);
        if (!Op->getType()->isIntegerTy()) {
            // Pointer/vector freeze: stay a free variable (never wrong).
            getOrCreateZ3Expr(Inst);
            return true;
        }
        ValueMap.insert({Inst, getOrCreateZ3Expr(Op)});
        return true;
    }
    else if (auto *ExtVal = dyn_cast<ExtractValueInst>(Inst)) {
        Value *Agg = ExtVal->getAggregateOperand();
        auto *Call = dyn_cast<CallInst>(Agg);
        
        if (!Call || !Call->getCalledFunction()) {
            getOrCreateZ3Expr(Inst); return true;
        }

        StringRef Name = Call->getCalledFunction()->getName();
        bool IsAdd = Name.starts_with("llvm.sadd.with.overflow") || Name.starts_with("llvm.uadd.with.overflow");
        bool IsSub = Name.starts_with("llvm.ssub.with.overflow") || Name.starts_with("llvm.usub.with.overflow");
        bool IsMul = Name.starts_with("llvm.smul.with.overflow") || Name.starts_with("llvm.umul.with.overflow");
        if (IsAdd || IsSub || IsMul) {
            bool Signed = Name.starts_with("llvm.s");
            unsigned W = Call->getArgOperand(0)->getType()->getIntegerBitWidth();
            z3::expr a = asBV(getOrCreateZ3Expr(Call->getArgOperand(0)), W);
            z3::expr b = asBV(getOrCreateZ3Expr(Call->getArgOperand(1)), W);
            unsigned Index = ExtVal->getIndices()[0];
            z3::expr res(Ctx);
            if (Index == 0) {
                // Wrapped result: BV arithmetic is already mod 2^W.
                res = IsAdd ? (a + b) : IsSub ? (a - b) : (a * b);
            } else if (Index == 1) {
                // Overflow bit via Z3's exact built-in predicates.
                if (IsAdd) {
                    z3::expr ok = z3::bvadd_no_overflow(a, b, Signed);
                    if (Signed) ok = ok && z3::bvadd_no_underflow(a, b);
                    res = !ok;
                } else if (IsSub) {
                    z3::expr ok = z3::bvsub_no_underflow(a, b, Signed);
                    if (Signed) ok = ok && z3::bvsub_no_overflow(a, b);
                    res = !ok;
                } else {
                    z3::expr ok = z3::bvmul_no_overflow(a, b, Signed);
                    if (Signed) ok = ok && z3::bvmul_no_underflow(a, b);
                    res = !ok;
                }
            } else {
                getOrCreateZ3Expr(Inst); return true;
            }
            ValueMap.insert({Inst, res});
            return true;
        }
        
        // OVER-APPROXIMATE alien intrinsics
        getOrCreateZ3Expr(Inst);
        return true;
    }
    else if (auto *Call = dyn_cast<CallInst>(Inst)) {
        if (Function *F = Call->getCalledFunction()) {
            StringRef Name = F->getName();
            // Overflow intrinsics are decomposed at their extractvalue uses.
            if (Name.contains(".with.overflow")) {
                return true;
            }
            // --- CHEAP VALUE-RETURNING INTRINSICS ---
            if (Call->getType()->isIntegerTy() && !Call->getType()->isIntegerTy(1)) {
                unsigned W = Call->getType()->getIntegerBitWidth();
                auto Arg = [&](unsigned i) {
                    return asBV(getOrCreateZ3Expr(Call->getArgOperand(i)), W);
                };
                z3::expr res(Ctx);
                bool Encoded = true;
                if (Name.starts_with("llvm.fshl.")) {
                    // Funnel shift left (rotate when a==b):
                    // top W bits of (a:b) << (c % W). Shift-by->=W is 0 in
                    // SMT-LIB, so the sh==0 edge case falls out correctly.
                    z3::expr a = Arg(0), b = Arg(1);
                    z3::expr sh = z3::urem(Arg(2), Ctx.bv_val(W, W));
                    res = z3::shl(a, sh) | z3::lshr(b, Ctx.bv_val(W, W) - sh);
                } else if (Name.starts_with("llvm.fshr.")) {
                    // Funnel shift right: low W bits of (a:b) >> (c % W).
                    z3::expr a = Arg(0), b = Arg(1);
                    z3::expr sh = z3::urem(Arg(2), Ctx.bv_val(W, W));
                    res = z3::lshr(b, sh) | z3::shl(a, Ctx.bv_val(W, W) - sh);
                } else if (Name.starts_with("llvm.umax.")) {
                    z3::expr a = Arg(0), b = Arg(1);
                    res = z3::ite(z3::ugt(a, b), a, b);
                } else if (Name.starts_with("llvm.umin.")) {
                    z3::expr a = Arg(0), b = Arg(1);
                    res = z3::ite(z3::ult(a, b), a, b);
                } else if (Name.starts_with("llvm.smax.")) {
                    z3::expr a = Arg(0), b = Arg(1);
                    res = z3::ite(a > b, a, b);
                } else if (Name.starts_with("llvm.smin.")) {
                    z3::expr a = Arg(0), b = Arg(1);
                    res = z3::ite(a < b, a, b);
                } else if (Name.starts_with("llvm.abs.")) {
                    z3::expr a = Arg(0);
                    res = z3::ite(a < 0, -a, a);
                } else if (Name.starts_with("llvm.bswap.") && W % 16 == 0) {
                    z3::expr a = Arg(0);
                    res = a.extract(7, 0);
                    for (unsigned i = 1; i < W / 8; ++i)
                        res = z3::concat(res, a.extract(8 * i + 7, 8 * i));
                } else {
                    Encoded = false;
                }
                if (Encoded) {
                    ValueMap.insert({Inst, res});
                    return true;
                }
            }
        }
        // OVER-APPROXIMATE alien calls
        getOrCreateZ3Expr(Inst);
        return true;
    }
    else if (auto *Sel = dyn_cast<SelectInst>(Inst)) {
        if (!Sel->getType()->isIntegerTy()) { getOrCreateZ3Expr(Inst); return true; }
        z3::expr c = asBool(getOrCreateZ3Expr(Sel->getCondition()));
        z3::expr t = getOrCreateZ3Expr(Sel->getTrueValue());
        z3::expr f = getOrCreateZ3Expr(Sel->getFalseValue());
        if (Sel->getType()->isIntegerTy(1)) { t = asBool(t); f = asBool(f); }
        ValueMap.insert({Inst, z3::ite(c, t, f)});
        return true;
    }
    else if (auto *Phi = dyn_cast<PHINode>(Inst)) {
        if (!DT) { getOrCreateZ3Expr(Inst); return true; }

        BasicBlock *PhiBB = Phi->getParent();

        if (LI) {
            Loop *L = LI->getLoopFor(PhiBB);
            if (L && L->getHeader() == PhiBB) {
                getOrCreateZ3Expr(Phi);
                return true;
            }
        }

        DomTreeNode *Node = DT->getNode(PhiBB);
        if (!Node || !Node->getIDom()) { getOrCreateZ3Expr(Inst); return true; }
        BasicBlock *IDomBB = Node->getIDom()->getBlock();

        bool PhiIsI1 = Phi->getType()->isIntegerTy(1);
        // Base case: incoming value 0 is the "default" leaf of the ite chain.
        z3::expr res = getOrCreateZ3Expr(Phi->getIncomingValue(0));
        if (PhiIsI1) res = asBool(res);
        
        for (unsigned i = 1; i < Phi->getNumIncomingValues(); ++i) {
            BasicBlock *IncBB = Phi->getIncomingBlock(i);
            Value *IncVal = Phi->getIncomingValue(i);

            // O(V+E) memoized reachability instead of exponential path
            // enumeration. We also conjoin the final edge condition
            // IncBB -> PhiBB (the old code stopped upon reaching IncBB),
            // which makes the gate strictly more precise for free.
            z3::expr gate = getBlockReachCond(IncBB, IDomBB, PhiBB, DT)
                            && getEdgeCond(IncBB, PhiBB);

            z3::expr IncExpr = getOrCreateZ3Expr(IncVal);
            if (PhiIsI1) IncExpr = asBool(IncExpr);
            res = z3::ite(gate, IncExpr, res);
        }

        ValueMap.insert({Inst, res});
        return true;
    }
    
    else if (auto *Load = dyn_cast<LoadInst>(Inst)) {
        // LDEQ (opt-in): a provably-equal earlier load donates its SMT
        // variable -- ONE boundary instead of two, which is what lets
        // `i < n` (guard's load) contradict `i >= n'` (check's reload).
        if (LoadInst *Eq = findEquivalentLoad(Load)) {
            z3::expr Same = getOrCreateZ3Expr(Eq);  // already encoded (RPO)
            ValueMap.insert({Load, Same});
            ++NumLoadEquivs;
            if (DebugOracle) {
                errs() << "    [LDEQ] load " << getSafeName(Load)
                       << " unified with earlier load " << getSafeName(Eq)
                       << " (same ptr, no intervening writes)\n";
            }
            return true;
        }
        getOrCreateZ3Expr(Load);
        return true;
    }

    // FINAL CATCH-ALL: Treat ANY remaining instruction (like GEP) as an unconstrained variable
    if (DebugOracle) {
        errs() << "    [DEBUG] Over-approximating Alien Instruction: " << Inst->getOpcodeName() << "\n";
    }
    getOrCreateZ3Expr(Inst);
    return true;
}


void Z3Encoder::assertCondition(Value *Cond, bool IsTrue) {
    if (DebugOracle) {
        errs() << "\n    [DEBUG] assertCondition called for TargetCond: " << Cond->getName() << "\n";
    
        if (ValueMap.find(Cond) == ValueMap.end()) {
            errs() << "    [DEBUG ERROR] Cond was NOT in ValueMap! Falling back to unconstrained variable.\n";
        } else {
            errs() << "    [DEBUG SUCCESS] Cond FOUND in ValueMap. SMT Formula:\n" << ValueMap.at(Cond).to_string() << "\n";
        }
    }
    
    z3::expr z3_cond = asBool(getOrCreateZ3Expr(Cond));
    if (!IsTrue) {
        z3_cond = !z3_cond;
    }
    Solver.add(z3_cond);
}

std::pair<std::string, double> Z3Encoder::checkSatisfiability() {
    auto start_time = std::chrono::high_resolution_clock::now();
    z3::check_result result = Solver.check();
    auto end_time = std::chrono::high_resolution_clock::now();
    
    std::chrono::duration<double, std::milli> latency = end_time - start_time;
    double raw_latency = latency.count();

    std::string status;
    switch (result) {
        case z3::unsat:   status = "UNSAT (Dead Code / Impossible Path)"; break;
        case z3::sat: {
            status = "SAT (WARNING: Potential Integer Overflow Bug Detected!)"; 
            if (DebugOracle) {
                errs() << "\n    ================ Z3 SMT-LIB DUMP ================\n";
                errs() << Solver.to_smt2() << "\n";
                errs() << "    ================ Z3 MODEL DUMP ==================\n";
                std::ostringstream model_stream;
                model_stream << Solver.get_model();
                errs() << model_stream.str() << "\n";
                errs() << "    =================================================\n";
            }
            break;
        }
        case z3::unknown: status = "UNKNOWN (Solver gave up)"; break;
        default:          status = "ERROR"; break;
    }

    std::string output = status + " [Query Latency: " + std::to_string(raw_latency) + " ms]";
    return {output, raw_latency};
}