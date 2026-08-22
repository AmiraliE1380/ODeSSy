#include "FactEncoder.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Argument.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include <optional>
#include "llvm/IR/ConstantRange.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Metadata.h"
#include "llvm/Support/KnownBits.h"

using namespace llvm;

FactEncoder::FactEncoder(Z3Encoder &Enc, LazyValueInfo *LVI, ScalarEvolution *SE,
                         LoopInfo *LI, DominatorTree &DT, const DataLayout &DL,
                         bool Audit, raw_ostream &Log)
    : Encoder(Enc), LVI(LVI), SE(SE), LI(LI), DT(DT), DL(DL), Audit(Audit),
      Log(Log) {}

std::string FactEncoder::mkLabel(const char *Src) const {
    return std::string(Src) + ":" + std::to_string(NumFacts);
}

// Short printable form of a boundary value for the log ("i32 %x").
static std::string valueStr(Value *V) {
    std::string S; raw_string_ostream OS(S);
    V->printAsOperand(OS, /*PrintType=*/true);
    return S;
}

static std::string rangeStr(const ConstantRange &CR) {
    std::string S; raw_string_ostream OS(S);
    CR.print(OS);
    return S;
}

unsigned FactEncoder::encodeBoundaryFacts(BasicBlock *PredBB) {
    // NOTE: iterate by index -- assertRange/assertKnownBits only look up
    // existing exprs so FreeVars cannot grow mid-walk, but stay defensive.
    const auto &Boundaries = Encoder.getFreeVariables();
    for (size_t i = 0; i < Boundaries.size(); ++i) {
        Value *V = Boundaries[i];
        // Pointers / vectors / aliens are modeled as width-64 stand-ins;
        // a "range" over the stand-in is not a fact about the real value.
        if (!V->getType()->isIntegerTy()) continue;
        tryRangeMetadata(V);
        tryRangeAttr(V);
        tryKnownBits(V);
        tryLVI(V, PredBB);
        trySCEV(V);
        trySCEVSym(V);
    }
    processScevLeaves(PredBB);
    return NumFacts;
}

