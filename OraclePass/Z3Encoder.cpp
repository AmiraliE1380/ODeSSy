#include "Z3Encoder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/CFG.h"
#include <chrono>
#include <string>
#include <sstream>

using namespace llvm;

Z3Encoder::Z3Encoder() : Solver(Ctx) {}

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
        uint64_t val = CI->getZExtValue();
        z3::expr z3_const = Ctx.bv_val((unsigned)val, BitWidth); 
        ValueMap.insert({Val, z3_const});
        return z3_const;
    }

    if (DebugOracle) {
        errs() << "    [WIRETAP] Creating FREE SMT VARIABLE for: " << getSafeName(Val) << "\n";
    }

    if (Val->getType()->isIntegerTy(1)) {
        z3::expr new_bool = Ctx.bool_const(getSafeName(Val).c_str());
        ValueMap.insert({Val, new_bool});
        return new_bool;
    }

    if (Val->getType()->isIntegerTy()) {
        unsigned BitWidth = Val->getType()->getIntegerBitWidth();
        z3::expr new_var = Ctx.bv_const(getSafeName(Val).c_str(), BitWidth);
        ValueMap.insert({Val, new_var});
        return new_var;
    }

    // --- THE Z3 TYPE FIX ---
    // Pointers and other alien types must be mapped to BitVectors, not Ints.
    // Z3 will throw exceptions if we mix Ints with BV operations like `ult`.
    // We over-approximate all alien types as 64-bit BitVectors.
    z3::expr unk = Ctx.bv_const(getSafeName(Val).c_str(), 64);
    ValueMap.insert({Val, unk});
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
        z3::expr c = getOrCreateZ3Expr(Br->getCondition());
        z3::expr e = Ctx.bool_val(false);
        // Both arms may target the same block (br %c, %bb, %bb), so OR
        // every matching successor instead of assuming exactly one.
        if (Br->getSuccessor(0) == Succ) e = e || c;
        if (Br->getSuccessor(1) == Succ) e = e || !c;
        return e;
    }

    if (auto *Sw = dyn_cast<SwitchInst>(Term)) {
        z3::expr c = getOrCreateZ3Expr(Sw->getCondition());
        z3::expr e = Ctx.bool_val(false);

        // Default edge: cond != case_1 && cond != case_2 && ...
        if (Sw->getDefaultDest() == Succ) {
            z3::expr def = Ctx.bool_val(true);
            for (auto Case : Sw->cases()) {
                def = def && (c != getOrCreateZ3Expr(Case.getCaseValue()));
            }
            e = e || def;
        }

        // Case edges: several case values may share one successor block.
        for (auto Case : Sw->cases()) {
            if (Case.getCaseSuccessor() == Succ) {
                e = e || (c == getOrCreateZ3Expr(Case.getCaseValue()));
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

    auto Key = std::make_pair(Root, BB);
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
        z3::expr op1 = getOrCreateZ3Expr(BinOp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(BinOp->getOperand(1));
        z3::expr res(Ctx);

        switch (BinOp->getOpcode()) {
            case Instruction::Add:  res = op1 + op2; break;
            case Instruction::Sub:  res = op1 - op2; break;
            case Instruction::Mul:  res = op1 * op2; break;
            case Instruction::SDiv: res = op1 / op2; break;
            case Instruction::UDiv: res = z3::udiv(op1, op2); break;
            case Instruction::SRem: res = z3::srem(op1, op2); break;
            case Instruction::URem: res = z3::urem(op1, op2); break;
            case Instruction::And:  res = op1.is_bool() ? (op1 && op2) : (op1 & op2); break;
            case Instruction::Or:   res = op1.is_bool() ? (op1 || op2) : (op1 | op2); break;
            case Instruction::Xor:  res = op1.is_bool() ? (op1 != op2) : (op1 ^ op2); break;
            default: 
                // OVER-APPROXIMATE unsupported binary ops
                getOrCreateZ3Expr(Inst); 
                return true; 
        }
        ValueMap.insert({Inst, res});
        return true;
    } 
    else if (auto *Cmp = dyn_cast<ICmpInst>(Inst)) {
        z3::expr op1 = getOrCreateZ3Expr(Cmp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(Cmp->getOperand(1));
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
            res = src.extract(dst_width - 1, 0); 
        } else if (isa<ZExtInst>(Inst)) {
            res = z3::zext(src, dst_width - src_width); 
        } else if (isa<SExtInst>(Inst)) {
            res = z3::sext(src, dst_width - src_width);
        } else {
            // OVER-APPROXIMATE
            getOrCreateZ3Expr(Inst);
            return true;
        }
        
        ValueMap.insert({Inst, res});
        return true;
    }
    else if (auto *ExtVal = dyn_cast<ExtractValueInst>(Inst)) {
        Value *Agg = ExtVal->getAggregateOperand();
        auto *Call = dyn_cast<CallInst>(Agg);
        
        if (!Call || !Call->getCalledFunction()) {
            getOrCreateZ3Expr(Inst); return true;
        }

        StringRef IntrinsicName = Call->getCalledFunction()->getName();
        
        if (IntrinsicName.starts_with("llvm.sadd.with.overflow")) {
            z3::expr op1 = getOrCreateZ3Expr(Call->getArgOperand(0));
            z3::expr op2 = getOrCreateZ3Expr(Call->getArgOperand(1));
            unsigned Index = ExtVal->getIndices()[0];
            z3::expr res(Ctx);

            if (Index == 0) {
                res = op1 + op2;
            } else if (Index == 1) {
                unsigned bw = op1.get_sort().bv_size();
                z3::expr ext_op1 = z3::sext(op1, 1);
                z3::expr ext_op2 = z3::sext(op2, 1);
                z3::expr ext_add = ext_op1 + ext_op2;
                
                z3::expr max_val = Ctx.bv_val(static_cast<uint64_t>((1ull << (bw - 1)) - 1), bw + 1);
                z3::expr min_val = z3::sext(Ctx.bv_val(static_cast<uint64_t>(1ull << (bw - 1)), bw), 1);
                res = (ext_add > max_val) || (ext_add < min_val);
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
            if (Name.starts_with("llvm.sadd.with.overflow") || Name.starts_with("llvm.ssub.with.overflow")) {
                return true; 
            }
        }
        // OVER-APPROXIMATE alien calls
        getOrCreateZ3Expr(Inst);
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

        // Base case: incoming value 0 is the "default" leaf of the ite chain.
        z3::expr res = getOrCreateZ3Expr(Phi->getIncomingValue(0));

        for (unsigned i = 1; i < Phi->getNumIncomingValues(); ++i) {
            BasicBlock *IncBB = Phi->getIncomingBlock(i);
            Value *IncVal = Phi->getIncomingValue(i);

            // O(V+E) memoized reachability instead of exponential path
            // enumeration. We also conjoin the final edge condition
            // IncBB -> PhiBB (the old code stopped upon reaching IncBB),
            // which makes the gate strictly more precise for free.
            z3::expr gate = getBlockReachCond(IncBB, IDomBB, PhiBB, DT)
                            && getEdgeCond(IncBB, PhiBB);

            res = z3::ite(gate, getOrCreateZ3Expr(IncVal), res);
        }

        ValueMap.insert({Inst, res});
        return true;
    }
    
    else if (auto *Load = dyn_cast<LoadInst>(Inst)) {
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
    
    z3::expr z3_cond = getOrCreateZ3Expr(Cond);
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