// =====================================================================
// Go 2 -- LEAF FACTS (Aug 22 2026). trySCEVSym's translated bounds
// reference SSA leaves (SCEVUnknown) that are OUTSIDE the slice; each
// became a fresh free variable, and a bound over free variables is
// mod-weak (the solver assigns the leaf 2^63 and walks around it --
// verified countermodels on jl_gemm_base's remainder loops). This pass
// drains the queue of every such leaf and asserts what is known about
// IT, enqueueing any leaves those facts introduce (work-list, seen-set,
// hard budget). Per leaf:
//   * the value battery (RM/RA/KB/LVI/SCEV ranges + SCEVSYM if it is a
//     header phi) -- all existing, individually-audited fact sources;
//   * ONE structural fact, first match wins, label SCEVEQ:
//     - freeze:      leaf == operand      (identity on non-poison; on
//                    poison the operand is free and can match freeze's
//                    choice -- the Z3Encoder freeze argument verbatim);
//     - non-header phi: OR_i (leaf == incoming_i) -- a phi's value IS
//                    one of its incomings on every execution,
//                    unconditionally; edge conditions would only
//                    STRENGTHEN it, so the pure disjunction is sound;
//     - SCEV equality: leaf == scevToZ3(SCEV(leaf)) when SCEV folds the
//                    leaf to a non-Unknown expression -- SCEV semantics
//                    IS the value's ring semantics, so the equality is
//                    exact (poison caveat: nsw class, as everywhere).
// Facts NEVER move a boundary: the leaf stays free-plus-constrained.
// =====================================================================
void FactEncoder::processScevLeaves(BasicBlock *PredBB) {
    // Budget: leaves processed, not facts -- keeps worst-case audit runs
    // (CryptoSwift-scale) bounded. 32 is ~4x what gemm needs.
    unsigned Budget = 32;
    for (size_t Head = 0; Head < LeafQueue.size() && Budget; ++Head) {
        Value *V = LeafQueue[Head];
        auto *I = dyn_cast<Instruction>(V);
        if (!I || !I->getType()->isIntegerTy()) continue;
        --Budget;
        // Value battery (each source has its own gates and labels).
        tryRangeMetadata(V);
        tryRangeAttr(V);
        tryKnownBits(V);
        tryLVI(V, PredBB);
        trySCEV(V);
        trySCEVSym(V);
        unsigned W = I->getType()->getIntegerBitWidth();
        // Structural fact.
        if (auto *FI = dyn_cast<FreezeInst>(I)) {
            Value *Op = FI->getOperand(0);
            if (!Op->getType()->isIntegerTy()) continue;
            z3::expr Fact =
                Encoder.valueAsBV(V, W) == Encoder.valueAsBV(Op, W);
            std::string Lbl = mkLabel("SCEVEQ");
            Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());
            Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
                << " == freeze operand (leaf identity)\n";
            ++NumFacts;
            if (auto *OpI = dyn_cast<Instruction>(Op))
                if (LeafSeen.insert(OpI).second) LeafQueue.push_back(OpI);
            continue;
        }
        if (auto *Phi = dyn_cast<PHINode>(I)) {
            Loop *L = LI ? LI->getLoopFor(Phi->getParent()) : nullptr;
            if (L && L->getHeader() == Phi->getParent())
                continue;   // header phi: SCEVSYM above was its chance
            if (Phi->getNumIncomingValues() == 0) continue;
            z3::expr PhiE = Encoder.valueAsBV(V, W);
            z3::expr Fact = (PhiE == Encoder.valueAsBV(Phi->getIncomingValue(0), W));
            bool OK = Phi->getIncomingValue(0)->getType()->isIntegerTy();
            for (unsigned i = 1; OK && i < Phi->getNumIncomingValues(); ++i) {
                Value *Inc = Phi->getIncomingValue(i);
                if (!Inc->getType()->isIntegerTy()) { OK = false; break; }
                Fact = Fact || (PhiE == Encoder.valueAsBV(Inc, W));
            }
            if (!OK) continue;
            for (unsigned i = 0; i < Phi->getNumIncomingValues(); ++i)
                if (auto *IncI = dyn_cast<Instruction>(Phi->getIncomingValue(i)))
                    if (LeafSeen.insert(IncI).second)
                        LeafQueue.push_back(IncI);
            std::string Lbl = mkLabel("SCEVEQ");
            Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());
            Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
                << " in phi image (" << Phi->getNumIncomingValues()
                << " incoming)\n";
            ++NumFacts;
            continue;
        }
        if (SE && SE->isSCEVable(I->getType())) {
            const SCEV *S = SE->getSCEV(I);
            if (!isa<SCEVUnknown>(S) && !isa<SCEVCouldNotCompute>(S)) {
                bool OK = true;
                unsigned WE = 0;
                z3::expr E = scevToZ3(S, OK, WE);   // enqueues new leaves
                if (OK && WE == W) {
                    z3::expr Fact = Encoder.valueAsBV(V, W) == E;
                    std::string Lbl = mkLabel("SCEVEQ");
                    Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());
                    std::string SS; raw_string_ostream SOS(SS); S->print(SOS);
                    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
                        << " == SCEV(" << SS << ")\n";
                    ++NumFacts;
                }
            }
        }
    }
}

bool FactEncoder::tryRangeMetadata(Value *V) {
    auto *I = dyn_cast<Instruction>(V);
    if (!I) return false;
    if (!isa<LoadInst>(I) && !isa<CallInst>(I)) return false;
    MDNode *MD = I->getMetadata(LLVMContext::MD_range);
    if (!MD) return false;
    // Union of the metadata's [lo,hi) pairs. Violation => poison (LangRef),
    // same soundness argument as nsw.
    ConstantRange CR = getConstantRangeFromMetadata(*MD);
    std::string Lbl = mkLabel("RM");
    if (!Encoder.assertRange(V, CR, Audit ? Lbl : std::string()))
        return false;
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " in " << rangeStr(CR) << " (!range)\n";
    ++NumFacts;
    return true;
}

bool FactEncoder::tryRangeAttr(Value *V) {
    // The 'range' ATTRIBUTE -- distinct from !range metadata. Lives in the
    // attribute list: on call-sites / callee return values (LLVM infers
    // these for libfuncs and via FunctionAttrs) and on function parameters.
    // Violation => poison (LangRef), same soundness caveat as nsw/RM.
    std::optional<ConstantRange> CRO;
    if (auto *CB = dyn_cast<CallBase>(V)) {
        CRO = CB->getRange();               // call-site attr, else callee's
    } else if (auto *A = dyn_cast<Argument>(V)) {
        Attribute Attr = A->getParent()->getParamAttribute(
            A->getArgNo(), Attribute::Range);
        if (Attr.isValid()) CRO = Attr.getRange();
    }
    if (!CRO) return false;
    std::string Lbl = mkLabel("RA");
    if (!Encoder.assertRange(V, *CRO, Audit ? Lbl : std::string()))
        return false;
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " in " << rangeStr(*CRO) << " (range attr)\n";
    ++NumFacts;
    return true;
}

bool FactEncoder::tryKnownBits(Value *V) {
    KnownBits KB = computeKnownBits(V, DL);
    if (KB.isUnknown()) return false;
    std::string Lbl = mkLabel("KB");
    if (!Encoder.assertKnownBits(V, KB, Audit ? Lbl : std::string()))
        return false;
    std::string S; raw_string_ostream OS(S);
    OS << "zero=0x"; KB.Zero.print(OS, /*isSigned=*/false);
    OS << " one=0x"; KB.One.print(OS, /*isSigned=*/false);
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " known bits " << S << "\n";
    ++NumFacts;
    return true;
}

bool FactEncoder::tryLVI(Value *V, BasicBlock *PredBB) {
    if (!LVI) return false;
    // POINT fact: only valid if V's definition dominates the query point
    // (PredBB's terminator). Arguments dominate everything; any other
    // non-instruction (global, constexpr) has no LVI story -- skip.
    if (auto *I = dyn_cast<Instruction>(V)) {
        if (!DT.dominates(I, PredBB)) return false;
    } else if (!isa<Argument>(V)) {
        return false;
    }
    // UndefAllowed=false: the conservative range (holds even for undef).
    ConstantRange CR =
        LVI->getConstantRange(V, PredBB->getTerminator(), /*UndefAllowed=*/false);
    std::string Lbl = mkLabel("LVI");
    if (!Encoder.assertRange(V, CR, Audit ? Lbl : std::string()))
        return false;
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " in " << rangeStr(CR) << " (LVI @ " << PredBB->getName() << ")\n";
    ++NumFacts;
    return true;
}

bool FactEncoder::trySCEV(Value *V) {
    if (!SE) return false;
    // SCEV's payoff is the one boundary class nothing else can see:
    // loop-header phis (induction variables). Non-header phis are encoded
    // as ite chains, never free -- so any free phi IS a header phi.
    auto *Phi = dyn_cast<PHINode>(V);
    if (!Phi) return false;
    if (!SE->isSCEVable(Phi->getType())) return false;
    const SCEV *S = SE->getSCEV(Phi);
    if (isa<SCEVCouldNotCompute>(S)) return false;   // paranoia
    if (isa<SCEVUnknown>(S)) return false;           // no structure => full range
    // VALUE facts over the phi's whole evolution (every iteration), so no
    // dominance gate needed. Both interpretations asserted -- unsigned and
    // signed ranges come from different SCEV reasoning and either may be
    // the informative one. assertRange skips full sets on its own.
    bool Added = false;
    ConstantRange UR = SE->getUnsignedRange(S);
    std::string L1 = mkLabel("SCEV");
    if (Encoder.assertRange(V, UR, Audit ? L1 : std::string())) {
        Log << "    -> Fact[" << L1 << "] " << valueStr(V)
            << " in " << rangeStr(UR) << " (SCEV unsigned)\n";
        ++NumFacts; Added = true;
    }
    ConstantRange SR = SE->getSignedRange(S);
    std::string L2 = mkLabel("SCEV");
    if (Encoder.assertRange(V, SR, Audit ? L2 : std::string())) {
        Log << "    -> Fact[" << L2 << "] " << valueStr(V)
            << " in " << rangeStr(SR) << " (SCEV signed)\n";
        ++NumFacts; Added = true;
    }
    return Added;
}
// =====================================================================
// SCEVSYM -- symbolic trip-count facts (the rotated-loop unlock).
//
// PROBLEM. After loop rotation the latch's `i < n` test dominates
// nothing inside the body, so Phase-0 guard collection cannot assert
// it, the header phi stays a free variable with no upper bound, and
// every in-loop bounds check is trivially SAT.
//
// FACT. ScalarEvolution already proved the bound. For an affine
// recurrence  phi = {C,+,1}<L>  with backedge-taken count BTC, SCEV's
// semantics guarantee: on every iteration of L, the number of back
// edges taken so far, k, satisfies 0 <= k <= BTC, and phi's value on
// that iteration is C + k. Therefore, at EVERY program point inside L:
//
//     C <=u phi  /\  phi <=u C + BTC
//
// This is a VALUE fact over the phi's whole evolution (like the
// existing constant-range SCEV facts), so no dominance gate is needed.
//
// SOUNDNESS GATES (v1 -- widen only with a written argument):
//  * step must be the constant +1 and start a CONSTANT C; and either
//    C == 0 (then phi = k mod 2^W = k exactly, since k <= BTC < 2^W as
//    a W-bit count -- no wrap possible without SCEV having widened or
//    refused), or the addrec carries nuw (then C + k never unsigned-
//    wraps across the recurrence, including the final C + BTC).
//  * BTC must not be CouldNotCompute, and must translate through the
//    mini-translator below (constants / SSA leaves / adds / casts);
//    anything unmodeled REFUSES the fact rather than approximating.
//    BTC leaves are loop-invariant SSA values by SCEV construction, so
//    referencing them in the query is well-defined; if the encoder has
//    not seen a leaf yet it becomes a fresh free variable, which only
//    WEAKENS the fact (a free bound constrains nothing) -- never wrong.
//  * Widths may differ (SCEV canonicalizes counts); both sides are
//    zero-extended to the wider width, which preserves unsigned order.
//
// The fact is asserted CONTEXT-SIDE with a tracked SCEVSYM: label, so
// the vacuity audit alarms on a bad import and unsat cores attribute
// proofs to this source. CONCURRENCY: called only from factPhase under
// the FactGate ticket, same as every other SE query.
// =====================================================================
z3::expr FactEncoder::scevToZ3(const SCEV *S, bool &OK, unsigned &W) {
    if (auto *SC = dyn_cast<SCEVConstant>(S)) {
        const APInt &A = SC->getAPInt();
        W = A.getBitWidth();
        return Encoder.apintToBV(A);
    }
    if (auto *SU = dyn_cast<SCEVUnknown>(S)) {
        Value *V = SU->getValue();
        if (!V->getType()->isIntegerTy()) { OK = false; W = 1; }
        else W = V->getType()->getIntegerBitWidth();
        if (!OK) return Encoder.apintToBV(APInt(1, 0));
        // Go 2: remember every SSA leaf we turn into a query variable so
        // processScevLeaves() can give it facts of its own (otherwise a
        // leaf like %bc.resume.val stays a free variable and the bound
        // referencing it is mod-weak -- the gemm remainder-loop lesson).
        if (isa<Instruction>(V) && LeafSeen.insert(V).second)
            LeafQueue.push_back(V);
        return Encoder.valueAsBV(V, W);
    }
    if (auto *SA = dyn_cast<SCEVAddExpr>(S)) {
        // All operands of an add share the expression's type.
        unsigned W0 = 0;
        z3::expr Acc = scevToZ3(SA->getOperand(0), OK, W0);
        for (unsigned i = 1; OK && i < SA->getNumOperands(); ++i) {
            unsigned Wi = 0;
            z3::expr Ei = scevToZ3(SA->getOperand(i), OK, Wi);
            if (!OK) break;
            if (Wi != W0) { OK = false; break; }   // paranoia; SCEV promises equal
            Acc = Acc + Ei;
        }
        W = W0;
        return Acc;
    }
    if (auto *SZ = dyn_cast<SCEVZeroExtendExpr>(S)) {
        unsigned Wi = 0;
        z3::expr E = scevToZ3(SZ->getOperand(), OK, Wi);
        W = DL.getTypeSizeInBits(SZ->getType());
        if (OK && W > Wi) return z3::zext(E, W - Wi);
        OK = OK && (W == Wi);
        return E;
    }
    if (auto *SS = dyn_cast<SCEVSignExtendExpr>(S)) {
        unsigned Wi = 0;
        z3::expr E = scevToZ3(SS->getOperand(), OK, Wi);
        W = DL.getTypeSizeInBits(SS->getType());
        if (OK && W > Wi) return z3::sext(E, W - Wi);
        OK = OK && (W == Wi);
        return E;
    }
    if (auto *ST = dyn_cast<SCEVTruncateExpr>(S)) {
        unsigned Wi = 0;
        z3::expr E = scevToZ3(ST->getOperand(), OK, Wi);
        W = DL.getTypeSizeInBits(ST->getType());
        if (OK && W < Wi) return E.extract(W - 1, 0);
        OK = OK && (W == Wi);
        return E;
    }
    // umin / umin_seq: EXACTLY expressible in BV as ite(a <=u b, a, b) --
    // no approximation involved, so translating it does not violate the
    // refusal policy. This case is load-bearing: when the trap edge is
    // itself a loop exit (the normal shape for sanitizer traps), SCEV's
    // exact BTC is umin(trap-exit count, latch count), and without this
    // case every such loop is silently refused. umin_seq differs from
    // umin only in poison propagation, not value, and a poisoned bound
    // feeding a branch is UB => defined executions still satisfy the
    // fact (same caveat as the nsw/nuw import).
    if (isa<SCEVUMinExpr>(S) || isa<SCEVSequentialUMinExpr>(S)) {
        auto *NAry = cast<SCEVNAryExpr>(S);
        unsigned W0 = 0;
        z3::expr Acc = scevToZ3(NAry->getOperand(0), OK, W0);
        for (unsigned i = 1; OK && i < NAry->getNumOperands(); ++i) {
            unsigned Wi = 0;
            z3::expr Ei = scevToZ3(NAry->getOperand(i), OK, Wi);
            if (!OK) break;
            if (Wi != W0) { OK = false; break; }   // paranoia; SCEV promises equal
            Acc = z3::ite(z3::ule(Acc, Ei), Acc, Ei);
        }
        W = W0;
        return Acc;
    }
    // udiv: EXACTLY representable -- SCEV's udiv is unsigned division
    // with the same semantics as BV udiv, so translation is precise
    // (no approximation; the refusal policy is intact). Load-bearing
    // for stride-s loops, whose BTCs are (n - c) /u s shapes.
    if (auto *UD = dyn_cast<SCEVUDivExpr>(S)) {
        unsigned Wl = 0, Wr = 0;
        z3::expr L = scevToZ3(UD->getLHS(), OK, Wl);
        z3::expr R = scevToZ3(UD->getRHS(), OK, Wr);
        if (OK && Wl == Wr) { W = Wl; return z3::udiv(L, R); }
        OK = false; W = 1;
        return Encoder.apintToBV(APInt(1, 0));
    }
    // umax / smax: EXACTLY expressible in BV as ite(a >=u b, a, b) /
    // ite(a >=s b, a, b) -- value-preserving, no approximation (the
    // refusal policy is intact). Load-bearing for gemm-class rotated
    // Julia loops: their 1-based counters' symbolic-max BTCs are
    // (-1 + (0 smax n)) shapes, so without these cases every such loop
    // was silently refused and SCEVSYM asserted nothing (verified on
    // jl_gemm_base, Aug 20 2026 -- scevsym=0 in all 16 jobs). NOTE
    // (v2 update, Aug 22): under the subtraction-form fact a grown or
    // even wrapped bound value is WEAK, never wrong-strong, so no wrap
    // gate is needed for s == 1; the s > 1 path keeps its s*M gate in
    // trySCEVSym.
    if (isa<SCEVUMaxExpr>(S) || isa<SCEVSMaxExpr>(S)) {
        bool IsSigned = isa<SCEVSMaxExpr>(S);
        auto *NAry = cast<SCEVNAryExpr>(S);
        unsigned W0 = 0;
        z3::expr Acc = scevToZ3(NAry->getOperand(0), OK, W0);
        for (unsigned i = 1; OK && i < NAry->getNumOperands(); ++i) {
            unsigned Wi = 0;
            z3::expr Ei = scevToZ3(NAry->getOperand(i), OK, Wi);
            if (!OK) break;
            if (Wi != W0) { OK = false; break; }   // paranoia; SCEV promises equal
            Acc = z3::ite(IsSigned ? z3::sge(Acc, Ei) : z3::uge(Acc, Ei),
                          Acc, Ei);
        }
        W = W0;
        return Acc;
    }
    // mul: EXACT in BV -- SCEV arithmetic is ring arithmetic mod 2^W and
    // bvmul implements exactly that, so translating it approximates
    // NOTHING (refusal policy intact; the original blanket refusal was
    // caution, not necessity). Load-bearing for remainder-loop BTCs,
    // which contain -1 * %bc.resume.val terms (verified on
    // jl_gemm_base's L55.us662.us / L133, Aug 21 2026). The BOUND
    // remains safe because the v2 fact shape (see trySCEVSym) never
    // adds start to it -- a wrapped product makes the bound weak, not
    // wrong-strong.
    if (auto *SM = dyn_cast<SCEVMulExpr>(S)) {
        unsigned W0 = 0;
        z3::expr Acc = scevToZ3(SM->getOperand(0), OK, W0);
        for (unsigned i = 1; OK && i < SM->getNumOperands(); ++i) {
            unsigned Wi = 0;
            z3::expr Ei = scevToZ3(SM->getOperand(i), OK, Wi);
            if (!OK) break;
            if (Wi != W0) { OK = false; break; }   // paranoia; SCEV promises equal
            Acc = Acc * Ei;
        }
        W = W0;
        return Acc;
    }
    // addrec/...: REFUSE (never approximate a bound).
    OK = false; W = 1;
    return Encoder.apintToBV(APInt(1, 0));
}

bool FactEncoder::trySCEVSym(Value *V) {
    if (!SE || !LI) return false;
    auto *Phi = dyn_cast<PHINode>(V);
    if (!Phi) return false;
    Loop *L = LI->getLoopFor(Phi->getParent());
    if (!L || L->getHeader() != Phi->getParent()) return false;
    if (!SE->isSCEVable(Phi->getType())) return false;

    const SCEV *S = SE->getSCEV(Phi);
    auto *AR = dyn_cast<SCEVAddRecExpr>(S);
    if (!AR || AR->getLoop() != L || !AR->isAffine()) return false;

    auto *Step = dyn_cast<SCEVConstant>(AR->getStepRecurrence(*SE));
    if (!Step) return false;
    const APInt &SC = Step->getAPInt();
    if (!SC.isStrictlyPositive()) return false;   // positive constant strides only
    const SCEV *StartS = AR->getStart();
    auto *StartC = dyn_cast<SCEVConstant>(StartS);
    bool HasNUW = AR->hasNoUnsignedWrap();

    // ================= SCEVSYM v2: SUBTRACTION-FORM FACTS =============
    // (Aug 22 2026; v1's phi <=u start + s*BTC shape and its wrap gate
    // are retired for s == 1 -- see the soundness note below.)
    //
    //   UPPER:  phi - start <=u s*BTC          (s == 1: UNCONDITIONAL)
    //   LOWER:  start <=u phi                  (only under nuw)
    //
    // WHY THE s == 1 UPPER BOUND NEEDS NO GATES AT ALL: the recurrence's
    // value at iteration k is (start + k) mod 2^W, so in BV arithmetic
    // phi - start = k EXACTLY -- modular subtraction cancels any wrap,
    // no nuw flag and no constant start required. And k <=u BTC is
    // SCEV's own claim (for the symbolic-max fallback: its W-bit value
    // is >=u the true count, so substituting only WEAKENS the fact).
    // v1's hazard -- start + BTC wrapping into a wrong-STRONG bound --
    // cannot occur because no addition is ever computed. A wrapped
    // value inside the translated BTC expression itself (mul/max
    // composites) makes the bound WEAK, never wrong: weak-but-true is
    // the refusal-policy-compatible failure mode.
    //
    // SYMBOLIC STARTS COME FREE: start is translated by scevToZ3 like
    // any bound expression (constants, SSA leaves, arithmetic); an
    // unencoded leaf becomes a fresh free variable, which only weakens.
    // This is what the vectorizer's remainder loops ({bc.resume.val,
    // +,1}) need -- v1's constant-start gate refused all of them.
    //
    // s > 1 KEEPS THE v1 GATES (constant start + nuw + s*M no-overflow
    // via SCEV's constant max M): phi - start = (s*k) mod 2^W, and
    // comparing that against a possibly-wrapped s*BTC is only exact
    // when s*k cannot wrap -- which is what nuw plus the s*M check
    // establish. Stride-s loops are rare and SCEV mostly refuses their
    // BTCs on current trunk anyway (see HANDOFF environment note).
    if (!SC.isOne()) {
        if (!StartC || !HasNUW) return false;
        const SCEV *CM = SE->getConstantMaxBackedgeTakenCount(L);
        auto *CMC = dyn_cast<SCEVConstant>(CM);
        if (!CMC) return false;
        APInt M = CMC->getAPInt();
        if (M.isAllOnes()) return false;           // "unknown" sentinel
        unsigned WG = Phi->getType()->getIntegerBitWidth();
        bool Ovf = false;
        (void)SC.zextOrTrunc(WG).umul_ov(M.zextOrTrunc(WG), Ovf);
        if (Ovf) return false;
    }

    const SCEV *BTC = SE->getBackedgeTakenCount(L);
    if (isa<SCEVCouldNotCompute>(BTC)) {
        // MULTI-EXIT FALLBACK: when the trap edge is itself a loop exit
        // (the normal sanitizer shape), SCEV usually reports the EXACT
        // BTC as CouldNotCompute -- but still offers a SYMBOLIC MAX.
        BTC = SE->getSymbolicMaxBackedgeTakenCount(L);
    }
    if (isa<SCEVCouldNotCompute>(BTC)) return false;

    bool OK = true;
    unsigned WB = 0;
    z3::expr TB = scevToZ3(BTC, OK, WB);
    if (!OK || WB == 0) return false;
    unsigned WS = 0;
    z3::expr SB = scevToZ3(StartS, OK, WS);
    if (!OK || WS == 0) return false;

    unsigned WP = Phi->getType()->getIntegerBitWidth();
    unsigned W = WP > WB ? WP : WB;
    if (WS > W) W = WS;
    z3::expr PhiE = Encoder.valueAsBV(Phi, WP);
    if (WP < W) PhiE = z3::zext(PhiE, W - WP);
    if (WB < W) TB = z3::zext(TB, W - WB);
    if (WS < W) SB = z3::zext(SB, W - WS);

    z3::expr Upper = TB;
    if (!SC.isOne())
        Upper = Encoder.apintToBV(SC.zextOrTrunc(W)) * Upper;  // s*BTC (gated above)
    z3::expr Fact = z3::ule(PhiE - SB, Upper);
    // Lower bound only under nuw (monotone recurrence => phi never dips
    // below start); skipped for the trivial start == 0.
    if (HasNUW && !(StartC && StartC->getAPInt().isZero()))
        Fact = Fact && z3::uge(PhiE, SB);

    std::string Lbl = mkLabel("SCEVSYM");
    Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());

    std::string BS; raw_string_ostream BOS(BS); BTC->print(BOS);
    std::string SS; raw_string_ostream SOS(SS); StartS->print(SOS);
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " - start(" << SS << ") <=u ";
    if (!SC.isOne()) Log << SC << "*";
    Log << "BTC(" << BS << ") (SCEV symbolic trip count, sub-form)\n";
    ++NumFacts;
    return true;
}
