# ODeSSy — full source context (8ec5d33, generated 2026-08-11)

Read order: README.md -> PAPER_FACTS.md -> HANDOFF.md -> this file.
Pass architecture: OraclePass.cpp (orchestration) -> TrapDiscovery (Stage 1)
-> TrapSolver + Z3Encoder + FactEncoder (Stage 2) -> kill (Stage 3).


════════════════════════════════════════════════════════════════════
## FILE: OraclePass/FactEncoder.cpp
## Fact sources incl. SCEVSYM (symbolic trip counts: umin exact, symbolic-max BTC fallback for multi-exit loops, EXACT udiv translation, stride-s gate behind SCEV's nuw). All facts context-side, audit-labeled for cores. NEXT FRONTIER lives here: the FRAME fact source (heap-invariant super-analysis).
════════════════════════════════════════════════════════════════════
```
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
    return NumFacts;
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
    // umax/smax/mul/addrec/...: REFUSE (never approximate a bound).
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
    auto *Start = dyn_cast<SCEVConstant>(AR->getStart());
    if (!Start) return false;
    const APInt &C = Start->getAPInt();
    // {0,+,1} is wrap-free by construction (value == iteration count).
    // EVERY other (start, step) combination -- nonzero start or stride
    // s > 1 -- needs SCEV's own no-unsigned-wrap proof: under nuw the
    // recurrence is monotone and its value at iteration k is exactly
    // start + s*k with k <= BTC, so start <=u phi <=u start + s*BTC,
    // and the BV computation of that bound cannot wrap either.
    if (!(C.isZero() && SC.isOne()) && !AR->hasNoUnsignedWrap()) return false;

    const SCEV *BTC = SE->getBackedgeTakenCount(L);
    if (isa<SCEVCouldNotCompute>(BTC)) {
        // MULTI-EXIT FALLBACK: when the trap edge is itself a loop exit
        // (the normal sanitizer shape), SCEV usually reports the EXACT
        // BTC as CouldNotCompute -- but still offers a SYMBOLIC MAX.
        // Sound by construction: our fact is an upper bound
        // (phi <=u start + BTC), and the symbolic max is >= the true
        // backedge count, so substituting it only WEAKENS the fact.
        BTC = SE->getSymbolicMaxBackedgeTakenCount(L);
    }
    if (isa<SCEVCouldNotCompute>(BTC)) return false;

    bool OK = true;
    unsigned WB = 0;
    z3::expr TB = scevToZ3(BTC, OK, WB);
    if (!OK || WB == 0) return false;

    unsigned WP = Phi->getType()->getIntegerBitWidth();
    unsigned W = WP > WB ? WP : WB;
    z3::expr PhiE = Encoder.valueAsBV(Phi, WP);
    if (WP < W) PhiE = z3::zext(PhiE, W - WP);
    if (WB < W) TB = z3::zext(TB, W - WB);

    z3::expr Upper = TB;
    if (!SC.isOne())
        Upper = Encoder.apintToBV(SC.zextOrTrunc(W)) * Upper;  // s*BTC, exact in BV (nuw-gated)
    if (!C.isZero())
        Upper = Upper + Encoder.apintToBV(C.zextOrTrunc(W));
    z3::expr Fact = z3::ule(PhiE, Upper);
    if (!C.isZero())
        Fact = Fact && z3::uge(PhiE, Encoder.apintToBV(C.zextOrTrunc(W)));

    std::string Lbl = mkLabel("SCEVSYM");
    Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());

    std::string BS; raw_string_ostream BOS(BS); BTC->print(BOS);
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " <=u start(" << C << ") + ";
    if (!SC.isOne()) Log << SC << "*";                // s==1 stays byte-identical
    Log << "BTC(" << BS << ") (SCEV symbolic trip count)\n";
    ++NumFacts;
    return true;
}
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/FactEncoder.h
## Heavy-tier policy module interface: RM/RA/KB/LVI/SCEV/SCEVSYM fact sources over the free-variable boundary.
════════════════════════════════════════════════════════════════════
```
#pragma once
// =====================================================================
// FactEncoder -- the HEAVY tier's policy module (HANDOFF §9).
//
// Z3Encoder stays a pure IR->Z3 translator; OraclePass owns discovery
// and orchestration. FactEncoder sits between them: it walks the
// over-approximation boundaries of the current query (the free
// variables Z3Encoder created) and asserts everything LLVM's own
// lightweight analyses already know about each one:
//
//   RM  : !range metadata on loads/calls       (value fact)
//   RA  : 'range' attribute on call returns    (value fact)
//         and function parameters
//   KB  : computeKnownBits bit masks           (value fact)
//   LVI : LazyValueInfo constant range at the  (point fact -- def must
//         trap's branch point                   dominate PredBB)
//   SCEV: loop-header phi ranges               (constant intervals)
//   SCEVSYM: loop-header phi vs SYMBOLIC trip  (the rotated-loop unlock:
//         count -- phi <=u start + BTC, where   asserts the latch bound
//         BTC is an SSA-valued expression       that dominance-based guard
//         translated into the query             collection cannot see)
//
// Facts are asserted CONTEXT-SIDE (before the push()/trap boundary), so
// the vacuity audit doubles as the alarm for a wrong fact import, and in
// audit mode each fact is tracked with a label ("RM:3", "KB:7", "LVI:12")
// so unsat cores attribute proofs to their fact source.
//
// Soundness: value facts carry the same poison-semantics caveat as the
// nsw/nuw import (violation => poison => UB once branched on, so defined
// executions satisfy the fact). LVI facts are only valid at a program
// point, hence the dominance gate. A fact NEVER moves a boundary: the
// variable stays free-plus-constrained, never sliced through.
// =====================================================================
#include "Z3Encoder.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Support/raw_ostream.h"
#include <string>

namespace llvm {
class LazyValueInfo;
class DataLayout;
class ScalarEvolution;
class LoopInfo;
class SCEV;
}

class FactEncoder {
    Z3Encoder &Encoder;
    llvm::LazyValueInfo *LVI;      // null => LVI fact source disabled
    llvm::ScalarEvolution *SE;     // null => SCEV fact sources disabled
    llvm::LoopInfo *LI;            // null => SCEVSYM fact source disabled
    llvm::DominatorTree &DT;
    const llvm::DataLayout &DL;
    bool Audit;                    // true => tracked assertions with labels
    llvm::raw_ostream &Log;
    unsigned NumFacts = 0;

public:
    FactEncoder(Z3Encoder &Enc, llvm::LazyValueInfo *LVI,
                llvm::ScalarEvolution *SE, llvm::LoopInfo *LI,
                llvm::DominatorTree &DT, const llvm::DataLayout &DL,
                bool Audit, llvm::raw_ostream &Log);

    // Walk every boundary (free) value and assert its facts.
    // Returns the number of fact assertions added to the solver.
    unsigned encodeBoundaryFacts(llvm::BasicBlock *PredBB);

private:
    bool tryRangeMetadata(llvm::Value *V);
    bool tryRangeAttr(llvm::Value *V);
    bool tryKnownBits(llvm::Value *V);
    bool tryLVI(llvm::Value *V, llvm::BasicBlock *PredBB);
    bool trySCEV(llvm::Value *V);
    // SCEVSYM: symbolic trip-count bound for an affine {C,+,1} header phi
    // (see the soundness block in FactEncoder.cpp). Requires SE and LI.
    bool trySCEVSym(llvm::Value *V);
    // SCEV -> Z3 mini-translator (constants, SSA unknowns, adds, casts,
    // umin/umin_seq [exact via ite]; everything else REFUSED). On success OK stays true and W is the
    // expression's bit width. All exprs live in Encoder's context.
    z3::expr scevToZ3(const llvm::SCEV *S, bool &OK, unsigned &W);
    // "RM:<n>" etc.; n = running fact counter, so labels are unique.
    std::string mkLabel(const char *Src) const;
};```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/OraclePass.cpp
## Module pass: 3-stage orchestration (serial discovery / parallel solve / serial kill), pass-string parser (vacuity;heavy;ldeq;timeout;threads;traps=a:b), Stage-3 branch folding with the Folded double-fold guard, per-function log assembly (THREADS-invariant).
════════════════════════════════════════════════════════════════════
```
// =====================================================================
// OraclePass.cpp -- ODeSSy orchestration (Level-2 parallel redesign).
//
// The pass is now a MODULE pass composed of three stages:
//
//   Stage 1 (serial, main thread)   TrapDiscovery: per-function
//       analyses (DT/LI, + LVI/SE in heavy), trap anchoring, dominating
//       guards + llvm.assume, backward slice. Produces one TrapJob per
//       trap site; the job list spans the WHOLE module, so one function
//       with 400 traps and ten with 2 load-balance perfectly (this is
//       the "super-analysis level": the scheduling unit is the trap,
//       not the function).
//   Stage 2 (parallel, worker pool) TrapSolver: each worker owns a
//       private Z3 context; RPO encode + (heavy) boundary facts +
//       solve. The IR is READ-ONLY here. Heavy-tier LVI/SCEV queries
//       are serialized in discovery order through FactGate: thread-safe
//       AND deterministic (verdicts are THREADS-independent).
//   Stage 3 (serial, main thread)   kills in discovery order, log
//       assembly in discovery order, per-function stats.
//
// Determinism contract: for a given input module, THREADS=N and
// THREADS=1 produce identical verdicts, identical output IR, and
// byte-identical logs modulo the measured latency numbers (which were
// never deterministic, even serially). `diff` of the output .ll across
// THREADS values is the acceptance test.
//
// Analyze-then-kill note: verdicts are computed on pristine IR and the
// branch folds are applied afterwards (old behavior interleaved them).
// Both orders are sound; the new order's contexts are never weaker
// (an eliminated trap's guard condition is provably true, so keeping
// it as context for later traps is sound and possibly stronger), so
// trap-elimination counts can only match or exceed the old pass's.
//
// threads=1 (the default) is the serial reference; DebugOracle
// wiretaps (raw errs() from encode internals) are only meaningful at
// threads=1.
// =====================================================================
#include "Scheduler.h"
#include "TrapDiscovery.h"
#include "TrapJob.h"
#include "TrapSolver.h"
#include "Z3Encoder.h"

#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/raw_ostream.h"

#include <cctype>
#include <chrono>
#include <string>
#include <thread>
#include <vector>

using namespace llvm;

// --- THE DEBUG FLAG ---
bool DebugOracle = false;

namespace {

// Turn a module identifier (usually the input .ll path, e.g.
// "evaluation/zlib/deflate_integer_O3.ll") into a safe, stable log
// filename stem ("deflate_integer_O3"). Deterministic: the same input
// always maps to the same log file, so one benchmark == one log.
static std::string logStemForModule(const Module &M) {
    StringRef Id = M.getModuleIdentifier();

    // Strip directory and the final extension.
    StringRef Base = sys::path::stem(sys::path::filename(Id));

    std::string Stem;
    if (Base.empty() || Base == "<stdin>") {
        Stem = "module";
    } else {
        // Replace anything that isn't [A-Za-z0-9._-] with '_' so the
        // name is always a valid single path component.
        for (char c : Base) {
            Stem.push_back((std::isalnum(static_cast<unsigned char>(c)) ||
                            c == '.' || c == '_' || c == '-') ? c : '_');
        }
    }
    return Stem;
}

static double msSince(std::chrono::steady_clock::time_point T0) {
    return std::chrono::duration<double, std::milli>(
               std::chrono::steady_clock::now() - T0).count();
}

struct OraclePass : public PassInfoMixin<OraclePass> {

    // When true, every UNSAT is audited: guards alone must be SAT.
    // Costs one extra solver query per UNSAT (not per trap) -- enable in
    // dev/audit runs, disable for performance benchmarking.
    bool VacuityCheck = false;
    // Precision tier. false = LIGHT: today's encoder, and it must stay
    // byte-for-byte identical to pre-tier behavior (the tier split doubles
    // as the analysis-facts ablation). true = HEAVY: light PLUS LLVM
    // analysis facts (LVI / KnownBits / SCEV / !range) asserted at the
    // over-approximation boundaries (HANDOFF §9).
    bool HeavyMode = false;
    unsigned QueryTimeoutMs = 10000;
    // Level-2 knob: workers for the per-trap solve stage. 1 (default)
    // == serial reference behavior; 0 == one worker per hardware thread.
    unsigned Threads = 1;
    // LDEQ knob (oracle-pass<ldeq>): same-BB no-clobber load unification
    // in the encoder. Default OFF (light tier stays byte-identical; the
    // knob is its own ablation). Composes with everything.
    bool LoadEq = false;
    // Trap-callee list (oracle-pass<traps=a,b,...>): callee-name
    // substrings the Hunter additionally accepts as trap sites, behind
    // the divergence gate (see TrapDiscovery.cpp). Empty (default) =>
    // intrinsic-only Hunter, byte-identical to all prior behavior.
    std::vector<std::string> TrapCallees;

    OraclePass() = default;
    OraclePass(bool Vacuity, bool Heavy, unsigned TimeoutMs, unsigned NThreads,
               bool LdEq, std::vector<std::string> Traps = {})
        : VacuityCheck(Vacuity), HeavyMode(Heavy), QueryTimeoutMs(TimeoutMs),
          Threads(NThreads), LoadEq(LdEq), TrapCallees(std::move(Traps)) {}

    PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {
        auto &FAM =
            MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

        // --- Resolve the per-benchmark log file (same scheme as before:
        // module-derived, deterministic, truncated once per opt run) ---
        std::string LogFilename =
            "logs/compilations/" + logStemForModule(M) + ".txt";
        std::error_code EC;
        raw_fd_ostream LogFile(LogFilename, EC, sys::fs::OF_None);
        if (EC) {
            errs() << "[Error] Could not open log file: " << EC.message() << "\n";
            return PreservedAnalyses::all();
        }

        unsigned NThreads =
            Threads ? Threads : std::thread::hardware_concurrency();
        if (NThreads == 0) NThreads = 1;

        odessy::SolverConfig Cfg;
        Cfg.VacuityCheck = VacuityCheck;
        Cfg.HeavyMode = HeavyMode;
        Cfg.QueryTimeoutMs = QueryTimeoutMs;
        Cfg.LoadEq = LoadEq;

        // =============================================================
        // STAGE 1: serial discovery (main thread; IR read-only)
        // =============================================================
        std::vector<odessy::TrapJob> Jobs;
        std::vector<odessy::FunctionCtx> FCs;
        DenseMap<Function *, size_t> CtxOf;

        for (Function &F : M) {
            if (F.isDeclaration()) continue;
            auto T0 = std::chrono::steady_clock::now();

            odessy::FunctionCtx FC;
            FC.F = &F;
            FC.DT = &FAM.getResult<DominatorTreeAnalysis>(F);
            FC.LI = &FAM.getResult<LoopAnalysis>(F);
            // CONCURRENCY: DominatorTree::dominates() lazily rebuilds its
            // DFS numbering after enough slow queries -- a hidden WRITE.
            // Force the numbering NOW, on the main thread, so every
            // worker-side dominates() takes the const fast path.
            FC.DT->updateDFSNumbers();
            // HEAVY tier only: point-sensitive ranges for boundary facts.
            // Never requested in light tier => light stays byte-identical.
            if (HeavyMode) {
                FC.LVI = &FAM.getResult<LazyValueAnalysis>(F);
                FC.SE = &FAM.getResult<ScalarEvolutionAnalysis>(F);
            }

            size_t Before = Jobs.size();
            odessy::discoverTraps(F, *FC.DT, *FC.LI, Jobs, TrapCallees);
            for (size_t i = Before; i < Jobs.size(); ++i)
                FC.JobIndices.push_back(i);

            FC.DiscoveryMs = msSince(T0);
            CtxOf[&F] = FCs.size();
            FCs.push_back(std::move(FC));
        }

        errs() << "[ODeSSy] " << Jobs.size() << " trap site(s) across "
               << FCs.size() << " function(s); threads=" << NThreads
               << (HeavyMode ? " [tier: heavy]" : "")
               << (LoadEq ? " [ldeq]" : "");
        if (!TrapCallees.empty()) {
            errs() << " [traps=";
            for (size_t i = 0; i < TrapCallees.size(); ++i)
                errs() << (i ? "," : "") << TrapCallees[i];
            errs() << "]";
        }
        errs() << "\n";

        // =============================================================
        // STAGE 2: parallel solve (workers; IR read-only; verdicts only)
        // =============================================================
        odessy::FactGate Gate;
        auto WorkerBody = [&](size_t i) {
            odessy::TrapJob &J = Jobs[i];
            auto T0 = std::chrono::steady_clock::now();
            bool GatePassed = false;
            try {
                if (J.SliceOK) {
                    const odessy::FunctionCtx &FC = FCs[CtxOf.lookup(J.F)];
                    odessy::TrapSolver S(Cfg, FC, J);
                    bool Proceed = S.encodePhase();
                    if (HeavyMode) {
                        // Every heavy job passes the gate exactly once, in
                        // discovery order, even when the encode aborted
                        // (pass-through keeps the turnstile advancing).
                        Gate.acquire(J.Index);
                        if (Proceed) Proceed = S.factPhase();
                        Gate.release(J.Index);
                        GatePassed = true;
                    }
                    if (Proceed) S.solvePhase();
                }
            } catch (...) {
                // Phases fence their own exceptions; anything reaching
                // here is constructor-level (e.g. Z3 context OOM).
                // Degrade to "keep the trap" -- never unwind a worker.
                raw_string_ostream OS(J.LogText);
                OS << "    -> [Skip] worker-level exception -- trap kept\n";
            }
            if (HeavyMode && !GatePassed) {
                Gate.acquire(J.Index);   // dead/failed job: pass-through
                Gate.release(J.Index);
            }
            J.WorkerMs = msSince(T0);
        };
        odessy::runJobs(NThreads, Jobs.size(), WorkerBody);

        // =============================================================
        // STAGE 3a: THE KILL (serial, discovery order -- the only IR
        // mutation in the whole pass)
        // =============================================================
        int ModuleEliminated = 0;
        SmallPtrSet<BranchInst *, 16> Folded;
        for (odessy::TrapJob &J : Jobs) {
            if (!J.Eliminate) continue;
            raw_string_ostream OS(J.LogText);
            if (!Folded.insert(J.Br).second) {
                // Pathological: both successors of one branch proved dead
                // (would mean the branch itself is unreachable). First
                // verdict wins; refuse a contradictory second fold.
                OS << "    -> [Skip] anchor branch already folded by an earlier elimination -- keeping\n";
                J.Eliminate = false;
                continue;
            }
            J.Br->setCondition(ConstantInt::get(
                Type::getInt1Ty(J.F->getContext()), J.TrapOnTrue ? 0 : 1));
            OS << "  => SUCCESS: Trap mathematically neutralized!\n";
            ++ModuleEliminated;
        }

        // =============================================================
        // STAGE 3b: log assembly (discovery order => THREADS-invariant)
        // =============================================================
        for (odessy::FunctionCtx &FC : FCs) {
            std::string FuncText;
            raw_string_ostream FOS(FuncText);

            FOS << "\n[Z3 Oracle] Analyzing Function: " << FC.F->getName() << "\n";
            if (HeavyMode) {
                FOS << "  [tier: heavy]\n";
            }

            double TotalLatency = 0.0;
            double WorkerWall = 0.0;
            int TrapsEliminated = 0;
            int trap_attempts = 0;
            int smt_queries = 0;

            for (size_t ji : FC.JobIndices) {
                odessy::TrapJob &J = Jobs[ji];
                FOS << J.LogText;
                trap_attempts++;
                TotalLatency += J.LatencyMs;
                if (J.LatencyMs > 0.0) smt_queries++;
                if (J.Eliminate) TrapsEliminated++;
                WorkerWall += J.WorkerMs;
            }

            FOS << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
            FOS << "  => Total Trap Attempts: " << trap_attempts << "\n";
            FOS << "  => Total SMT Queries Executed: " << smt_queries << "\n";
            FOS << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
            FOS << "  => Average SMT Query Latency: "
                << (smt_queries > 0 ? TotalLatency / smt_queries : 0) << " ms\n";
            // Discovery + summed per-job worker wall. With threads>1 this
            // is CPU-time-like (jobs overlap), not elapsed time -- the
            // honest elapsed number is the compile-stage wall clock the
            // harness already records.
            FOS << "  => Total DFS & SMT Execution Time: "
                << (FC.DiscoveryMs + WorkerWall) << " ms\n";
            FOS << "--------------------------------------------------\n";

            LogFile << FuncText;
            errs() << FuncText;   // full mirror (superset of the old stderr)
        }

        return ModuleEliminated > 0 ? PreservedAnalyses::none()
                                    : PreservedAnalyses::all();
    }
};

} // namespace

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "OraclePass", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](StringRef Name, ModulePassManager &MPM,
                       ArrayRef<PassBuilder::PipelineElement>) {
                        if (!Name.consume_front("oracle-pass"))
                            return false;
                        bool Vacuity = false;
                        bool Heavy = false;
                        bool TierSeen = false;            // reject <light;heavy>
                        unsigned TimeoutMs = 10000;
                        unsigned Threads = 1;             // Level-2 default: serial
                        bool LdEq = false;                // LDEQ default: off
                        std::vector<std::string> Traps;   // traps= callees: empty
                        if (!Name.empty()) {              // parse "<a;b;...>"
                            if (!Name.consume_front("<") || !Name.consume_back(">"))
                                return false;
                            SmallVector<StringRef, 4> Parts;
                            Name.split(Parts, ';');
                            for (StringRef P : Parts) {
                                P = P.trim();
                                if (P == "vacuity")
                                    Vacuity = true;
                                else if (P == "ldeq")
                                    LdEq = true;
                                else if (P == "light" || P == "heavy") {
                                    if (TierSeen)
                                        return false;   // contradictory tiers
                                    TierSeen = true;
                                    Heavy = (P == "heavy");
                                } else if (P.consume_front("timeout=")) {
                                    if (P.getAsInteger(10, TimeoutMs))
                                        return false;   // malformed number
                                } else if (P.consume_front("traps=")) {
                                    // ':'-separated callee-name substrings.
                                    // NOT ',': opt's own pipeline parser
                                    // splits on top-level commas BEFORE this
                                    // callback runs, so a comma list arrives
                                    // truncated and the pass name fails to
                                    // parse. ',' is still accepted for a
                                    // single-symbol string's future-proofing.
                                    SmallVector<StringRef, 4> Syms;
                                    P.split(Syms, ':');
                                    for (StringRef Part : Syms) {
                                        SmallVector<StringRef, 2> Sub;
                                        Part.split(Sub, ',');
                                        for (StringRef S : Sub) {
                                            S = S.trim();
                                            if (!S.empty()) Traps.push_back(S.str());
                                        }
                                    }
                                    if (Traps.empty())
                                        return false;   // traps= with no names
                                } else if (P.consume_front("threads=")) {
                                    // threads=0 => one worker per HW thread
                                    if (P.getAsInteger(10, Threads))
                                        return false;   // malformed number
                                } else if (!P.empty())
                                    return false;       // unknown parameter
                            }
                        }
                        MPM.addPass(OraclePass(Vacuity, Heavy, TimeoutMs, Threads,
                                               LdEq, std::move(Traps)));
                        return true;
                    }
                );
            }};
}
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/Scheduler.cpp
## FactGate/runJobs implementation.
════════════════════════════════════════════════════════════════════
```
#include "Scheduler.h"

#include <atomic>
#include <thread>
#include <vector>

namespace odessy {

void FactGate::acquire(std::size_t Ticket) {
    std::unique_lock<std::mutex> L(M);
    CV.wait(L, [&] { return Next == Ticket; });
}

void FactGate::release(std::size_t Ticket) {
    {
        std::lock_guard<std::mutex> L(M);
        Next = Ticket + 1;   // strict +1: every job passes exactly once
    }
    CV.notify_all();
}

void runJobs(std::size_t NumThreads, std::size_t NumJobs,
             const std::function<void(std::size_t)> &Fn) {
    if (NumJobs == 0)
        return;

    if (NumThreads <= 1) {
        // Serial reference path: identical to the pre-Level-2 pass
        // (same job order, same gate passage order, no threads at all).
        for (std::size_t I = 0; I < NumJobs; ++I)
            Fn(I);
        return;
    }

    std::atomic<std::size_t> NextJob{0};
    auto Worker = [&] {
        for (;;) {
            std::size_t I = NextJob.fetch_add(1, std::memory_order_relaxed);
            if (I >= NumJobs)
                return;
            Fn(I);
        }
    };

    std::size_t N = NumThreads < NumJobs ? NumThreads : NumJobs;
    std::vector<std::thread> Pool;
    Pool.reserve(N);
    for (std::size_t T = 0; T < N; ++T)
        Pool.emplace_back(Worker);
    for (std::thread &T : Pool)
        T.join();
}

} // namespace odessy
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/Scheduler.h
## FactGate ticket turnstile: serializes LVI/SCEV queries in discovery order => thread-safe AND deterministic; runJobs worker pool.
════════════════════════════════════════════════════════════════════
```
#pragma once
// =====================================================================
// Scheduler -- Level-2 threading MECHANISM (no ODeSSy policy in here).
//
// Two pieces:
//
//  * runJobs(N, K, Fn): run Fn(0..K-1) on up to N workers. Jobs are
//    CLAIMED in strictly increasing index order (single atomic
//    counter); N <= 1 degenerates to a plain serial loop, which is the
//    bit-identical reference behavior.
//
//  * FactGate: a ticket turnstile that forces the heavy tier's LVI /
//    ScalarEvolution queries to happen in discovery order. Those
//    analyses are lazily memoized (queries WRITE to internal caches),
//    so unsynchronized access is a data race; a plain mutex would fix
//    safety but leave query ORDER schedule-dependent, and LVI's
//    precision can depend on query order. The gate gives both:
//    thread-safety and THREADS-independent, serial-identical results.
//
//    Protocol: every job must acquire(Index) then release(Index)
//    EXACTLY once, in that order, even jobs that have nothing to ask
//    (pass-through) -- the gate advances by +1 per ticket.
//
//    No-deadlock argument: tickets are claimed in increasing order, so
//    when a worker holding job i waits at the gate, every job j < i is
//    either finished or held by some other worker; the smallest
//    unfinished-gate job never waits (all smaller tickets already
//    passed) and nothing in encode blocks, so the gate always advances.
//    Corollary: release() must NOT be preceded by any wait on a higher
//    ticket -- keep the acquire/release window minimal (facts only).
// =====================================================================
#include <condition_variable>
#include <cstddef>
#include <functional>
#include <mutex>

namespace odessy {

class FactGate {
    std::mutex M;
    std::condition_variable CV;
    std::size_t Next = 0;

public:
    void acquire(std::size_t Ticket);   // blocks until Next == Ticket
    void release(std::size_t Ticket);   // Next = Ticket + 1, wakes waiters
};

// Fn must be exception-fenced by the caller: an exception escaping a
// worker thread would std::terminate the whole opt process.
void runJobs(std::size_t NumThreads, std::size_t NumJobs,
             const std::function<void(std::size_t)> &Fn);

} // namespace odessy
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/TrapDiscovery.cpp
## Hunter + Anchor v2 (one TrapJob PER INCOMING EDGE of a trap block; partial elimination of shared error blocks), Phase-0 dominating guards, Phase-0.5 llvm.assume, Phase-1 backward slice with boundary rules (loop-header phis/loads/GEPs/alien calls become free variables).
════════════════════════════════════════════════════════════════════
```
#include "TrapDiscovery.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include <queue>
#include <set>
#include <string>
using namespace llvm;
extern bool DebugOracle;   // defined in OraclePass.cpp
namespace odessy {
// ==================================================================
// PHASE 1 helper: LINEAR BACKWARD REGION WALK (no path enumeration).
// Verbatim from the old OraclePass::collectPhiConditions (the unused
// log parameter is dropped).
// ==================================================================
static bool collectPhiConditions(PHINode *Phi, DominatorTree &DT,
                                 std::set<Value *> &Visited,
                                 std::queue<Value *> &Worklist) {
    BasicBlock *PhiBB = Phi->getParent();
    DomTreeNode *Node = DT.getNode(PhiBB);
    if (!Node || !Node->getIDom()) return false;
    BasicBlock *IDomBB = Node->getIDom()->getBlock();
    std::set<BasicBlock*> RegionVisited;
    std::queue<BasicBlock*> BlockWorklist;
    for (unsigned i = 0; i < Phi->getNumIncomingValues(); ++i) {
        Value *IncVal = Phi->getIncomingValue(i);
        if (Visited.insert(IncVal).second) Worklist.push(IncVal);
        BasicBlock *IncBB = Phi->getIncomingBlock(i);
        if (RegionVisited.insert(IncBB).second) BlockWorklist.push(IncBB);
    }
    while (!BlockWorklist.empty()) {
        BasicBlock *BB = BlockWorklist.front();
        BlockWorklist.pop();
        auto *Term = BB->getTerminator();
        Value *Cond = nullptr;
        if (auto *Br = dyn_cast<BranchInst>(Term)) {
            if (Br->isConditional()) Cond = Br->getCondition();
        } else if (auto *Sw = dyn_cast<SwitchInst>(Term)) {
            Cond = Sw->getCondition();
        }
        if (Cond && Visited.insert(Cond).second) Worklist.push(Cond);
        if (BB == IDomBB) continue;
        for (BasicBlock *Pred : predecessors(BB)) {
            if (Pred == PhiBB) continue;
            if (!DT.dominates(IDomBB, Pred)) continue;
            if (RegionVisited.insert(Pred).second) BlockWorklist.push(Pred);
        }
    }
    return true;
}
// ==================================================================
// PHASE 0 + 0.5 + 1: guards, assumes, backward slice. Fills
// Job.Guards / Job.Visited / Job.SliceOK and writes discovery log
// lines (byte-identical to the old serial pass) into Log.
// ==================================================================
static void collectGuardsAndSlice(TrapJob &Job, DominatorTree &DT,
                                  LoopInfo &LI, raw_ostream &Log) {
    std::queue<Value*> Worklist;
    std::set<Value*> &Visited = Job.Visited;
    Worklist.push(Job.TrapCond);
    Visited.insert(Job.TrapCond);
    // ==============================================================
    // PHASE 0: DOMINATING CONTEXT GUARDS
    //
    // The trap condition alone is almost never contradictory -- the
    // proof of impossibility lives in the guards the programmer
    // already wrote upstream (e.g. `if (len > MAX) return 0;`).
    //
    // Walk the dominator tree upward from the trap's branch block.
    // For every dominator D that ends in a conditional branch, if one
    // outgoing EDGE of D dominates the trap block, then every
    // execution reaching the trap took that edge on its last visit
    // to D. SSA immutability guarantees the condition's operands
    // still denote those same values at the trap, so the edge's
    // condition can be soundly asserted -- even across loops, since
    // loop-variant inputs are already over-approximated as free
    // variables.
    //
    // NOTE (Level-2, analyze-then-kill): guards are collected on
    // PRISTINE IR for every trap in the module, before any Stage-3
    // fold. A guard that is the branch condition of an earlier
    // ELIMINATED trap is still sound: its UNSAT proof shows the
    // condition held on every defined execution, and folding the
    // branch does not change the set of reachable executions. This
    // can only make later contexts stronger (never weaker) than the
    // old interleaved analyze/kill order.
    // ==============================================================
    for (DomTreeNode *N = DT.getNode(Job.PredBB); N && N->getIDom(); N = N->getIDom()) {
        BasicBlock *D = N->getIDom()->getBlock();
        auto *DBr = dyn_cast<BranchInst>(D->getTerminator());
        if (!DBr || !DBr->isConditional()) continue;
        if (DBr->getSuccessor(0) == DBr->getSuccessor(1)) continue;
        Value *GCond = nullptr;
        bool GVal = true;
        if (DT.dominates(BasicBlockEdge(D, DBr->getSuccessor(0)), Job.PredBB)) {
            GCond = DBr->getCondition(); GVal = true;
        } else if (DT.dominates(BasicBlockEdge(D, DBr->getSuccessor(1)), Job.PredBB)) {
            GCond = DBr->getCondition(); GVal = false;
        }
        if (GCond) {
            Job.Guards.push_back({GCond, GVal});
            std::string GS; raw_string_ostream OS(GS); GCond->print(OS);
            Log << "    -> Guard[" << (Job.Guards.size()-1) << "] ("
                << (GVal ? "true" : "false") << " edge of '" << D->getName()
                << "'):" << OS.str() << "\n";
            // Slice the guard too, so its defining math is encoded.
            if (Visited.insert(GCond).second) Worklist.push(GCond);
        }
    }
    // ==============================================================
    // PHASE 0.5: DOMINATING llvm.assume FACTS
    // The optimizer's own recorded truths: if an assume dominates the
    // trap's branch block, its condition holds on every path there --
    // free, sound context by the same SSA argument as the guards.
    // ==============================================================
    for (BasicBlock &ABB : *Job.PredBB->getParent()) {
        for (Instruction &AI : ABB) {
            auto *II = dyn_cast<IntrinsicInst>(&AI);
            if (!II || II->getIntrinsicID() != Intrinsic::assume) continue;
            if (!DT.dominates(II, Job.PredBB)) continue;
            Value *ACond = II->getArgOperand(0);
            Job.Guards.push_back({ACond, true});
            std::string GS; raw_string_ostream OS(GS); ACond->print(OS);
            Log << "    -> Guard[" << (Job.Guards.size()-1) << "] (llvm.assume):"
                << OS.str() << "\n";
            if (Visited.insert(ACond).second) Worklist.push(ACond);
        }
    }
    Log << "    -> Collected " << Job.Guards.size() << " dominating context guard(s).\n";
    // PHASE 1: BACKWARD SLICE (boundary rules unchanged)
    while (!Worklist.empty()) {
        Value *V = Worklist.front();
        Worklist.pop();
        Instruction *Inst = dyn_cast<Instruction>(V);
        if (!Inst) continue;
        // --- THE PHI / MEMORY LOGIC ---
        if (auto *Phi = dyn_cast<PHINode>(Inst)) {
            BasicBlock *PhiBB = Phi->getParent();
            Loop *L = LI.getLoopFor(PhiBB);
            if (L && L->getHeader() == PhiBB) {
                if (DebugOracle) {
                    errs() << "    [DEBUG] Over-approximating Loop Header Phi: " << *Inst << "\n";
                }
                continue; // Stop slicing backwards, treat as a free variable!
            } else {
                if (!collectPhiConditions(Phi, DT, Visited, Worklist)) {
                    Job.SliceOK = false;   // keep the trap; never query
                    return;
                }
                continue;
            }
        }
        // --- THE BOUNDARY LOGIC ---
        if (isa<LoadInst>(Inst) || isa<GetElementPtrInst>(Inst)) {
            if (DebugOracle) {
                errs() << "    [DEBUG] Over-approximating Boundary: " << Inst->getOpcodeName() << "\n";
            }
            continue;
        }
        if (auto *Call = dyn_cast<CallInst>(Inst)) {
            bool IsMathIntrinsic = false;
            if (Function *CF = Call->getCalledFunction()) {
                // Slice through the ENTIRE overflow family:
                // sadd/ssub/smul/uadd/usub/umul.with.overflow
                if (CF->getName().contains(".with.overflow")) {
                    IsMathIntrinsic = true;
                }
            }
            if (!IsMathIntrinsic) {
                if (DebugOracle) {
                    errs() << "    [DEBUG] Over-approximating Alien Call\n";
                }
                continue;
            }
        }
        // ----------------------------------
        for (Use &U : Inst->operands()) {
            Value *Operand = U.get();
            if (Visited.find(Operand) == Visited.end()) {
                Visited.insert(Operand);
                Worklist.push(Operand);
            }
        }
    }
}
// ==================================================================
// THE HUNTER's acceptance test.
//
// Path 1 (always on): the sanitizer intrinsics -- llvm.ubsantrap /
// llvm.trap. Byte-identical to the original Hunter.
//
// Path 2 (opt-in via oracle-pass<traps=a,b,...>): native-check
// languages. Rust lowers bounds/overflow checks to calls of
// core::panicking::* symbols; Julia to (i)jl_bounds_error*. A call
// qualifies iff its callee name contains one of the substrings AND
// the call provably DIVERGES: noreturn on the call site or callee,
// or the next instruction is `unreachable`.
//
// Why the divergence gate matters: Stage 3's kill folds the anchor
// BRANCH, which is justified purely by the UNSAT proof about the
// edge -- but classification must never sweep in a fallible,
// returning call (a logging helper whose name happens to match),
// because everything downstream (trap census, elimination stats,
// ANF reasoning) assumes "trap == divergence point".
// ==================================================================
static bool isTrapCall(CallInst *CI,
                       const std::vector<std::string> &TrapCallees) {
    Function *Callee = CI->getCalledFunction();
    if (!Callee) return false;
    StringRef N = Callee->getName();
    if (N.contains("ubsantrap") || N == "llvm.trap")
        return true;
    for (const std::string &S : TrapCallees) {
        if (!N.contains(S)) continue;
        // Divergence gate: attribute on call site or callee...
        if (CI->doesNotReturn() || Callee->doesNotReturn())
            return true;
        // ...or structurally: the call is immediately followed by
        // `unreachable` (the exact shape rustc/julia emit).
        Instruction *Next = CI->getNextNode();
        if (Next && isa<UnreachableInst>(Next))
            return true;
    }
    return false;
}
void discoverTraps(Function &F, DominatorTree &DT, LoopInfo &LI,
                   std::vector<TrapJob> &Jobs,
                   const std::vector<std::string> &TrapCallees) {
    for (BasicBlock &BB : F) {
        // 1. The Hunter: Find the ubsantrap / trap-callee call
        CallInst *TrapCall = nullptr;
        for (Instruction &Inst : BB) {
            if (auto *CI = dyn_cast<CallInst>(&Inst)) {
                if (isTrapCall(CI, TrapCallees)) {
                    TrapCall = CI;
                    break;
                }
            }
        }
        if (!TrapCall) continue;
        // ==============================================================
        // 2. The Anchor (v2: MULTI-PREDECESSOR). Frontends merge trap
        // blocks (Swift) and multiversion loops around one shared error
        // block (Julia preloop/postloop), so a trap block routinely has
        // N incoming edges. The disjunction never needs to be reasoned
        // about: the trap fires via edge k iff control reaches pred k
        // AND takes the trap-side edge, so each edge is an INDEPENDENT
        // proof obligation -- one TrapJob per qualifying edge, each with
        // exactly the single-pred job shape. An UNSAT on edge k folds
        // pred k's branch regardless of the other edges (PARTIAL
        // elimination of a shared trap block is sound and profitable:
        // it removes one side exit from one loop version).
        //
        // Per-edge gates:
        //   * pred must end in a CONDITIONAL branch (uncond/switch/
        //     invoke preds skipped -- reaching the trap from them needs
        //     the pred's own reachability condition; out of scope, as
        //     in v1);
        //   * exactly ONE successor may be the trap block (both-succs
        //     branches are decorative: the trap is reached irrespective
        //     of the condition, so an edge proof would fold a branch
        //     without unreaching the trap -- skip);
        //   * each pred visited once (predecessors() lists a pred per
        //     edge).
        //
        // PHI NOTE: multi-pred trap blocks may contain PHIs (e.g. lcssa
        // values feeding the error call). Safe: we never encode the
        // trap block's contents -- only TrapCond, defined in the pred.
        //
        // BYTE-IDENTITY: a single-pred block yields exactly the v1 job
        // (same order, same log lines); multi-pred blocks -- previously
        // skipped silently -- only ADD jobs. Discovery order = block
        // order x predecessor order, deterministic for fixed IR, so
        // Job.Index keeps its role as the determinism key. Stage 3's
        // Folded set already refuses the pathological second fold if
        // both successors of one branch ever prove dead.
        // ==============================================================
        SmallPtrSet<BasicBlock *, 8> SeenPred;
        for (BasicBlock *PredBB : predecessors(&BB)) {
            if (!SeenPred.insert(PredBB).second) continue;
            auto *Br = dyn_cast<BranchInst>(PredBB->getTerminator());
            if (!Br || !Br->isConditional()) continue;
            if (Br->getSuccessor(0) == &BB && Br->getSuccessor(1) == &BB)
                continue;   // decorative: trap reached on both edges
            Jobs.emplace_back();
            TrapJob &Job = Jobs.back();
            Job.Index = Jobs.size() - 1;   // global, module-wide discovery index
            Job.F = &F;
            Job.TrapCall = TrapCall;
            Job.TrapBB = &BB;
            Job.PredBB = PredBB;
            Job.Br = Br;
            Job.TrapCond = Br->getCondition();
            Job.TrapOnTrue = (Br->getSuccessor(0) == &BB);
            raw_string_ostream Log(Job.LogText);
            if (DILocation *Loc = TrapCall->getDebugLoc()) {
                Log << "  -> Trap source: " << Loc->getFilename().str()
                    << ":" << Loc->getLine() << "\n";
            }
            Log << "  -> Found UB Trap. Starting Backward Slice...\n";
            // 3. The Slicer (the Solver half now lives in TrapSolver)
            collectGuardsAndSlice(Job, DT, LI, Log);
        }
    }
}
} // namespace odessy
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/TrapDiscovery.h
## Stage-1 interface. Hunter accepts llvm.ubsantrap/llvm.trap plus traps= named callees behind a divergence gate.
════════════════════════════════════════════════════════════════════
```
#pragma once
// =====================================================================
// TrapDiscovery -- Stage 1 (serial, main thread).
//
// Scans a function for anchored `llvm.ubsantrap` sites and appends one
// fully-described TrapJob per site to the module-wide job list:
// trap anchoring, PHASE 0 dominating context guards, PHASE 0.5
// dominating llvm.assume facts, PHASE 1 backward slice (all logic moved
// verbatim from the old OraclePass::tryEliminateTrap front half).
//
// TRAP CALLEES (oracle-pass<traps=a,b,...>): native-check languages
// (Rust, Julia) lower their checks to calls of NAMED panic/error
// symbols, not llvm.ubsantrap. TrapCallees is a list of callee-name
// substrings that the Hunter additionally accepts -- but ONLY when the
// call provably diverges (noreturn attribute on the call or callee, or
// the very next instruction is `unreachable`). Empty list (default)
// keeps the Hunter byte-identical to the intrinsic-only behavior.
//
// Strictly READ-ONLY over the IR. Runs before any worker thread exists,
// so it may freely use lazily-mutating DT queries (BasicBlockEdge
// dominance) and Value printing.
//
// Discovery order == basic-block order == the old serial pass's order;
// Job.Index is the global determinism key for Stage 2's FactGate and
// Stage 3's kill/log ordering.
// =====================================================================
#include "TrapJob.h"
#include <string>
#include <vector>
namespace llvm {
class DominatorTree;
class Function;
class LoopInfo;
} // namespace llvm
namespace odessy {
void discoverTraps(llvm::Function &F, llvm::DominatorTree &DT,
                   llvm::LoopInfo &LI, std::vector<TrapJob> &Jobs,
                   const std::vector<std::string> &TrapCallees);
} // namespace odessy
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/TrapJob.h
## The seam between pipeline stages: one fully-described trap site; thread-safety by construction (happens-before), Job.Index = global determinism key.
════════════════════════════════════════════════════════════════════
```
#pragma once
// =====================================================================
// TrapJob.h -- the seam between the Level-2 pipeline stages.
//
// A TrapJob is one trap site, fully described by serial discovery
// (Stage 1, main thread), solved by exactly one worker (Stage 2), and
// applied by the main thread (Stage 3). Nothing in here is shared
// mutable state: discovery writes it before the pool starts, one worker
// owns it while the pool runs, the main thread reads it after join.
// Thread-safety is by construction (happens-before via thread create /
// join), not by locks.
//
// FunctionCtx is the per-function analysis bundle. DT and LI are
// immutable during Stage 2 and safe for concurrent read-only queries
// (DT's lazy DFS numbers are forced on the main thread in Stage 1 --
// see OraclePass.cpp). LVI and SE are lazily-caching analyses: workers
// may only touch them while holding the FactGate ticket (Scheduler.h),
// which serializes those queries in discovery order.
// =====================================================================
#include <cstddef>
#include <set>
#include <string>
#include <utility>
#include <vector>

namespace llvm {
class BasicBlock;
class BranchInst;
class CallInst;
class DominatorTree;
class Function;
class LazyValueInfo;
class LoopInfo;
class ScalarEvolution;
class Value;
} // namespace llvm

namespace odessy {

struct TrapJob {
    // --- filled by Stage 1 (TrapDiscovery, serial) ---
    std::size_t Index = 0;               // global discovery order: THE determinism key
    llvm::Function *F = nullptr;
    llvm::CallInst *TrapCall = nullptr;
    llvm::BasicBlock *TrapBB = nullptr;
    llvm::BasicBlock *PredBB = nullptr;  // single predecessor ending in cond branch
    llvm::BranchInst *Br = nullptr;      // the anchor branch (mutated ONLY in Stage 3)
    llvm::Value *TrapCond = nullptr;
    bool TrapOnTrue = false;
    bool SliceOK = true;                 // false => keep the trap, never query
    std::vector<std::pair<llvm::Value *, bool>> Guards;  // (condition, polarity)
    std::set<llvm::Value *> Visited;     // backward-slice closure (encode filter)

    // --- filled by Stage 2 (TrapSolver, one worker) ---
    bool Eliminate = false;              // UNSAT (and vacuity-clean, if audited)
    bool Queried = false;                // check() actually ran
    double LatencyMs = 0.0;              // solver latency (incl. vacuity ctx query)
    double WorkerMs = 0.0;               // encode+facts+solve wall clock (stats only)

    // --- log text, appended stage by stage, emitted in Index order ---
    // Stage 1 writes discovery lines, the worker appends verdict lines,
    // Stage 3 appends the SUCCESS line. Assembling buffers in Index
    // order makes the log file byte-identical for any THREADS value.
    std::string LogText;
};

struct FunctionCtx {
    llvm::Function *F = nullptr;
    llvm::DominatorTree *DT = nullptr;
    llvm::LoopInfo *LI = nullptr;
    llvm::LazyValueInfo *LVI = nullptr;   // heavy tier only, else null
    llvm::ScalarEvolution *SE = nullptr;  // heavy tier only, else null
    std::vector<std::size_t> JobIndices;  // this function's jobs, discovery order
    double DiscoveryMs = 0.0;             // Stage-1 wall clock for this function
};

} // namespace odessy
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/TrapSolver.cpp
## Worker: RPO encode phase, heavy-tier fact phase (under the FactGate ticket), solve phase with tracked assertions, unsat cores, and the vacuity audit (context-alone re-check; contradictory context => refuse elimination).
════════════════════════════════════════════════════════════════════
```
#include "TrapSolver.h"
#include "FactEncoder.h"

#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"

#include <string>

using namespace llvm;

namespace odessy {

TrapSolver::TrapSolver(const SolverConfig &Cfg, const FunctionCtx &FC,
                       TrapJob &Job)
    : Cfg(Cfg), FC(FC), Job(Job), Encoder(Cfg.QueryTimeoutMs),
      Log(Job.LogText) {
    if (Cfg.VacuityCheck)
        Encoder.enableUnsatCores();
    if (Cfg.LoadEq)
        Encoder.enableLoadEquivalence();
}

bool TrapSolver::encodePhase() {
    try {
        // PHASE 2: FORWARD ENCODE (Reverse Post-Order so defs are encoded
        // before uses in the acyclic CFG -- prevents branch conditions
        // from silently becoming free variables.)
        // RPOT construction and encodeInstruction only READ the IR and
        // query DT/LI (both concurrency-safe here); all writes go to the
        // job-private Z3 context.
        ReversePostOrderTraversal<Function*> RPOT(Job.F);
        for (BasicBlock *BB : RPOT) {
            for (Instruction &Inst : *BB) {
                if (Job.Visited.find(&Inst) != Job.Visited.end()) {
                    if (!Encoder.encodeInstruction(&Inst, FC.DT, FC.LI)) {
                        Log << "    -> [Abort] Unsupported Instruction: "
                            << Inst.getOpcodeName() << "\n";
                        return false;
                    }
                }
            }
        }
        // LDEQ visibility: only ever printed when the knob is on, so
        // default-mode logs stay byte-identical to the pre-LDEQ pass.
        if (Cfg.LoadEq && Encoder.getNumLoadEquivs() > 0) {
            Log << "    -> [ldeq] " << Encoder.getNumLoadEquivs()
                << " redundant load(s) unified with their originals\n";
        }
        return true;
    } catch (const z3::exception &e) {
        Log << "    -> [Skip] Z3 exception: " << e.msg() << "\n";
        return false;
    } catch (const std::exception &e) {
        Log << "    -> [Skip] C++ exception: " << e.what() << "\n";
        return false;
    } catch (...) {
        Log << "    -> [Skip] unknown exception during encode\n";
        return false;
    }
}

bool TrapSolver::factPhase() {
    if (!Cfg.HeavyMode)
        return true;
    try {
        // PHASE 2.5 (HEAVY TIER ONLY): BOUNDARY ANALYSIS FACTS
        // Free variables = over-approximation boundaries. Assert what
        // LLVM already knows about each (!range / KnownBits / LVI /
        // SCEV). Context-side (pre-push): the vacuity audit is the
        // alarm for a bad fact import, and RM:/KB:/LVI: labels make
        // unsat cores attribute proofs to their fact source.
        //
        // CONCURRENCY: the caller holds this job's FactGate ticket, so
        // all LVI/SE queries in the whole module happen one job at a
        // time, in discovery order -- thread-safe (those analyses
        // memoize on query) AND deterministic (cache evolution is
        // identical to the THREADS=1 run).
        FactEncoder Facts(Encoder, FC.LVI, FC.SE, FC.LI, *FC.DT,
                          Job.F->getParent()->getDataLayout(),
                          Cfg.VacuityCheck, Log);
        unsigned NFacts = Facts.encodeBoundaryFacts(Job.PredBB);
        Log << "    -> [heavy] " << NFacts << " analysis fact(s) on "
            << Encoder.getFreeVariables().size() << " boundary value(s)\n";
        return true;
    } catch (const z3::exception &e) {
        Log << "    -> [Skip] Z3 exception: " << e.msg() << "\n";
        return false;
    } catch (const std::exception &e) {
        Log << "    -> [Skip] C++ exception: " << e.what() << "\n";
        return false;
    } catch (...) {
        Log << "    -> [Skip] unknown exception during fact import\n";
        return false;
    }
}

void TrapSolver::solvePhase() {
    try {
        // PHASE 3: ASSERT CONTEXT + TRAP CONDITION
        for (unsigned i = 0; i < Job.Guards.size(); ++i) {
            if (Cfg.VacuityCheck)
                Encoder.assertConditionTracked(Job.Guards[i].first,
                                               Job.Guards[i].second,
                                               "G" + std::to_string(i));
            else
                Encoder.assertCondition(Job.Guards[i].first,
                                        Job.Guards[i].second);
        }
        Encoder.push();                                // context | trap boundary

        if (Cfg.VacuityCheck)
            Encoder.assertConditionTracked(Job.TrapCond, Job.TrapOnTrue, "TRAP");
        else
            Encoder.assertCondition(Job.TrapCond, Job.TrapOnTrue);

        auto [ResultString, QueryLatency] = Encoder.checkSatisfiability();
        Job.Queried = true;
        Job.LatencyMs = QueryLatency;
        Log << "    -> " << ResultString << "\n";
        bool IsUnsat = (ResultString.find("UNSAT") != std::string::npos);
        if (IsUnsat && Cfg.VacuityCheck) {
            Log << "    -> Unsat core: " << Encoder.getUnsatCore() << "\n";

            // VACUITY AUDIT: an UNSAT only means "trap dead" if the guards
            // ALONE are satisfiable. A contradictory context makes every
            // query vacuously UNSAT (encoding bug or unreachable code).
            Encoder.pop();                             // drop trap condition only
            auto [CtxResult, CtxLatency] = Encoder.checkSatisfiability();
            Job.LatencyMs += CtxLatency;
            if (CtxResult.find("UNSAT") != std::string::npos) {
                Log << "    -> [VACUOUS] guards alone are contradictory -- refusing to eliminate. Investigate!\n";
                return;                                // Eliminate stays false
            }
            Log << "    -> [vacuity-ok] context alone is satisfiable\n";
        }
        Job.Eliminate = IsUnsat;

    } catch (const z3::exception &e) {
        // Sort mismatch or any other Z3 throw: degrade to "can't prove it,
        // keep the trap" instead of std::terminate'ing the whole opt process.
        Log << "    -> [Skip] Z3 exception: " << e.msg() << "\n";
        Job.Eliminate = false;
    } catch (const std::exception &e) {
        Log << "    -> [Skip] C++ exception: " << e.what() << "\n";
        Job.Eliminate = false;
    } catch (...) {
        Log << "    -> [Skip] unknown exception during solve\n";
        Job.Eliminate = false;
    }
}

} // namespace odessy
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/TrapSolver.h
## Per-trap worker interface + SolverConfig (tier, timeout, ldeq).
════════════════════════════════════════════════════════════════════
```
#pragma once
// =====================================================================
// TrapSolver -- Stage 2 (parallel): one TrapSolver per TrapJob, owned
// by exactly ONE worker thread. Owns the job-private Z3Encoder (and
// therefore the job-private z3::context -- Z3 contexts are not
// thread-safe, but disjoint contexts on disjoint threads are).
//
// What a worker may touch:
//   * the IR                -- READ-ONLY (nothing mutates until Stage 3)
//   * FC.DT / FC.LI         -- concurrent read-only queries (DT's DFS
//                              numbers were forced on the main thread)
//   * FC.LVI / FC.SE        -- ONLY inside factPhase(), and the caller
//                              must hold this job's FactGate ticket
//
// The three phases mirror the old tryEliminateTrap back half exactly:
//   encodePhase = PHASE 2   (RPO forward encode of the slice)
//   factPhase   = PHASE 2.5 (heavy tier boundary facts)
//   solvePhase  = PHASE 3   (guards + push + trap cond + check
//                            + vacuity audit)
// so assertion order -- and hence solver behavior -- is unchanged.
//
// Every phase fences ALL exceptions internally (a throw escaping a
// worker thread would std::terminate opt): any failure degrades to
// "keep the trap", the pass's universal failure posture.
// =====================================================================
#include "TrapJob.h"
#include "Z3Encoder.h"

#include "llvm/Support/raw_ostream.h"

namespace odessy {

struct SolverConfig {
    bool VacuityCheck = false;
    bool HeavyMode = false;
    // LDEQ: same-BB no-clobber load unification in the encoder
    // (oracle-pass<ldeq>). Off by default: the light tier must stay
    // byte-identical, and LDEQ-on/off doubles as its own ablation.
    bool LoadEq = false;
    unsigned QueryTimeoutMs = 10000;
};

class TrapSolver {
public:
    TrapSolver(const SolverConfig &Cfg, const FunctionCtx &FC, TrapJob &Job);

    // PHASE 2. False => aborted (unsupported instruction / exception):
    // keep the trap, skip the query.
    bool encodePhase();

    // PHASE 2.5, heavy tier only (no-op in light). REQUIRES the
    // caller to hold this job's FactGate ticket. False => aborted.
    bool factPhase();

    // PHASE 3. Fills Job.Eliminate / Job.Queried / Job.LatencyMs.
    void solvePhase();

private:
    const SolverConfig &Cfg;
    const FunctionCtx &FC;
    TrapJob &Job;
    Z3Encoder Encoder;
    llvm::raw_string_ostream Log;   // appends to Job.LogText
};

} // namespace odessy
```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/Z3Encoder.cpp
## The encoder: instructions, i1 Bool/BV sort coercion, edge conditions, block reachability, overflow-intrinsic family, shifts; APInt->BV via decimal string (i128-safe).
════════════════════════════════════════════════════════════════════
```
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
}```

════════════════════════════════════════════════════════════════════
## FILE: OraclePass/Z3Encoder.h
## IR->Z3 translator state: memoized CFG reachability (hash-consed, O(E)), LDEQ same-BB load unification, FreeVars boundary list, public fact-plumbing bridges (assertRange/assertKnownBits/valueAsBV/apintToBV/assertRawFact).
════════════════════════════════════════════════════════════════════
```
#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/ConstantRange.h"
#include "llvm/Support/KnownBits.h"
#include <z3++.h>
#include <unordered_map>
#include <map>
#include <string>
#include <utility>
#include <set>
#include <vector>
#include <tuple>

extern bool DebugOracle;

class Z3Encoder {
    z3::context Ctx;
    z3::solver Solver;
    std::unordered_map<llvm::Value*, z3::expr> ValueMap;

    // --- MEMOIZED CFG ENCODING (replaces exponential path enumeration) ---
    // ReachCache[(Root, BB)] = ONE Z3 formula meaning "control reaches BB
    // starting from Root". Because z3::expr terms are hash-consed DAGs,
    // shared path prefixes are physically stored exactly once, so the
    // formula stays O(E) in size even when the number of syntactic paths
    // is exponential. Keyed on (Root, BB) so Phis sharing an IDom region
    // reuse each other's work within the same trap query.
    std::map<std::tuple<llvm::BasicBlock*, llvm::BasicBlock*, llvm::BasicBlock*>, z3::expr> ReachCache;

    // Recursion-stack marker used to detect and skip back edges (this
    // reproduces the old simple-path / acyclic semantics without ever
    // re-visiting a block).
    std::set<llvm::BasicBlock*> InProgress;

    // --- LOAD-EQUALITY (LDEQ) -- opt-in via oracle-pass<ldeq> ---
    // Two loads of the SAME pointer SSA value, in the SAME basic block,
    // with NO possibly-memory-writing instruction between them, must
    // observe the same memory and therefore the same value -- this is
    // GVN/CSE's own theorem applied at encoding time instead of
    // transform time. When it fires, the later load maps to the SAME
    // Z3 expression as the earlier one (one boundary variable instead
    // of two), which is exactly what symbolic-bound proofs need when
    // the optimizer failed to CSE a reloaded array length.
    // Scope fence (v1): same-BB only. Cross-block equivalence needs a
    // path-clobber argument (MemorySSA) -- deferred, documented in
    // HANDOFF. OFF by default so the light tier stays byte-identical.
    bool LoadEqEnabled = false;
    unsigned NumLoadEquivs = 0;
    std::map<llvm::Value*, std::vector<llvm::LoadInst*>> LoadsByPtr;
    // Every Value that became a FREE variable, in creation order. These
    // are exactly the over-approximation boundaries of the current query
    // -- the set the HEAVY tier walks to assert analysis facts (§9).
    std::vector<llvm::Value*> FreeVars;

public:
    explicit Z3Encoder(unsigned TimeoutMs = 10000);
    z3::expr getOrCreateZ3Expr(llvm::Value *Val);
    bool encodeInstruction(llvm::Instruction *Inst, llvm::DominatorTree *DT = nullptr, llvm::LoopInfo *LI = nullptr);
    void assertCondition(llvm::Value *Cond, bool IsTrue);
    std::pair<std::string, double> checkSatisfiability();

    void push();
    void pop();

    void enableUnsatCores();
    void assertConditionTracked(llvm::Value *Cond, bool IsTrue, const std::string &Label);
    std::string getUnsatCore();
    // --- HEAVY-tier fact plumbing (mechanism only; policy = FactEncoder) ---
    // The boundary set: every Value that was given a free variable.
    const std::vector<llvm::Value*> &getFreeVariables() const { return FreeVars; }
    // Assert V ∈ CR via the four extreme bounds (uge/ule/sge/sle) -- sound
    // for wrapped ranges too, where the bounds are simply weaker (§9).
    // Empty Label => plain assert; nonempty => tracked (audit cores).
    // Returns false when the range carries no usable information.
    bool assertRange(llvm::Value *V, const llvm::ConstantRange &CR,
                     const std::string &Label = "");
    // Assert V's known-bit masks: (V & Zero)==0 and (V & One)==One.
    // Returns false when nothing is known (or masks conflict).
    bool assertKnownBits(llvm::Value *V, const llvm::KnownBits &KB,
                         const std::string &Label = "");
    // --- LDEQ knob + stats (see field comment above) ---
    void enableLoadEquivalence() { LoadEqEnabled = true; }
    unsigned getNumLoadEquivs() const { return NumLoadEquivs; }
    // --- SCEV-SYM mechanism hooks (policy lives in FactEncoder) ---
    // Public bridges so FactEncoder can BUILD facts about SSA values and
    // constants in THIS encoder's context, then assert them tracked.
    // valueAsBV totalizes exactly like the private asBV path.
    z3::expr valueAsBV(llvm::Value *V, unsigned W) {
        return asBV(getOrCreateZ3Expr(V), W);
    }
    z3::expr apintToBV(const llvm::APInt &A) { return bvConst(A); }
    // Assert an arbitrary already-built fact expression. Label empty =>
    // plain assert; nonempty => tracked (eligible for unsat cores).
    void assertRawFact(const z3::expr &F, const std::string &Label) {
        addFact(F, Label);
    }

private:
    // Encodes the branch/switch constraint attached to a single CFG edge
    // Pred -> Succ (br cond / !cond, switch == case, switch default, or a
    // fresh free boolean for alien terminators like invoke/indirectbr).
    z3::expr getEdgeCond(llvm::BasicBlock *Pred, llvm::BasicBlock *Succ);

    // Memoized reachability condition from Root down to BB, never walking
    // through PhiBB (the "boundary wall"). O(V+E) total across a region.
    z3::expr getBlockReachCond(llvm::BasicBlock *BB, llvm::BasicBlock *Root,
                               llvm::BasicBlock *PhiBB, llvm::DominatorTree *DT);

    // LDEQ search: returns an earlier load provably observing the same
    // memory as L (same pointer SSA value, same type, same BB, no
    // may-write instruction between), else nullptr. Records L in
    // LoadsByPtr either way. No-op (nullptr) unless LoadEqEnabled.
    llvm::LoadInst *findEquivalentLoad(llvm::LoadInst *L);

    // APInt -> BV constant of identical width (i128-safe via decimal
    // string; NEVER casts through unsigned -- the constant-truncation
    // invariant from §4 applies to fact constants too).
    z3::expr bvConst(const llvm::APInt &A);
    void addFact(const z3::expr &Fact, const std::string &Label);
    // --- i1 sort-coercion helpers ---
    
    // i1 lives a double life: icmp results / bool constants are Z3 Bools,
    // but trunc-to-i1 and BV math produce 1-bit BVs. These make every
    // Bool<->BV bridge total instead of throwing z3::exception.
    z3::expr asBool(z3::expr e);
    z3::expr asBV(z3::expr e, unsigned w);
};```

════════════════════════════════════════════════════════════════════
## FILE: benchmark_commands.sh
## Scratch: assorted benchmark invocations (historical).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# SMT Oracle Evaluation -- v3: SIGNED/UNSIGNED SPLIT + honest accounting
#
# Run matrix: BENCHES x SPECS x OPT_LEVELS
#   BENCHES : space-separated benchmark keys.
#             Default excludes zstd for fast development (156k-line IR,
#             3000+ traps, hits the O(traps x function_size) quadratic).
#             Restore it with:
#               BENCHES="zstd zlib openssl polybench" bash benchmark_commands.sh
#             (and consider TIMEOUT_SECS=1800 for zstd O1)
#   SPECS   : which sanitizer spec(s) to compile+analyze. Default runs
#             "signed" and "unsigned" SEPARATELY, because they mean
#             different things:
#               signed   : overflow is UB (C11 6.5p5). UNSAT = provably-dead
#                          check we can delete; a reachable trap = real bug.
#                          This is where the elimination wins live.
#               unsigned : wraparound is DEFINED behavior (mod 2^N) and often
#                          intentional (hashing, CRC/Adler, crypto). All-SAT
#                          here is frequently a spec-mismatch finding, not a
#                          precision failure.
#             SPECS="both" reproduces the old combined run.
#
# v3 changes vs v2:
#   * SPEC dimension as above; `spec` column added to the CSV; .ll stems and
#     log names now include the spec (e.g. deflate_integer_signed_O1).
#   * CSV CORRUPTION FIXED: `grep -c` prints "0" AND exits with status 1 when
#     nothing matches, so `$(grep -c ... || echo 0)` yielded "0\n0" -- an
#     embedded newline that shredded the row. We now test file existence
#     separately and trust grep -c's printed count.
#   * New `skips` column: traps the pass skipped via its z3::exception
#     containment ([Skip] lines). Should be 0; nonzero = leftover sort bug
#     (now non-fatal, but worth chasing).
#
# WHAT "before"/"after" MEAN (unchanged from v2):
#   before = # llvm.ubsantrap calls in the sanitized baseline .ll
#   after  = # llvm.ubsantrap calls in the Oracle-optimized .ll
#   unsat/sat/skips come from the pass's own per-trap verdict log.
#   Crashes/timeouts are marked, never silently counted as eliminations.
#
# No `set -e`: one benchmark failing must not abort the rest.
# =============================================================================
PL_ROOT="$HOME/michigan/pl"
ORACLE_ROOT="$PL_ROOT/smt-compiler-oracle"
ZSTD_SRC="$PL_ROOT/zstd"
ZLIB_SRC="$PL_ROOT/zlib"
OPENSSL_SRC="$PL_ROOT/openssl"
POLYBENCH_SRC="$PL_ROOT/polybench"
OPT_LEVELS=(O1 O3)
# Per-run safety net: kill an opt run that hangs. 124 == timed out.
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
# --- Run-matrix knobs ---------------------------------------------------------
read -r -a BENCH_KEYS <<< "${BENCHES:-zlib openssl polybench}"
read -r -a SPECS_ARR  <<< "${SPECS:-signed unsigned}"
# --- Aggressive inlining knob -------------------------------------------------
INLINE_AGGRESSIVE=${INLINE_AGGRESSIVE:-1}
INLINE_FLAGS=()
if [ "$INLINE_AGGRESSIVE" = "1" ]; then
  INLINE_FLAGS=(-finline-functions
    -mllvm -inline-threshold=100000
    -mllvm -inlinehint-threshold=100000
    -mllvm -inlinecold-threshold=100000)
fi
# --- Sanitizer flags: now a function of the spec ------------------------------
# Sets the global SAN_FLAGS array used by every compile_* helper.
set_san_flags() {
  case "$1" in
    signed)
      SAN_FLAGS=(-S -emit-llvm
        -fsanitize=signed-integer-overflow
        -fsanitize-trap=signed-integer-overflow) ;;
    unsigned)
      SAN_FLAGS=(-S -emit-llvm
        -fsanitize=unsigned-integer-overflow
        -fsanitize-trap=unsigned-integer-overflow) ;;
    both)
      SAN_FLAGS=(-S -emit-llvm
        -fsanitize=signed-integer-overflow,unsigned-integer-overflow
        -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow) ;;
    *)
      echo "[FATAL] unknown spec '$1' (want: signed | unsigned | both)"; exit 1 ;;
  esac
}
mkdir -p "$ORACLE_ROOT/evaluation/zstd" \
         "$ORACLE_ROOT/evaluation/zlib" \
         "$ORACLE_ROOT/evaluation/openssl" \
         "$ORACLE_ROOT/evaluation/polybench" \
         "$ORACLE_ROOT/logs/compilations" \
         "$ORACLE_ROOT/logs/opt_runs"
CSV="$ORACLE_ROOT/evaluation/trap_metadata.csv"
# timeout wrapper (fall back to plain exec if coreutils timeout is absent)
if command -v timeout >/dev/null 2>&1; then
  run_opt() { timeout "${TIMEOUT_SECS}s" "$@"; }
else
  run_opt() { "$@"; }
fi
# =============================================================================
# STEP 0: sanity -- tools present, then rebuild the pass
# =============================================================================
for tool in clang opt llvm-link; do
  command -v "$tool" >/dev/null 2>&1 || { echo "[FATAL] '$tool' not on PATH"; exit 1; }
done
( cd "$ORACLE_ROOT/build" && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }
cd "$ORACLE_ROOT"
# One-time openssl configure (generates configuration.h; slow, so guarded).
if [ ! -f "$OPENSSL_SRC/include/openssl/configuration.h" ]; then
  echo "  (running one-time ./Configure no-asm ...)"
  ( cd "$OPENSSL_SRC" && ./Configure no-asm )
fi
# =============================================================================
# Per-benchmark compile helpers. Each takes: <opt-level> <output.ll>
# (SAN_FLAGS is set per-spec by the caller before invoking these.)
# =============================================================================
compile_zstd() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DZSTD_DISABLE_ASM \
    -I"$ZSTD_SRC/lib" -I"$ZSTD_SRC/lib/common" \
    "$ZSTD_SRC/lib/compress/zstd_compress.c" -o "$2"
}
compile_zlib() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -I"$ZLIB_SRC" \
    "$ZLIB_SRC/deflate.c" -o "$2"
}
compile_openssl() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" \
    -I"$OPENSSL_SRC/include" -I"$OPENSSL_SRC" \
    -I"$OPENSSL_SRC/crypto" -I"$OPENSSL_SRC/providers/common/include" \
    "$OPENSSL_SRC/crypto/sha/sha256.c" -o "$2"
}
compile_polybench() {
  # jacobi-2d.c + the polybench.c harness are TWO translation units:
  # compile each separately, then llvm-link into one module.
  local opt="$1" out="$2" t
  t="$(mktemp -d)"
  clang "-$opt" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DMINI_DATASET \
    -I"$POLYBENCH_SRC/utilities" -I"$POLYBENCH_SRC/stencils/jacobi-2d" \
    "$POLYBENCH_SRC/stencils/jacobi-2d/jacobi-2d.c" -o "$t/kernel.ll" \
    || { rm -rf "$t"; return 1; }
  clang "-$opt" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DMINI_DATASET \
    -I"$POLYBENCH_SRC/utilities" \
    "$POLYBENCH_SRC/utilities/polybench.c" -o "$t/harness.ll" \
    || { rm -rf "$t"; return 1; }
  llvm-link -S "$t/kernel.ll" "$t/harness.ll" -o "$out"
  local rc=$?; rm -rf "$t"; return $rc
}
# Benchmark registry (all benchmarks stay registered; BENCHES selects a subset)
declare -A BENCH_SUBDIR=( [zstd]=zstd [zlib]=zlib [openssl]=openssl [polybench]=polybench )
declare -A BENCH_STEM=(   [zstd]=zstd_integer [zlib]=deflate_integer \
                          [openssl]=sha256_integer [polybench]=jacobi2d_integer )
declare -A BENCH_FN=(     [zstd]=compile_zstd [zlib]=compile_zlib \
                          [openssl]=compile_openssl [polybench]=compile_polybench )
for key in "${BENCH_KEYS[@]}"; do
  if [ -z "${BENCH_FN[$key]}" ]; then
    echo "[FATAL] unknown benchmark key '$key' in BENCHES"; exit 1
  fi
done
# =============================================================================
# STEP 1: Compile every (benchmark x spec x opt-level) to sanitized LLVM IR
# =============================================================================
echo ""
echo "==== compiling baselines (specs: ${SPECS_ARR[*]} | opts: ${OPT_LEVELS[*]} | aggressive-inline=$INLINE_AGGRESSIVE) ===="
declare -A COMPILE_OK
for key in "${BENCH_KEYS[@]}"; do
  for spec in "${SPECS_ARR[@]}"; do
    set_san_flags "$spec"
    for opt in "${OPT_LEVELS[@]}"; do
      stem="${BENCH_STEM[$key]}_${spec}_${opt}"      # SAME key Step 2 reads
      out="evaluation/${BENCH_SUBDIR[$key]}/${stem}.ll"
      printf '  -> %-10s %-8s @ -%s ... ' "$key" "$spec" "$opt"
      if "${BENCH_FN[$key]}" "$opt" "$out" && [ -s "$out" ]; then
        COMPILE_OK["$stem"]=1
        echo "ok"
      else
        COMPILE_OK["$stem"]=0
        echo "COMPILE FAILED"
      fi
    done
  done
done
# =============================================================================
# STEP 2 + 3: run the Oracle honestly and build the CSV.
#
# Two opt invocations per (benchmark x spec x opt-level):
#   (A) analysis-only  : oracle-pass, -disable-output  -> per-trap SAT/UNSAT
#                        verdicts in the pass log; isolates encoder problems
#                        from the cleanup pipeline.
#   (B) transform      : oracle-pass,simplifycfg,adce,verify -> the .ll whose
#                        ubsantrap count gives the honest `after`.
# =============================================================================
echo ""
echo "==== running oracle + building CSV ===="
echo "benchmark,spec,opt_level,ubsantrap_before,overflow_intrinsics,unsat,sat,skips,ubsantrap_after,traps_eliminated,status" > "$CSV"
printf '%-12s %-8s %-4s %8s %8s %6s %6s %6s %8s %8s  %s\n' \
  benchmark spec opt before intr unsat sat skips after elim status
CRASHED=()
for key in "${BENCH_KEYS[@]}"; do
  for spec in "${SPECS_ARR[@]}"; do
    for opt in "${OPT_LEVELS[@]}"; do
      stem="${BENCH_STEM[$key]}_${spec}_${opt}"
      in="evaluation/${BENCH_SUBDIR[$key]}/${stem}.ll"
      out="evaluation/${BENCH_SUBDIR[$key]}/${stem}_oracle.ll"
      alog="logs/opt_runs/${stem}.analysis.log"
      xlog="logs/opt_runs/${stem}.transform.log"
      passlog="logs/compilations/${stem}.txt"
      if [ "${COMPILE_OK[$stem]}" != "1" ]; then
        echo "$key,$spec,$opt,NA,NA,NA,NA,NA,NA,NA,COMPILE_FAILED" >> "$CSV"
        printf '%-12s %-8s %-4s %8s %8s %6s %6s %6s %8s %8s  %s\n' \
          "$key" "$spec" "$opt" NA NA NA NA NA NA NA COMPILE_FAILED
        continue
      fi
      before=$(grep -c 'llvm.ubsantrap' "$in")
      intr=$(grep -c '.with.overflow' "$in")
      # (A) analysis-only: populates the pass verdict log
      run_opt opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
          -disable-output "$in" > "$alog" 2>&1
      rc_a=$?
      # Preserve this run's verdict log before the transform run overwrites it.
      [ -f "$passlog" ] && cp "$passlog" "logs/compilations/${stem}_analysis.txt"
      vlog="logs/compilations/${stem}_analysis.txt"
      # NOTE: grep -c PRINTS the count even when it exits nonzero (no match),
      # so we must NOT `|| echo 0` here -- that's the bug that produced the
      # "0\n0" corrupted CSV fields in v2.
      if [ -f "$vlog" ]; then
        unsat=$(grep -c 'UNSAT' "$vlog")
        sat=$(grep -c 'SAT (WARNING' "$vlog")
        skips=$(grep -c '\[Skip\]' "$vlog")
      else
        unsat=0; sat=0; skips=0
      fi
      # (B) transform: delete stale output first so a crash can't leave a stale file
      rm -f "$out"
      run_opt opt -load-pass-plugin=build/OraclePass.so \
          -passes="oracle-pass,simplifycfg,adce,verify" \
          -S "$in" -o "$out" > "$xlog" 2>&1
      rc_x=$?
      if [ "$rc_x" -eq 0 ] && [ -s "$out" ]; then
        after=$(grep -c 'llvm.ubsantrap' "$out")
        elim=$(( before - after ))
        status="OK"
      else
        after="NA"; elim="NA"
        if [ "$rc_x" -eq 124 ]; then status="XFORM_TIMEOUT"
        elif [ "$rc_x" -eq 0 ]; then status="XFORM_NO_OUTPUT"
        else status="XFORM_CRASH(rc=$rc_x)"; fi
        CRASHED+=("$stem [transform: see $xlog]")
      fi
      if [ "$rc_a" -ne 0 ]; then
        [ "$rc_a" -eq 124 ] && astat="ANALYSIS_TIMEOUT" || astat="ANALYSIS_CRASH(rc=$rc_a)"
        status="${astat};${status}"
        CRASHED+=("$stem [analysis: see $alog]")
      fi
      echo "$key,$spec,$opt,$before,$intr,$unsat,$sat,$skips,$after,$elim,$status" >> "$CSV"
      printf '%-12s %-8s %-4s %8s %8s %6s %6s %6s %8s %8s  %s\n' \
        "$key" "$spec" "$opt" "$before" "$intr" "$unsat" "$sat" "$skips" "$after" "$elim" "$status"
    done
  done
done
echo ""
echo "CSV written to: $CSV"
if [ ${#CRASHED[@]} -gt 0 ]; then
  echo ""
  echo "==== !! opt failed on the following -- these are NOT eliminations ===="
  for c in "${CRASHED[@]}"; do echo "  - $c"; done
  echo "Tip: the analysis-only log isolates whether the ENCODER itself fails"
  echo "     (vs the simplifycfg/adce cleanup). Grep it for the last verdict."
fi
echo ""
echo "Per-trap verdicts: logs/compilations/<stem>_analysis.txt"
echo "  UNSAT (proved dead): grep -c UNSAT logs/compilations/deflate_integer_signed_O1_analysis.txt"
echo "  SAT   (kept):        grep -c 'SAT (WARNING' logs/compilations/deflate_integer_signed_O1_analysis.txt"
echo "  Skips (z3 throws):   grep -c '\[Skip\]' logs/compilations/deflate_integer_signed_O1_analysis.txt"```

════════════════════════════════════════════════════════════════════
## FILE: clone_missing_benchmarks.sh
## Clones benchmark repos beside the ODeSSy checkout.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# SMT Oracle Evaluation -- MULTI-OPT-LEVEL edition (v2, honest accounting)
#
# For each benchmark, compile the SAME source twice (-O1 sanity, -O3 target),
# both with integer-overflow trap sanitizers, then run the Oracle and record
# HONEST before/after trap counts.
#
# WHAT "before"/"after" MEAN:
#   before = # of llvm.ubsantrap calls in the sanitized baseline .ll
#   after  = # of llvm.ubsantrap calls in the Oracle-optimized .ll
#   traps_eliminated = before - after, BUT ONLY if the transform actually
#                      succeeded. If `opt` crashes / times out / writes no
#                      output, the row is marked CRASH and after/eliminated
#                      are NA -- never silently counted as "all eliminated".
#
# Independent of the transform, we also record from the pass's own verdict log:
#   unsat = # traps the solver PROVED dead (UNSAT)   <- the real success metric
#   sat   = # traps kept (SAT / not provably safe)
#
# AGGRESSIVE INLINING (INLINE_AGGRESSIVE=1, default on):
#   The Oracle is an INTRAprocedural pass -- it can only assert guards that sit
#   in the SAME function as the trap. When a guard like `if (len > MAX) return;`
#   lives in the caller and the trap in a small callee, a function-local pass
#   can't see the guard => it must return SAT. Forcing the inliner to pull
#   callees into their callers puts guard + trap in one function, which is
#   exactly the context the solver needs to reach UNSAT. So we crank the
#   inline thresholds at BOTH -O1 and -O3. (Turn off with INLINE_AGGRESSIVE=0.)
#
# No `set -e`: one benchmark failing must not abort the rest.
# =============================================================================

PL_ROOT="$HOME/michigan/pl"
ORACLE_ROOT="$PL_ROOT/smt-compiler-oracle"

ZSTD_SRC="$PL_ROOT/zstd"
ZLIB_SRC="$PL_ROOT/zlib"
OPENSSL_SRC="$PL_ROOT/openssl"
POLYBENCH_SRC="$PL_ROOT/polybench"

OPT_LEVELS=(O1 O3)

# Per-query safety net: kill an opt run that hangs (aggressive inlining can
# make functions huge and Z3 slow). 124 == timed out.
TIMEOUT_SECS=${TIMEOUT_SECS:-600}

# --- Aggressive inlining knob -------------------------------------------------
INLINE_AGGRESSIVE=${INLINE_AGGRESSIVE:-1}
INLINE_FLAGS=()
if [ "$INLINE_AGGRESSIVE" = "1" ]; then
  INLINE_FLAGS=(-finline-functions
    -mllvm -inline-threshold=100000
    -mllvm -inlinehint-threshold=100000
    -mllvm -inlinecold-threshold=100000)
fi

# Sanitizer flags common to every compile (opt level prepended per-run).
SAN_FLAGS=(-S -emit-llvm
  -fsanitize=signed-integer-overflow,unsigned-integer-overflow
  -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow)

mkdir -p "$ORACLE_ROOT/evaluation/zstd" \
         "$ORACLE_ROOT/evaluation/zlib" \
         "$ORACLE_ROOT/evaluation/openssl" \
         "$ORACLE_ROOT/evaluation/polybench" \
         "$ORACLE_ROOT/logs/compilations" \
         "$ORACLE_ROOT/logs/opt_runs"

CSV="$ORACLE_ROOT/evaluation/trap_metadata.csv"

# timeout wrapper (fall back to plain exec if coreutils timeout is absent)
if command -v timeout >/dev/null 2>&1; then
  run_opt() { timeout "${TIMEOUT_SECS}s" "$@"; }
else
  run_opt() { "$@"; }
fi

# =============================================================================
# STEP 0: sanity -- tools present, then rebuild the pass
# =============================================================================
for tool in clang opt llvm-link; do
  command -v "$tool" >/dev/null 2>&1 || { echo "[FATAL] '$tool' not on PATH"; exit 1; }
done

( cd "$ORACLE_ROOT/build" && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }
cd "$ORACLE_ROOT"

# One-time openssl configure (generates configuration.h; slow, so guarded).
if [ ! -f "$OPENSSL_SRC/include/openssl/configuration.h" ]; then
  echo "  (running one-time ./Configure no-asm ...)"
  ( cd "$OPENSSL_SRC" && ./Configure no-asm )
fi

# =============================================================================
# Per-benchmark compile helpers. Each takes: <opt-level> <output.ll>
# Returns non-zero on failure so the caller can mark the row.
# =============================================================================
compile_zstd() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DZSTD_DISABLE_ASM \
    -I"$ZSTD_SRC/lib" -I"$ZSTD_SRC/lib/common" \
    "$ZSTD_SRC/lib/compress/zstd_compress.c" -o "$2"
}
compile_zlib() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -I"$ZLIB_SRC" \
    "$ZLIB_SRC/deflate.c" -o "$2"
}
compile_openssl() {
  clang "-$1" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" \
    -I"$OPENSSL_SRC/include" -I"$OPENSSL_SRC" \
    -I"$OPENSSL_SRC/crypto" -I"$OPENSSL_SRC/providers/common/include" \
    "$OPENSSL_SRC/crypto/sha/sha256.c" -o "$2"
}
compile_polybench() {
  # jacobi-2d.c + the polybench.c harness are TWO translation units. clang
  # cannot emit two .ll files under a single -o (that was the earlier error),
  # so compile each separately, then llvm-link into one module.
  local opt="$1" out="$2" t
  t="$(mktemp -d)"
  clang "-$opt" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DMINI_DATASET \
    -I"$POLYBENCH_SRC/utilities" -I"$POLYBENCH_SRC/stencils/jacobi-2d" \
    "$POLYBENCH_SRC/stencils/jacobi-2d/jacobi-2d.c" -o "$t/kernel.ll" \
    || { rm -rf "$t"; return 1; }
  clang "-$opt" "${SAN_FLAGS[@]}" "${INLINE_FLAGS[@]}" -DMINI_DATASET \
    -I"$POLYBENCH_SRC/utilities" \
    "$POLYBENCH_SRC/utilities/polybench.c" -o "$t/harness.ll" \
    || { rm -rf "$t"; return 1; }
  llvm-link -S "$t/kernel.ll" "$t/harness.ll" -o "$out"
  local rc=$?; rm -rf "$t"; return $rc
}

# Benchmark registry
BENCH_KEYS=(zstd zlib openssl polybench)
declare -A BENCH_SUBDIR=( [zstd]=zstd [zlib]=zlib [openssl]=openssl [polybench]=polybench )
declare -A BENCH_STEM=(   [zstd]=zstd_integer [zlib]=deflate_integer \
                          [openssl]=sha256_integer [polybench]=jacobi2d_integer )
declare -A BENCH_FN=(     [zstd]=compile_zstd [zlib]=compile_zlib \
                          [openssl]=compile_openssl [polybench]=compile_polybench )

# =============================================================================
# STEP 1: Compile every (benchmark x opt-level) to sanitized LLVM IR
# =============================================================================
echo ""
echo "==== compiling baselines (O1 + O3, aggressive-inline=$INLINE_AGGRESSIVE) ===="
declare -A COMPILE_OK
for key in "${BENCH_KEYS[@]}"; do
  for opt in "${OPT_LEVELS[@]}"; do
    out="evaluation/${BENCH_SUBDIR[$key]}/${BENCH_STEM[$key]}_${opt}.ll"
    printf '  -> %-10s @ -%s ... ' "$key" "$opt"
    if "${BENCH_FN[$key]}" "$opt" "$out" && [ -s "$out" ]; then
      COMPILE_OK["${key}_${opt}"]=1
      echo "ok"
    else
      COMPILE_OK["${key}_${opt}"]=0
      echo "COMPILE FAILED"
    fi
  done
done

# =============================================================================
# STEP 2 + 3: run the Oracle honestly and build the CSV.
#
# Two opt invocations per (benchmark x opt-level):
#   (A) analysis-only  : oracle-pass, -disable-output  -> per-trap SAT/UNSAT
#                        verdicts land in the pass log; isolates encoder crashes
#                        from the cleanup pipeline.
#   (B) transform      : oracle-pass,simplifycfg,adce,verify -> the .ll whose
#                        ubsantrap count gives the honest `after`.
# =============================================================================
echo ""
echo "==== running oracle + building CSV ===="
echo "benchmark,opt_level,ubsantrap_before,overflow_intrinsics,unsat,sat,ubsantrap_after,traps_eliminated,status" > "$CSV"

printf '%-12s %-4s %8s %8s %6s %6s %8s %8s  %s\n' \
  benchmark opt before intr unsat sat after elim status

CRASHED=()
for key in "${BENCH_KEYS[@]}"; do
  for opt in "${OPT_LEVELS[@]}"; do
    stem="${BENCH_STEM[$key]}_${opt}"
    in="evaluation/${BENCH_SUBDIR[$key]}/${stem}.ll"
    out="evaluation/${BENCH_SUBDIR[$key]}/${stem}_oracle.ll"
    alog="logs/opt_runs/${stem}.analysis.log"
    xlog="logs/opt_runs/${stem}.transform.log"
    passlog="logs/compilations/${stem}.txt"

    if [ "${COMPILE_OK[$stem]}" != "1" ]; then
      echo "$key,$opt,NA,NA,NA,NA,NA,NA,COMPILE_FAILED" >> "$CSV"
      printf '%-12s %-4s %8s %8s %6s %6s %8s %8s  %s\n' \
        "$key" "$opt" NA NA NA NA NA NA COMPILE_FAILED
      continue
    fi

    before=$(grep -c 'llvm.ubsantrap' "$in")
    intr=$(grep -c '.with.overflow' "$in")

    # (A) analysis-only: populates the pass verdict log; catches encoder crashes
    run_opt opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
        -disable-output "$in" > "$alog" 2>&1
    rc_a=$?
    # Preserve this run's verdict log before the transform run overwrites it.
    [ -f "$passlog" ] && cp "$passlog" "logs/compilations/${stem}_analysis.txt"
    vlog="logs/compilations/${stem}_analysis.txt"
    unsat=$( [ -f "$vlog" ] && grep -c 'UNSAT' "$vlog" || echo 0 )
    sat=$(   [ -f "$vlog" ] && grep -c 'SAT (WARNING' "$vlog" || echo 0 )

    # (B) transform: delete stale output first so a crash can't leave a stale file
    rm -f "$out"
    run_opt opt -load-pass-plugin=build/OraclePass.so \
        -passes="oracle-pass,simplifycfg,adce,verify" \
        -S "$in" -o "$out" > "$xlog" 2>&1
    rc_x=$?

    if [ "$rc_x" -eq 0 ] && [ -s "$out" ]; then
      after=$(grep -c 'llvm.ubsantrap' "$out")
      elim=$(( before - after ))
      status="OK"
    else
      after="NA"; elim="NA"
      if [ "$rc_x" -eq 124 ]; then status="XFORM_TIMEOUT"; else status="XFORM_CRASH(rc=$rc_x)"; fi
      CRASHED+=("$stem [transform: see $xlog]")
    fi
    if [ "$rc_a" -ne 0 ]; then
      [ "$rc_a" -eq 124 ] && astat="ANALYSIS_TIMEOUT" || astat="ANALYSIS_CRASH(rc=$rc_a)"
      status="${astat};${status}"
      CRASHED+=("$stem [analysis: see $alog]")
    fi

    echo "$key,$opt,$before,$intr,$unsat,$sat,$after,$elim,$status" >> "$CSV"
    printf '%-12s %-4s %8s %8s %6s %6s %8s %8s  %s\n' \
      "$key" "$opt" "$before" "$intr" "$unsat" "$sat" "$after" "$elim" "$status"
  done
done

echo ""
echo "CSV written to: $CSV"
if [ ${#CRASHED[@]} -gt 0 ]; then
  echo ""
  echo "==== !! opt failed on the following -- these are NOT eliminations ===="
  for c in "${CRASHED[@]}"; do echo "  - $c"; done
  echo "Tip: the analysis-only log isolates whether the ENCODER itself aborts"
  echo "     (vs the simplifycfg/adce cleanup). Grep it for the last verdict."
fi
echo ""
echo "Per-trap verdicts: logs/compilations/<stem>_analysis.txt"
echo "  UNSAT (proved dead): grep -c UNSAT logs/compilations/zstd_integer_O1_analysis.txt"
echo "  SAT   (kept):        grep -c 'SAT (WARNING' logs/compilations/zstd_integer_O1_analysis.txt"```

════════════════════════════════════════════════════════════════════
## FILE: evaluation/lz4/generate_baseline.sh
## (no description recorded)
════════════════════════════════════════════════════════════════════
```
clang -O3 -fsanitize=bounds -fsanitize-trap=bounds -S -emit-llvm ../../../lz4/lib/lz4.c -o lz4_bounds_O3.ll
```

════════════════════════════════════════════════════════════════════
## FILE: evaluation/lz4/generate_integer_baseline.sh
## (no description recorded)
════════════════════════════════════════════════════════════════════
```
$CC -O3 -fsanitize=integer -fsanitize-trap=all -S -emit-llvm ../lz4/lib/lz4.c -o evaluation/lz4/lz4_integer_O3.ll
```

════════════════════════════════════════════════════════════════════
## FILE: evaluation/polybench/generate_polybench_baseline.sh
## (no description recorded)
════════════════════════════════════════════════════════════════════
```
$CC -O3 -fsanitize=integer,bounds -fsanitize-trap=all -I ../polybench/utilities -S -emit-llvm ../polybench/stencils/jacobi-2d/jacobi-2d.c -o evaluation/polybench/jacobi2d_traps_O3.ll
```

════════════════════════════════════════════════════════════════════
## FILE: evaluation/zlib/generate_bounds_baseline.sh
## (no description recorded)
════════════════════════════════════════════════════════════════════
```
$CC -O3 -fsanitize=bounds -fsanitize-trap=all -I ../zlib -S -emit-llvm ../zlib/deflate.c -o evaluation/zlib/deflate_bounds_O3.ll
```

════════════════════════════════════════════════════════════════════
## FILE: evaluation/zlib/generate_integer_baseline.sh
## (no description recorded)
════════════════════════════════════════════════════════════════════
```
$CC -O3 -fsanitize=integer -fsanitize-trap=all -I ../zlib -S -emit-llvm ../zlib/deflate.c -o evaluation/zlib/deflate_integer_O3.ll
```

════════════════════════════════════════════════════════════════════
## FILE: evaluation/zstd/generate_bounds_baseline.sh
## (no description recorded)
════════════════════════════════════════════════════════════════════
```
$CC -O3 -fsanitize=bounds -fsanitize-trap=all -I ../zstd/lib -I ../zstd/lib/common -S -emit-llvm ../zstd/lib/compress/zstd_compress.c -o evaluation/zstd/zstd_bounds_O3.ll
```

════════════════════════════════════════════════════════════════════
## FILE: evaluation/zstd/generate_integer_baseline.sh
## (no description recorded)
════════════════════════════════════════════════════════════════════
```
$CC -O3 -fsanitize=integer -fsanitize-trap=all -I ../zstd/lib -I ../zstd/lib/common -S -emit-llvm ../zstd/lib/compress/zstd_compress.c -o evaluation/zstd/zstd_integer_O3.ll
```

════════════════════════════════════════════════════════════════════
## FILE: gather_stats.py
## Log aggregation helper.
════════════════════════════════════════════════════════════════════
```
import os
import glob

def analyze_ir(filepath):
    if not os.path.exists(filepath):
        return None
        
    stats = {
        'instructions': 0,
        'blocks': 0,
        'divisions': 0,
        'branches': 0
    }
    
    with open(filepath, 'r') as f:
        in_function = False
        for line in f:
            line = line.strip()
            
            # Start/stop tracking inside the actual function body
            if line.startswith('define '):
                in_function = True
                continue
            if line == '}':
                in_function = False
                continue
                
            if not in_function:
                continue
                
            # Ignore full-line comments and metadata inside the function
            if line.startswith(';') or line.startswith('!'):
                continue
                
            # Strip inline comments to correctly identify Basic Blocks
            code_part = line.split(';')[0].strip()
            
            # Count Basic Blocks (e.g., "14:" or "entry:")
            if code_part.endswith(':'):
                stats['blocks'] += 1
                continue
                
            # If it's not a block label, metadata, or empty line, it's an instruction
            if code_part:
                stats['instructions'] += 1
                
                # Track specific expensive/dangerous operations
                if ' sdiv ' in code_part or ' udiv ' in code_part or ' fdiv ' in code_part or '@logf' in code_part:
                    stats['divisions'] += 1
                if ' br ' in code_part:
                    stats['branches'] += 1
                    
    return stats

def main():
    print(f"{'Benchmark':<12} | {'LLVM -O3 IR Size':<18} | {'Optimized IR Size':<18} | {'Divisions Trap Removed?'}")
    print("-" * 75)
    
    # Iterate through folders 1 to 10
    for i in range(1, 11):
        folder = f"benchmarks/{i}"
        if not os.path.exists(folder):
            continue
            
        standard_ll = f"{folder}/{i}.ll"
        ideal_ll = f"{folder}/{i}_idealized.ll"
        
        std_stats = analyze_ir(standard_ll)
        ideal_stats = analyze_ir(ideal_ll)
        
        if not std_stats or not ideal_stats:
            continue
            
        std_size = f"{std_stats['instructions']} inst ({std_stats['blocks']} BBs)"
        ideal_size = f"{ideal_stats['instructions']} inst ({ideal_stats['blocks']} BBs)"
        
        # Check if our idealized version successfully eliminated the trapped division
        trap_removed = "Yes" if std_stats['divisions'] > ideal_stats['divisions'] else "No/NA"
        
        print(f"Benchmark {i:<2} | {std_size:<18} | {ideal_size:<18} | {trap_removed}")

if __name__ == "__main__":
    main()```

════════════════════════════════════════════════════════════════════
## FILE: julia_triage.sh
## Julia triage via code_llvm module dumps; shape probe prints first bounds sites; traps=bounds_error:boundserror (':' because opt eats commas).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# julia_triage.sh -- the Julia x ODeSSy static triage (third sibling of
# swift_triage.sh / rust_triage.sh; same four gate questions).
#
#   1. VERSION SKEW : does Julia's code_llvm module dump parse under our
#                     pinned trunk opt? (Julia 1.x carries LLVM 16-18 --
#                     watch for addrspace/GC-frame constructs.)
#   2. TRAP SHAPE   : how many (i)jl_bounds_error* call sites, and how
#                     many does the Anchor accept? The SHAPE PROBE below
#                     prints the first sites verbatim -- confirm
#                     call+unreachable (rustc's invoke lesson).
#   3. FIRST VERDICTS: UNSAT / SAT / vacuous / skips under
#                     oracle-pass<vacuity;heavy;ldeq;traps=bounds_error>.
#   4. LDEQ RELEVANCE: reloaded arraylen unification hits.
#
# Usage : bash julia_triage.sh [kernel.jl ...]   (default: lz77 + matmul)
# Needs : julia + pinned opt on PATH; run from repo root (build/ present).
# Output: logs/julia_triage/<stem>.{ll,log} + a per-kernel summary table.
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
OUT="$ROOT/logs/julia_triage"
mkdir -p "$OUT"
KERNELS=("$@")
[ ${#KERNELS[@]} -gt 0 ] || KERNELS=("$NB/lz77.jl" "$NB/matmul.jl")

# Heavy is the standard tier for native-language static runs.
# Two symbol spellings, both covered: (i)jl_bounds_error* (runtime
# calls, older Julia) and j_throw_boundserror_NNN (Julia 1.12+ outlines
# each failure into a module-local thunk). Substring match + the
# divergence gate (TrapDiscovery.cpp) handles both.
PASSES="${PASSES:-oracle-pass<vacuity;heavy;ldeq;threads=8;traps=bounds_error:boundserror>}"

command -v julia >/dev/null || { echo "[FATAL] julia not on PATH"; exit 1; }
command -v opt   >/dev/null || { echo "[FATAL] opt not on PATH"; exit 1; }
echo "julia: $(julia --version)"
echo "opt  : $(opt --version | head -1)"
echo "pass : $PASSES"
echo ""

# --- SHAPE PROBE (gate 2a, once, first kernel): print the first bounds
# sites verbatim so a lowering surprise (invoke, non-single-pred, a
# different symbol family) is SEEN before any verdict is trusted.
probe_done=0

printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
  kernel traps anchored pct unsat sat vacuous skips ldeq status

for SRC in "${KERNELS[@]}"; do
  stem=$(basename "$SRC" .jl)
  ll="$OUT/$stem.ll"
  log="$OUT/$stem.log"

  # --- gate 1: emit + parse ---
  julia "$NB/julia_dump.jl" "$SRC" "$ll" 2>"$OUT/$stem.julia.err" || {
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "JULIA_FAIL (see $OUT/$stem.julia.err)"
    continue
  }
  if ! opt -passes=verify -disable-output "$ll" 2>"$OUT/$stem.parse.err"; then
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "PARSE_FAIL@pinned-opt (version skew; see $OUT/$stem.parse.err)"
    continue
  fi

  # --- gate 2: bounds-error census (count invoke too: a nonzero census
  # with anchored=0 must read as "shape mismatch", never "no checks") ---
  traps=$(grep -cE '(call|invoke)[^;]*@[^(]*bounds_?error' "$ll")

  if [ "$probe_done" -eq 0 ] && [ "$traps" -gt 0 ]; then
    echo "---- shape probe ($stem): first bounds sites ----"
    grep -B1 -A2 -E '(call|invoke)[^;]*@[^(]*bounds_?error' "$ll" | head -16
    echo "---- (expect: call + unreachable; if you see 'invoke', STOP) ----"
    echo ""
    probe_done=1
  fi

  # --- gate 3: verdicts ---
  opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
      -passes="$PASSES" \
      -disable-output "$ll" > "$log" 2>&1
  rc=$?
  anchored=$(grep -oE '[0-9]+ trap site\(s\)' "$log" | grep -oE '^[0-9]+' | head -1)
  anchored=${anchored:-0}
  unsat=$(grep -c 'UNSAT' "$log");  sat=$(grep -c 'SAT (WARNING' "$log")
  vac=$(grep -c '\[VACUOUS\]' "$log"); skips=$(grep -c '\[Skip\]' "$log")
  ldeq=$(grep -oE '\[ldeq\] [0-9]+' "$log" | awk '{s+=$2} END{print s+0}')
  pct="-"; [ "$traps" -gt 0 ] && pct=$(awk -v a="$anchored" -v t="$traps" 'BEGIN{printf "%.0f%%", a/t*100}')
  st="ok"; [ $rc -ne 0 ] && st="OPT_RC=$rc"

  printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
    "$stem" "$traps" "$anchored" "$pct" "$unsat" "$sat" "$vac" "$skips" "$ldeq" "$st"
done
echo ""
echo "Per-trap logs: $OUT/<kernel>.log   IR: $OUT/<kernel>.ll"
echo "Read: anchored/traps = Anchor coverage; vacuous MUST be 0;"
echo "      audit any UNSAT via its core before celebrating."
```

════════════════════════════════════════════════════════════════════
## FILE: make_matrix_report.py
## Matrix report: median-primary + outlier audit + union columns (all-sanitizers, ANF).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env python3
"""
make_matrix_report.py -- render evaluation/matrix.csv as the three matrices:
  1. min-based slowdown vs none  (primary opportunity ceiling)
  2. avg-based slowdown vs none  (sanity; big min/avg divergence = dirty run)
  3. traps injected              (static density; 'ir' exact / 'ud2' proxy)
Cells: build_failed -> 'x', sanitizer fired at runtime -> 'DIED', run
timeout -> 'TMO'. Wide-format report written to evaluation/matrix_report.csv.
Usage: python3 make_matrix_report.py [in.csv] [out.csv]
"""
import csv, re, statistics, sys
from pathlib import Path

IN = Path(sys.argv[1] if len(sys.argv) > 1 else "evaluation/matrix.csv")
OUT = Path(sys.argv[2] if len(sys.argv) > 2 else "evaluation/matrix_report.csv")

SPEC_ORDER = ["signed", "unsigned", "both", "divide", "shift", "bounds",
              "implicit", "checked", "overflow",
              "all-sanitizers", "all-non-firing"]
rows = list(csv.DictReader(open(IN, newline="")))
# last row wins (reruns append; the freshest measurement is authoritative)
cell = {(r["bench"], r["spec"]): r for r in rows}
benches = list(dict.fromkeys(r["bench"] for r in rows))
specs = [s for s in SPEC_ORDER if any((b, s) in cell for b in benches)]

def fmt(r, col, suffix="%", static=False):
    """static=True: the metric exists even when the binary DIED at runtime
    (trap counts are compile-time facts) -- only build_failed hides it."""
    if r is None:
        return "x"
    st = r["status"]
    if st == "build_failed":
        return "x"
    if not static:
        if st.startswith("died"):
            return "DIED"
        if st == "timeout":
            return "TMO"
    v = r.get(col, "")
    return f"{v}{suffix}" if v else "--"

def runs_of(r):
    if r is None:
        return []
    return [float(t) for t in re.split(r"[,;\s]+", r.get("runs_s", "") or "")
            if t and re.match(r"^[0-9.eE+-]+$", t)]

MED = {}   # (bench,spec) -> median of raw runs
for k, r in cell.items():
    v = runs_of(r)
    if v:
        MED[k] = statistics.median(v)

def med_slowdown(b, s):
    m, m0 = MED.get((b, s)), MED.get((b, "none"))
    if m is None or not m0:
        return None
    return (m - m0) / m0 * 100.0

def colw(s):
    return max(10, len(s) + 2)

def table_median():
    print("\n=== MATRIX 0: slowdown vs none, MEDIAN-based [PRIMARY] ===")
    print(f"{'bench':11}" + "".join(f"{s:>{colw(s)}}" for s in specs))
    for b in benches:
        line = f"{b:11}"
        for s in specs:
            r = cell.get((b, s))
            if r is None or r["status"] == "build_failed":
                c = "x"
            elif r["status"].startswith("died"):
                c = "DIED"
            elif r["status"] == "timeout":
                c = "TMO"
            else:
                d = med_slowdown(b, s)
                c = f"{d:+.1f}%" if d is not None else "--"
            line += f"{c:>{colw(s)}}"
        print(line)

def outlier_audit():
    """A min far below its own cluster is a transient, not a capability --
    the exact failure mode that manufactured OpenSSL's fake +5.4%."""
    hits = []
    for (b, s), r in cell.items():
        v = runs_of(r)
        if len(v) < 5:
            continue
        med = statistics.median(v)
        if med > 0 and (med - min(v)) / med > 0.02:
            hits.append((b, s, min(v), med))
    if hits:
        print("\n=== OUTLIER AUDIT: suspect fast minima (min <98% of median) ===")
        for b, s, mn, md in sorted(hits):
            print(f"  {b:11}{s:16} min={mn:.3f}  median={md:.3f}  "
                  f"({(md-mn)/md*100:.1f}% below) -- do NOT trust min here")

def table(title, col, suffix="%", static=False):
    print(f"\n=== {title} ===")
    print(f"{'bench':11}" + "".join(f"{s:>{colw(s)}}" for s in specs))
    for b in benches:
        line = f"{b:11}"
        for s in specs:
            line += f"{fmt(cell.get((b, s)), col, suffix, static):>{colw(s)}}"
        print(line)

table_median()
table("MATRIX 1: slowdown vs none, MIN-based [bound; see outlier audit]",
      "slowdown_vs_none_min_pct")
table("MATRIX 2: slowdown vs none, AVG-based [sanity]",
      "slowdown_vs_none_avg_pct")
table("MATRIX 3: traps injected (ir=exact, ud2=binary proxy; counted at "
      "build time, shown even for cells that DIED at runtime)",
      "traps_n", suffix="", static=True)
# annotate proxy benches
proxies = sorted({r["bench"] for r in rows if r.get("trap_method") == "ud2"})
if proxies:
    print(f"    (ud2 proxy counts: {', '.join(proxies)})")

# per-bench composition of the union columns
comps = [(b, s, cell[(b, s)].get("components", ""))
         for b in benches for s in ("all-sanitizers", "all-non-firing")
         if (b, s) in cell and cell[(b, s)].get("components")]
if comps:
    print("\n=== UNION COMPOSITIONS ===")
    for b, s, c in comps:
        print(f"  {b:11}{s:16}= {{{c}}}")

outlier_audit()

# target ranking: overhead * has-traps, MEDIAN-based
print("\n=== TARGET RANKING (median slowdown, cells with traps>0) ===")
targets = []
for (b, s), r in cell.items():
    if s == "none" or r["status"] != "ok":
        continue
    ov = med_slowdown(b, s)
    try:
        tr = int(r["traps_n"])
    except (ValueError, TypeError):
        continue
    if ov is not None and tr > 0:
        targets.append((ov, b, s, tr))
for ov, b, s, tr in sorted(targets, reverse=True)[:15]:
    print(f"  {b:11}{s:10} {ov:+6.1f}%   traps={tr}")

with open(OUT, "w", newline="") as fh:
    w = csv.writer(fh)
    w.writerow(["metric", "bench"] + specs)
    for b in benches:      # median rows (computed, not from CSV columns)
        w.writerow(["slowdown_median_pct", b] +
                   [(f"{med_slowdown(b, s):+.1f}" if med_slowdown(b, s) is not None
                     else "x") for s in specs])
    for metric, col, sfx in [
        ("slowdown_min_pct", "slowdown_vs_none_min_pct", ""),
        ("slowdown_avg_pct", "slowdown_vs_none_avg_pct", ""),
        ("traps_n", "traps_n", ""),
    ]:
        static = metric == "traps_n"
        for b in benches:
            w.writerow([metric, b] +
                       [fmt(cell.get((b, s)), col, sfx, static) for s in specs])
print(f"\nwrote {OUT}")
```

════════════════════════════════════════════════════════════════════
## FILE: make_perf_report.py
## Median-primary report over perf CSVs (recomputes any statistic from the raw runs_s column).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env python3
"""
make_perf_report.py -- turn evaluation/perf_zlib.csv (v3: multi-size,
shuffled, parallel oracle stage, avg-based) into a readable report CSV.
Adds per (spec, config, size_mb) row:
  * traps_eliminated_n / traps_eliminated_pct
  * binary size (file bytes + .text bytes) and delta vs base
  * runtime deltas vs base / base2x / unsanitized (avg-based),
    flagged like "2.3% speedup" / "1.9% slowdown"
  * compile-time overhead vs base, oracle per-trap cost (wall-clock-derived
    when the run used JOBS>1)
Statistics: MIN-based is the PRIMARY index (measurement doctrine: min is
the low-noise estimator of the true cost on a quiet machine -- noise only
ever ADDS time), AVG kept as the secondary/sanity column. The raw per-rep
run list (runs_s) is carried through, so other statistics can be
recomputed offline if needed.
Usage:  python3 make_perf_report.py [in.csv] [out.csv] [--specs both]
Defaults: evaluation/perf_zlib.csv -> evaluation/perf_zlib_report.csv
"""
import argparse
import csv
from pathlib import Path
ap = argparse.ArgumentParser(description=__doc__)
ap.add_argument("in_csv", nargs="?", default="evaluation/perf_zlib.csv")
ap.add_argument("out_csv", nargs="?", default=None)
ap.add_argument("--specs", default=None,
                help="comma-separated sanitizer specs to keep (e.g. 'both'); "
                     "'none' is always kept as the unsanitized reference")
args = ap.parse_args()
IN = Path(args.in_csv)
KEEP = ({s.strip() for s in args.specs.split(",") if s.strip()} | {"none"}) \
       if args.specs else None
if args.out_csv:
    OUT = Path(args.out_csv)
elif args.specs:
    OUT = Path("evaluation/perf_zlib_report_" +
               "_".join(sorted(KEEP - {"none"})) + ".csv")
else:
    OUT = Path("evaluation/perf_zlib_report.csv")
def f(x):
    try:
        return float(x)
    except (TypeError, ValueError):
        return None
import re
def min_run(r):
    """Min of the raw per-rep list (runs_s); fall back to avg_run_s."""
    if r is None:
        return None
    vals = [float(t) for t in re.split(r"[,;\s]+", r.get("runs_s", "") or "")
            if t and re.match(r"^[0-9.eE+-]+$", t)]
    return min(vals) if vals else f(r.get("avg_run_s"))
def pct(new, ref):
    """Signed % change vs ref. Positive = faster/smaller (improvement)."""
    if new is None or ref is None or ref == 0:
        return None
    return (ref - new) / ref * 100.0
def flag(p):
    if p is None:
        return ""
    if abs(p) < 0.05:
        return "no change"
    return f"{abs(p):.1f}% {'speedup' if p > 0 else 'slowdown'}"
def size_delta(new, ref):
    if new is None or ref is None or ref == 0:
        return ""
    d = new - ref
    return f"{d:+.0f} B ({d / ref * 100.0:+.2f}%)"
rows = list(csv.DictReader(open(IN, newline="")))
# by_key indexes ALL rows so base/base2x/none references resolve even when
# the emitted report is filtered to a subset of specs.
by_key = {(r["spec"], r["config"], r["size_mb"]): r for r in rows}
if KEEP is not None:
    rows = [r for r in rows if r["spec"] in KEEP]
out_fields = [
    "sanitizer_spec", "pipeline_config", "corpus_size_mb",
    "traps_before_pass_n", "traps_after_pipeline_n",
    "traps_eliminated_n", "traps_eliminated_pct",
    "binary_file_bytes", "binary_text_bytes",
    "binary_file_vs_base", "binary_text_vs_base",
    "binary_file_vs_base2x", "binary_text_vs_base2x",
    "frontend_clang_O3_s", "oracle_smt_pass_s", "oracle_avg_per_trap_ms",
    "extra_opt_O3_s", "backend_llc_link_s", "total_compile_s",
    "compile_overhead_vs_base_pct",
    "min_runtime_s", "avg_runtime_s",
    "runtime_vs_base_min", "runtime_vs_base2x_min", "runtime_vs_unsanitized_min",
    "runtime_vs_base_avg", "runtime_vs_base2x_avg", "runtime_vs_unsanitized_avg",
    "raw_runtimes_s",
]
with open(OUT, "w", newline="") as fh:
    w = csv.DictWriter(fh, fieldnames=out_fields)
    w.writeheader()
    for r in rows:
        spec, cfg, mb = r["spec"], r["config"], r["size_mb"]
        t_in, t_fin = f(r["traps_in"]), f(r["traps_final"])
        elim = (t_in - t_fin) if (t_in is not None and t_fin is not None) else None
        elim_pct = (elim / t_in * 100.0) if (elim is not None and t_in) else 0.0
        base = by_key.get((spec, "base", mb))
        b2x = by_key.get((spec, "base2x", mb))
        none_b = by_key.get(("none", "base", mb))
        avg = f(r["avg_run_s"])
        d_base_avg = pct(avg, f(base["avg_run_s"])) if base else None
        d_b2x_avg = pct(avg, f(b2x["avg_run_s"])) if b2x else None
        d_none_avg = pct(avg, f(none_b["avg_run_s"])) if none_b else None
        mn = min_run(r)
        d_base_min = pct(mn, min_run(base)) if base else None
        d_b2x_min = pct(mn, min_run(b2x)) if b2x else None
        d_none_min = pct(mn, min_run(none_b)) if none_b else None
        tc = f(r["total_compile_s"])
        tc_base = f(base["total_compile_s"]) if base else None
        c_over = ((tc - tc_base) / tc_base * 100.0) if (tc is not None and tc_base) else None
        o_s = f(r["oracle_s"])
        per_trap_ms = (o_s / t_in * 1000.0) if (o_s and t_in) else None
        w.writerow({
            "sanitizer_spec": spec,
            "pipeline_config": cfg,
            "corpus_size_mb": mb,
            "traps_before_pass_n": r["traps_in"],
            "traps_after_pipeline_n": r["traps_final"],
            "traps_eliminated_n": int(elim) if elim is not None else "",
            "traps_eliminated_pct": f"{elim_pct:.1f}%",
            "binary_file_bytes": r["bin_bytes"],
            "binary_text_bytes": r["text_bytes"],
            "binary_file_vs_base":
                size_delta(f(r["bin_bytes"]), f(base["bin_bytes"]) if base else None)
                if cfg != "base" else "(reference)",
            "binary_text_vs_base":
                size_delta(f(r["text_bytes"]), f(base["text_bytes"]) if base else None)
                if cfg != "base" else "(reference)",
            "binary_file_vs_base2x":
                size_delta(f(r["bin_bytes"]), f(b2x["bin_bytes"]) if b2x else None)
                if cfg == "oracle" else "",
            "binary_text_vs_base2x":
                size_delta(f(r["text_bytes"]), f(b2x["text_bytes"]) if b2x else None)
                if cfg == "oracle" else "",
            "frontend_clang_O3_s": r["clang_s"],
            "oracle_smt_pass_s": r["oracle_s"],
            "oracle_avg_per_trap_ms": f"{per_trap_ms:.1f}" if per_trap_ms else "",
            "extra_opt_O3_s": r["o3_s"],
            "backend_llc_link_s": r["backend_link_s"],
            "total_compile_s": r["total_compile_s"],
            "compile_overhead_vs_base_pct": f"{c_over:+.1f}%" if c_over is not None else "",
            "min_runtime_s": f"{mn:.3f}" if mn is not None else "",
            "avg_runtime_s": r["avg_run_s"],
            "runtime_vs_base_min": flag(d_base_min) if cfg != "base" else "(reference)",
            "runtime_vs_base2x_min": flag(d_b2x_min) if cfg == "oracle" else "",
            "runtime_vs_unsanitized_min": flag(d_none_min) if spec != "none" else "(reference)",
            "runtime_vs_base_avg": flag(d_base_avg) if cfg != "base" else "(reference)",
            "runtime_vs_base2x_avg": flag(d_b2x_avg) if cfg == "oracle" else "",
            "runtime_vs_unsanitized_avg": flag(d_none_avg) if spec != "none" else "(reference)",
            "raw_runtimes_s": r["runs_s"],
        })
print(f"wrote {OUT}")
SPEC_ORDER = [s for s in ("signed", "unsigned", "both", "anf")
              if KEEP is None or s in KEEP]

# Console summary: oracle vs base2x per spec, across sizes -- MIN-based
# primary, AVG-based sanity table below. Cold-path diagnostic: shrinking %
# across sizes = cold-path savings; flat % = warm-path effect.
sizes = sorted({r["size_mb"] for r in rows}, key=float)
def summary(stat_fn, label):
    print(f"\n{'spec':9} {'elim':>5} " +
          " ".join(f"{'@'+s+'MB':>12}" for s in sizes) +
          f"   (oracle vs base2x, {label})")
    for spec in SPEC_ORDER:
        o = {s: by_key.get((spec, "oracle", s)) for s in sizes}
        b = {s: by_key.get((spec, "base2x", s)) for s in sizes}
        if not any(o.values()):
            continue
        any_o = next(v for v in o.values() if v)
        elim = int(f(any_o["traps_in"]) - f(any_o["traps_final"]))
        cells = []
        for s in sizes:
            d = pct(stat_fn(o[s]), stat_fn(b[s])) if (o.get(s) and b.get(s)) else None
            cells.append(f"{d:+11.1f}%" if d is not None else f"{'--':>12}")
        print(f"{spec:9} {elim:5d} " + " ".join(cells))
    print(f"\n{'spec':9} " + " ".join(f"{'@'+s+'MB':>12}" for s in sizes) +
          f"   (sanitizer overhead vs none, {label})")
    for spec in SPEC_ORDER:
        cells = []
        for s in sizes:
            rr, nn = by_key.get((spec, "base", s)), by_key.get(("none", "base", s))
            d = pct(stat_fn(rr), stat_fn(nn)) if (rr and nn) else None
            cells.append(f"{-d:+11.1f}%" if d is not None else f"{'--':>12}")
        print(f"{spec:9} " + " ".join(cells))
summary(min_run, "MIN-based [primary]")
summary(lambda r: f(r["avg_run_s"]), "avg-based [sanity]")
print(f"\n{'spec':9} {'.text_vs_base2x':>20} {'file_vs_base2x':>20}   (oracle binary shrink)")
for spec in SPEC_ORDER:
    o = by_key.get((spec, "oracle", sizes[0]))
    b = by_key.get((spec, "base2x", sizes[0]))
    if o and b:
        print(f"{spec:9} {size_delta(f(o['text_bytes']), f(b['text_bytes'])):>20} "
              f"{size_delta(f(o['bin_bytes']), f(b['bin_bytes'])):>20}")```

════════════════════════════════════════════════════════════════════
## FILE: patch_zlib_perf_anf.py
## One-shot patcher that added the anf spec to run_zlib_perf.sh (historical).
════════════════════════════════════════════════════════════════════
```
# Run on the machine that has run_zlib_perf.sh (server or Mac):
#   python3 patch_zlib_perf_anf.py
src = open('run_zlib_perf.sh').read()
old_loop = 'for spec in none signed unsigned both; do'
new_loop = 'for spec in ${SPECS:-none signed unsigned both}; do'
assert old_loop in src, "spec loop not found -- paste the loop line to Claude"
src = src.replace(old_loop, new_loop)
old_case = '''    both)     SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow) ;;'''
new_case = old_case + '''
    # anf = zlib's all-non-firing union (robust matrix): everything that
    # can actually SHIP on zlib -- the deployable config ODeSSy attacks.
    anf)      SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds) ;;'''
assert old_case in src, "set_san both-case not found -- paste set_san to Claude"
src = src.replace(old_case, new_case)
open('run_zlib_perf.sh','w').write(src)
print("run_zlib_perf.sh: SPECS knob + anf spec added")
```

════════════════════════════════════════════════════════════════════
## FILE: plot_matrics.py
## Matrix visualization plots.
════════════════════════════════════════════════════════════════════
```
import re
import os
import matplotlib.pyplot as plt

def parse_logs(log_file):
    benchmarks = {}
    current_bench = None
    
    with open(log_file, 'r') as f:
        for line in f:
            bench_match = re.search(r'benchmarks/(\d+)/', line)
            if bench_match:
                current_bench = int(bench_match.group(1))
                benchmarks[current_bench] = {'queries': 0, 'total_time': 0.0, 'max_time': 0.0}
                continue
            
            if current_bench is None:
                continue
                
            query_match = re.search(r'\[Query Latency:\s*([\d\.]+)\s*ms\]', line)
            if query_match:
                latency = float(query_match.group(1))
                benchmarks[current_bench]['queries'] += 1
                if latency > benchmarks[current_bench]['max_time']:
                    benchmarks[current_bench]['max_time'] = latency
                    
            total_match = re.search(r'=> Total SMT Query Latency for Function:\s*([\d\.e\+\-]+)\s*ms', line)
            if total_match:
                benchmarks[current_bench]['total_time'] += float(total_match.group(1))

    return benchmarks

def plot_data(benchmarks):
    # Explicitly drop Benchmark 6 to keep the graphs clean
    if 6 in benchmarks:
        del benchmarks[6]

    sorted_benches = sorted(benchmarks.keys())
    b_labels = [f"B{b}" for b in sorted_benches]
    queries = [benchmarks[b]['queries'] for b in sorted_benches]
    total_times = [benchmarks[b]['total_time'] for b in sorted_benches]
    max_times = [benchmarks[b]['max_time'] for b in sorted_benches]

    # Ensure the logs directory exists just in case
    os.makedirs('logs', exist_ok=True)

    # --- PLOT 1: Number of Queries ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, queries, color='#4A90E2', edgecolor='black')
    plt.title('Number of SMT Queries per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Query Count', fontsize=12)
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('logs/smt_queries_count.png', bbox_inches='tight')
    plt.close()

    # --- PLOT 2: Total SMT Time (Symlog Scale) ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, total_times, color='#E94E77', edgecolor='black')
    plt.title('Total SMT Query Time per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Total Time (ms) - Log Scale', fontsize=12)
    plt.yscale('symlog', linthresh=1.0) 
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('logs/smt_total_time.png', bbox_inches='tight')
    plt.close()

    # --- PLOT 3: Max Individual Query Time (Symlog Scale) ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, max_times, color='#50E3C2', edgecolor='black')
    plt.title('Max Individual SMT Query Time per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Max Single Query Time (ms) - Log Scale', fontsize=12)
    plt.yscale('symlog', linthresh=1.0)
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('logs/smt_max_time.png', bbox_inches='tight')
    plt.close()

    print("✅ Success! Plots saved to the 'logs/' directory.")

if __name__ == "__main__":
    data = parse_logs("logs/bench_logs.txt")
    plot_data(data)```

════════════════════════════════════════════════════════════════════
## FILE: plot_smt_latencies.py
## SMT latency distributions by verdict class (SAT/UNSAT/UNKNOWN), log-x histograms + stats CSV.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env python3
"""
plot_smt_latencies.py -- SMT query latency distributions by verdict class.

Parses the pass's own per-trap verdict logs (every query line carries
"[Query Latency: X ms]"), classifies by verdict, and produces:
  * a stats table (count / mean / min / max / std / median) per class,
    printed and written to evaluation/smt_latency_stats.csv
  * one 2x2 figure: SAT, UNSAT, UNKNOWN histograms + all three overlaid,
    log-scaled latency axis (queries span ~1 ms .. timeout).
    Colors: SAT = red, UNSAT = blue, UNKNOWN/timeout = green.

Usage:
  python3 plot_smt_latencies.py logs/compilations/*_analysis.txt
  python3 plot_smt_latencies.py                 # default: that same glob
  python3 plot_smt_latencies.py --out myfig.png <logs...>
"""
import csv
import glob
import math
import re
import sys
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

# Verdict line: "-> UNSAT (...) [Query Latency: 12.34 ms]" etc.
LINE = re.compile(r"->\s+(UNSAT|SAT|UNKNOWN)[^\[]*\[Query Latency:\s*([0-9.]+)\s*ms\]")

CLASSES = ["SAT", "UNSAT", "UNKNOWN"]
COLOR = {"SAT": "#d62728", "UNSAT": "#1f77b4", "UNKNOWN": "#2ca02c"}  # red/blue/green
LABEL = {"SAT": "SAT (kept)", "UNSAT": "UNSAT (eliminated)",
         "UNKNOWN": "UNKNOWN / timeout (kept)"}

def stats(xs):
    n = len(xs)
    if n == 0:
        return dict(n=0, mean=None, min=None, max=None, std=None, median=None)
    mean = sum(xs) / n
    var = sum((x - mean) ** 2 for x in xs) / n
    s = sorted(xs)
    med = s[n // 2] if n % 2 else (s[n // 2 - 1] + s[n // 2]) / 2
    return dict(n=n, mean=mean, min=s[0], max=s[-1], std=math.sqrt(var), median=med)

def main():
    args = sys.argv[1:]
    out_png = "logs/smt_latencies.png"
    if "--out" in args:
        i = args.index("--out")
        out_png = args[i + 1]
        args = args[:i] + args[i + 2:]
    files = args or sorted(glob.glob("logs/compilations/*_analysis.txt"))
    if not files:
        sys.exit("no log files found (pass paths or run from the repo root)")

    data = {c: [] for c in CLASSES}
    for path in files:
        for line in open(path, errors="replace"):
            m = LINE.search(line)
            if m:
                data[m.group(1)].append(float(m.group(2)))

    total = sum(len(v) for v in data.values())
    if total == 0:
        sys.exit("no '[Query Latency: ...]' lines found in the given logs")

    # ---- stats table + CSV ----
    out_csv = Path("evaluation/smt_latency_stats.csv")
    out_csv.parent.mkdir(exist_ok=True)
    hdr = ["class", "count", "share_pct", "mean_ms", "min_ms", "max_ms", "std_ms", "median_ms"]
    print(f"{'class':10} {'count':>7} {'share':>7} {'mean_ms':>10} {'min_ms':>9} "
          f"{'max_ms':>10} {'std_ms':>10} {'median_ms':>10}")
    with open(out_csv, "w", newline="") as fh:
        w = csv.writer(fh)
        w.writerow(hdr)
        for c in CLASSES + ["ALL"]:
            xs = data[c] if c != "ALL" else [x for v in data.values() for x in v]
            st = stats(xs)
            share = 100.0 * st["n"] / total
            row = [c, st["n"], f"{share:.1f}%"] + [
                f"{st[k]:.2f}" if st[k] is not None else "" for k in
                ("mean", "min", "max", "std", "median")]
            w.writerow(row)
            print(f"{c:10} {st['n']:>7} {share:>6.1f}% " + " ".join(
                f"{st[k]:>10.2f}" if st[k] is not None else f"{'-':>10}"
                for k in ("mean", "min", "max", "std", "median")))
    print(f"stats -> {out_csv}")

    # ---- figure: 2x2, shared log-x so panels are visually comparable ----
    all_vals = [x for v in data.values() for x in v]
    lo = max(min(all_vals) * 0.8, 0.05)
    hi = max(all_vals) * 1.25
    import numpy as np
    bins = np.logspace(math.log10(lo), math.log10(hi), 40)

    fig, axes = plt.subplots(2, 2, figsize=(11, 7.5), sharex=True)
    fig.suptitle(f"SMT query latency by verdict  ({total} queries, {len(files)} logs)",
                 fontsize=13, color="#222222")

    for ax, c in zip(axes.flat[:3], CLASSES):
        xs = data[c]
        ax.hist(xs, bins=bins, color=COLOR[c], edgecolor="white", linewidth=0.4)
        st = stats(xs)
        ax.set_title(f"{LABEL[c]}  (n={st['n']})", fontsize=10, color="#222222")
        if st["n"]:
            ax.axvline(st["median"], color="#555555", linestyle="--", linewidth=1)
            # Anchor the stat box away from the mass of the distribution.
            on_right = st["median"] < math.sqrt(lo * hi)
            ax.annotate(f"median {st['median']:.1f} ms\nmean {st['mean']:.1f} ms\n"
                        f"max {st['max']:.0f} ms",
                        xy=(0.98 if on_right else 0.02, 0.95),
                        xycoords="axes fraction",
                        ha="right" if on_right else "left",
                        va="top", fontsize=8, color="#555555")
        ax.set_xscale("log")

    ax = axes.flat[3]
    for c in CLASSES:
        if data[c]:
            ax.hist(data[c], bins=bins, color=COLOR[c], histtype="step",
                    linewidth=1.8, label=LABEL[c])
    ax.set_xscale("log")
    ax.set_title("all classes (outline overlay)", fontsize=10, color="#222222")
    ax.legend(fontsize=8, frameon=False)

    for ax in axes.flat:
        ax.set_ylabel("queries", fontsize=9, color="#555555")
        ax.grid(True, which="both", axis="x", alpha=0.15)
        ax.tick_params(labelsize=8, colors="#555555")
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
    for ax in axes[1]:
        ax.set_xlabel("query latency (ms, log scale)", fontsize=9, color="#555555")

    fig.tight_layout(rect=(0, 0, 1, 0.96))
    Path(out_png).parent.mkdir(exist_ok=True)
    fig.savefig(out_png, dpi=160)
    print(f"figure -> {out_png}")

if __name__ == "__main__":
    main()
```

════════════════════════════════════════════════════════════════════
## FILE: run_lz4_perf.sh
## lz4 driver-based perf harness (LZ4_compress_HC over tmpfs corpus), TIMEOUT_MS=300 knob.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_lz4_perf.sh -- lz4 RUNTIME-RECOVERY experiment (zlib perf v5 protocol).
#
# Second runtime target from the robust matrix: lz4 ANF ceiling +3.2-3.4%
# consistent across median/min/avg, 282 traps, only ~2 hot TUs.
#
# Design: the TIMED KERNEL is a tiny driver (below, compiled UNSANITIZED
# -O2, the minigzip role) calling LZ4_compress_HC over the corpus; the
# LIBRARY TUs (lz4.c, lz4hc.c -- where the hot loops and traps live) go
# through the pipeline per config:
#   base   : clang -O3                          -> .o
#   base2x : clang -O3 -> opt default<O3>       -> .o   (fair control)
#   oracle : clang -O3 -> oracle+simplifycfg+adce+verify -> opt default<O3> -> .o
# Protocol: shuffled interleaved reps, min+avg+raw CSV (median offline),
# tmpfs corpus, $PIN on timed runs. THIS IS A TIMING RUN: stabilize first
# (governor performance + no_turbo).
#
# Knobs : RUNS=40 CORPUS_MB=64 HC_LEVEL=9 ITERS=3 SPECS="none anf"
#         JOBS/THREADS for the oracle stage; LZ4=/path (default beside repo)
# Out   : evaluation/perf_lz4.csv  (make_perf_report.py compatible:
#         python3 make_perf_report.py evaluation/perf_lz4.csv evaluation/perf_lz4_report.csv)
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
LZ4="${LZ4:-$PL_ROOT/lz4}"
RUNS=${RUNS:-40}
CORPUS_MB=${CORPUS_MB:-64}
HC_LEVEL=${HC_LEVEL:-9}
ITERS=${ITERS:-3}
SPECS=${SPECS:-"none anf"}
THREADS=${THREADS:-8}
TIMEOUT_MS=${TIMEOUT_MS:-300}
COOLDOWN=${COOLDOWN:-45}
W="$ROOT/perf_lz4_test"; rm -rf "$W"; mkdir -p "$W" "$ROOT/evaluation" logs/compilations
CSV="$ROOT/evaluation/perf_lz4.csv"
SRCS="lz4 lz4hc"
INLINE_FLAGS=(-finline-functions -mllvm -inline-threshold=100000
  -mllvm -inlinehint-threshold=100000 -mllvm -inlinecold-threshold=100000)

if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else PIN=""; fi
fi
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }
san_flags() {
  case "$1" in
    none) echo "" ;;
    # lz4's all-non-firing (robust matrix): unsigned FIRED on lz4, so it
    # is excluded; implicit survived and is included.
    anf)  echo "-fsanitize=signed-integer-overflow,integer-divide-by-zero,shift,bounds,implicit-conversion -fsanitize-trap=signed-integer-overflow,integer-divide-by-zero,shift,bounds,implicit-conversion" ;;
    signed) echo "-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow" ;;
    *) echo "__BAD__" ;;
  esac
}

cd "$ROOT" || exit 1
( cd build && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }

# ---- driver (unsanitized; identical binary role to minigzip) ----
cat > "$W/lz4_driver.c" <<'CEOF'
#include "lz4hc.h"
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char **argv) {
    if (argc < 4) { fprintf(stderr, "usage: driver file level iters\n"); return 2; }
    FILE *f = fopen(argv[1], "rb");
    if (!f) return 2;
    fseek(f, 0, SEEK_END); long n = ftell(f); fseek(f, 0, SEEK_SET);
    char *src = malloc(n);
    if (fread(src, 1, n, f) != (size_t)n) return 2;
    fclose(f);
    int level = atoi(argv[2]), iters = atoi(argv[3]);
    const long CHUNK = 4 << 20;
    char *dst = malloc(LZ4_compressBound(CHUNK));
    long long total = 0;
    for (int it = 0; it < iters; ++it)
        for (long off = 0; off < n; off += CHUNK) {
            long len = (n - off < CHUNK) ? n - off : CHUNK;
            total += LZ4_compress_HC(src + off, dst, (int)len,
                                     LZ4_compressBound(CHUNK), level);
        }
    printf("%lld\n", total);
    return 0;
}
CEOF

# ---- corpus in tmpfs ----
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_lz4perf.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
CORP="$CORPDIR/corpus"
cat "$PL_ROOT"/zlib/*.c "$PL_ROOT"/zlib/*.h "$ROOT"/OraclePass/*.cpp > "$CORP" 2>/dev/null
[ -s "$CORP" ] || { echo "[FATAL] empty corpus seed"; exit 1; }
while [ "$(stat -c%s "$CORP")" -lt $((CORPUS_MB*1024*1024)) ]; do
  cat "$CORP" "$CORP" > "$CORP.t" && mv "$CORP.t" "$CORP"
done
truncate -s "${CORPUS_MB}M" "$CORP"

# ---- PHASE A: build every (spec x config) binary ----
declare -A B_PATH TRAPS_IN TRAPS_FIN ORACLE_S B_BYTES B_TEXT
KEYS=()
echo "==== PHASE A: builds (specs: $SPECS) ===="
clang -O2 -I"$LZ4/lib" -c "$W/lz4_driver.c" -o "$W/driver.o" || exit 1
for spec in $SPECS; do
  FL=$(san_flags "$spec"); [ "$FL" = "__BAD__" ] && { echo "[FATAL] spec $spec"; exit 1; }
  ti=0
  for f in $SRCS; do
    clang -O3 -S -emit-llvm $FL "${INLINE_FLAGS[@]}" -I"$LZ4/lib" \
      "$LZ4/lib/$f.c" -o "$W/${spec}.${f}.ll" || exit 1
    n=$(grep -c 'call void @llvm.ubsantrap' "$W/${spec}.${f}.ll"); ti=$((ti+n))
  done
  TRAPS_IN[$spec]=$ti
  CONFIGS="base base2x oracle"; [ "$spec" = "none" ] && CONFIGS="base"
  for cfg in $CONFIGS; do
    k="$spec.$cfg"; ORACLE_S[$k]=0
    case "$cfg" in
      base)   sfx="ll" ;;
      base2x)
        for f in $SRCS; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.b2.ll" || exit 1
        done; sfx="b2.ll" ;;
      oracle)
        t0=$(now)
        for f in $SRCS; do
          opt -load-pass-plugin=build/OraclePass.so \
            -passes="oracle-pass<threads=${THREADS};timeout=${TIMEOUT_MS}>,simplifycfg,adce,verify" \
            -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.or.ll" \
            > "$W/${spec}.${f}.oracle.log" 2>&1 || { echo "[FATAL] oracle $spec/$f"; exit 1; }
          opt -passes='default<O3>' -S "$W/${spec}.${f}.or.ll" -o "$W/${spec}.${f}.or2.ll" || exit 1
        done
        ORACLE_S[$k]=$(elapsed "$t0" "$(now)"); sfx="or2.ll" ;;
    esac
    tf=0; OBJS=()
    for f in $SRCS; do
      fin="$W/${spec}.${f}.${sfx}"
      n=$(grep -c 'call void @llvm.ubsantrap' "$fin"); tf=$((tf+n))
      llc -O3 -relocation-model=pic -filetype=obj "$fin" -o "$W/${k}.${f}.o" || exit 1
      OBJS+=("$W/${k}.${f}.o")
    done
    BIN="$W/bin.${k}"
    clang "${OBJS[@]}" "$W/driver.o" -o "$BIN" || exit 1
    TRAPS_FIN[$k]=$tf; B_PATH[$k]="$BIN"
    B_BYTES[$k]=$(stat -c%s "$BIN")
    B_TEXT[$k]=$(size "$BIN" 2>/dev/null | awk 'NR==2{print $1}')
    KEYS+=("$k")
    printf '  built %-14s traps %4s->%-4s smt %ss\n' "$k" "${TRAPS_IN[$spec]}" "$tf" "${ORACLE_S[$k]}"
  done
done

echo "==== cooldown ${COOLDOWN}s ===="; sleep "$COOLDOWN"

# ---- PHASE B: warmup + shuffled interleaved timing ----
echo "==== timing: $RUNS reps x ${#KEYS[@]} binaries  [pin: ${PIN:-none}] ===="
declare -A RUNTIMES
for k in "${KEYS[@]}"; do $PIN "${B_PATH[$k]}" "$CORP" "$HC_LEVEL" "$ITERS" >/dev/null 2>&1 || echo "  [WARN] $k warmup rc=$?"; done
for rep in $(seq "$RUNS"); do
  while IFS= read -r k; do
    t0=$(now); $PIN "${B_PATH[$k]}" "$CORP" "$HC_LEVEL" "$ITERS" >/dev/null 2>&1; rc=$?; t1=$(now)
    [ "$rc" -ge 128 ] && { echo "  [TRAP] $k rep $rep rc=$rc"; continue; }
    RUNTIMES[$k]="${RUNTIMES[$k]:-}$(elapsed "$t0" "$t1");"
  done < <(printf '%s\n' "${KEYS[@]}" | shuf)
  [ $((rep % 5)) -eq 0 ] && echo "  rep $rep/$RUNS ($(date +%H:%M:%S))"
done

# ---- PHASE C: CSV (make_perf_report.py compatible) ----
# Append-aware: multiple invocations (one per CORPUS_MB) build one
# multi-size table, mirroring the zlib 8/64/256 protocol.
[ -f "$CSV" ] || echo "spec,config,size_mb,traps_in,traps_final,bin_bytes,text_bytes,clang_s,oracle_s,o3_s,backend_link_s,total_compile_s,min_run_s,avg_run_s,runs_s" > "$CSV"
for k in "${KEYS[@]}"; do
  spec="${k%.*}"; cfg="${k#*.}"
  rj="${RUNTIMES[$k]%;}"
  mn=$(echo "$rj" | tr ';' '\n' | awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
  av=$(echo "$rj" | tr ';' '\n' | awk '{t+=$1} END{printf "%.3f", t/NR}')
  echo "$spec,$cfg,$CORPUS_MB,${TRAPS_IN[$spec]},${TRAPS_FIN[$k]},${B_BYTES[$k]},${B_TEXT[$k]:-},0,${ORACLE_S[$k]},0,0,0,$mn,$av,\"$rj\"" >> "$CSV"
  printf '%-14s traps %4s->%-4s min %ss avg %ss\n' "$k" "${TRAPS_IN[$spec]}" "${TRAPS_FIN[$k]}" "$mn" "$av"
done
echo ""
echo "CSV: $CSV   (report: python3 make_perf_report.py $CSV evaluation/perf_lz4_report.csv)"
```

════════════════════════════════════════════════════════════════════
## FILE: run_matrix.sh
## Sanitizer x benchmark opportunity matrix (C), median-of-N protocol.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_matrix.sh -- v3: SANITIZER x BENCHMARK opportunity matrix (baseline only).
# v3: ud1 counting (ubsantrap lowers to UD1 on x86, not UD2), lz4 built in
# programs/ (top-level make drops MOREFLAGS), union columns all-sanitizers /
# all-non-firing (composed per bench from warmup outcomes), PB_DATASET knob.
#
# Cells = (bench x spec). Three metrics per cell, three matrices in the report:
#   1. min-based slowdown vs 'none'   (primary; noise only ADDS time)
#   2. avg-based slowdown vs 'none'   (sanity)
#   3. traps injected                 (exact IR count where we own the compile,
#                                      objdump ud2 proxy for make-built benches;
#                                      trap_method column keeps them apart)
# No oracle pass runs here: this measures the OPPORTUNITY CEILING that decides
# where ODeSSy solver time is worth spending.
#
# Benchmarks : zlib lz4 zstd openssl polybench     (adapters below)
# Specs      : none | 7 singles | all-sanitizers | all-non-firing (unions)
#
# CRASH-SAFETY / RESUME:
#   * evaluation/matrix/raw_runs.log -- every timed run appended THE MOMENT it
#     finishes (bench spec rep rc seconds). Nothing is ever lost.
#   * evaluation/matrix.csv          -- one row per cell, appended as soon as
#     the cell's bench finishes its timing block.
#   * evaluation/matrix/.done.<bench>-- bench-level checkpoint. Rerunning the
#     script skips finished benches; delete a marker to redo one bench.
#   Timing is shuffled+interleaved WITHIN a bench (its specs vs its own
#   'none'), which is the comparison that defines the matrix -- so bench-level
#   resume does not bias cross-spec deltas.
#
# Knobs : RUNS=10 CORPUS_MB=64 PIN=... RUN_TIMEOUT=300
#         BENCHES="zlib lz4 zstd openssl polybench"
#         SPECS="none signed unsigned both divide shift bounds implicit"
#         UNIONS=1  PB_DATASET=MEDIUM|LARGE  ZSTD_LEVEL=12
#         PL_ROOT=<dir with benchmark clones>   (default: repo parent)
#         ZSTD_LEVEL=12  (19 is the "real" setting but ~2x the wall time)
# Needs : pinned clang on PATH; perl+make (OpenSSL); benchmarks cloned
#         beside the repo (see SETUP section in the paper notes / chat):
#           git clone --depth 1 https://github.com/lz4/lz4
#           git clone --depth 1 https://github.com/facebook/zstd
#           git clone --depth 1 https://github.com/openssl/openssl
#           git clone --depth 1 \
#             https://github.com/MatthiasJReisinger/PolyBenchC-4.2.1 polybench
# Output: evaluation/matrix.csv  (then: python3 make_matrix_report.py)
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
RUNS=${RUNS:-10}
CORPUS_MB=${CORPUS_MB:-64}
RUN_TIMEOUT=${RUN_TIMEOUT:-300}
ZSTD_LEVEL=${ZSTD_LEVEL:-12}
# PolyBench dataset. MEDIUM makes the whole matrix ~1.5h; LARGE is the
# paper-final setting but costs ~230s PER TIMED RUN (hours of wall time).
PB_DATASET=${PB_DATASET:-MEDIUM}
BENCHES=${BENCHES:-"zlib lz4 zstd openssl polybench"}
SPECS=${SPECS:-"none signed unsigned both divide shift bounds implicit"}
# UNIONS=1 (default): after the single specs are built and warmup-probed,
# two composed cells are added per bench:
#   all-sanitizers  = union of every single that BUILT (static ceiling; may
#                     DIE at runtime wherever a component fired -- expected)
#   all-non-firing  = union of every single that built AND survived warmup
#                     (the strictest config this benchmark can actually SHIP
#                     -- the deployable-overhead ceiling ODeSSy attacks)
UNIONS=${UNIONS:-1}
NPROC=$(nproc 2>/dev/null || echo 8)
MDIR="$ROOT/evaluation/matrix"
CSV="$ROOT/evaluation/matrix.csv"
RAW="$MDIR/raw_runs.log"
W="$ROOT/matrix_test"
mkdir -p "$MDIR" "$W"

if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else PIN=""; fi
fi
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }

san_flags() {
  case "$1" in
    none)     echo "" ;;
    signed)   echo "-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow" ;;
    unsigned) echo "-fsanitize=unsigned-integer-overflow -fsanitize-trap=unsigned-integer-overflow" ;;
    both)     echo "-fsanitize=signed-integer-overflow,unsigned-integer-overflow -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow" ;;
    divide)   echo "-fsanitize=integer-divide-by-zero -fsanitize-trap=integer-divide-by-zero" ;;
    shift)    echo "-fsanitize=shift -fsanitize-trap=shift" ;;
    bounds)   echo "-fsanitize=bounds -fsanitize-trap=bounds" ;;
    implicit) echo "-fsanitize=implicit-conversion -fsanitize-trap=implicit-conversion" ;;
    *)        echo "__BAD__" ;;
  esac
}
# clang group name for each single spec (union composition)
comp_of() {
  case "$1" in
    signed)   echo signed-integer-overflow ;;
    unsigned) echo unsigned-integer-overflow ;;
    divide)   echo integer-divide-by-zero ;;
    shift)    echo shift ;;
    bounds)   echo bounds ;;
    implicit) echo implicit-conversion ;;
  esac
}
union_flags() { # $@ = single-spec names -> combined -fsanitize/-fsanitize-trap
  local list="" s c
  for s in "$@"; do c=$(comp_of "$s"); [ -n "$c" ] && list="${list:+$list,}$c"; done
  [ -n "$list" ] && echo "-fsanitize=$list -fsanitize-trap=$list"
}
# 'both' is signed+unsigned already; unions are built from these six:
UNION_COMPONENTS="signed unsigned divide shift bounds implicit"
# Binary trap-count proxy. NOTE: llvm.ubsantrap lowers to UD1 on x86 (the
# immediate encodes the check kind); plain llvm.trap lowers to UD2. Count
# both. x86-only -- on arm64 traps lower to brk and this proxy is invalid.
count_ud2() {
  command -v objdump >/dev/null 2>&1 || { echo NA; return; }
  local n; n=$(objdump -d "$1" 2>/dev/null | grep -cwE 'ud1|ud2'); echo "${n:-0}"
}
# Exact static count: emit IR for each source with the cell's flags, grep call
# sites. Used only by adapters where we own the compile line (zlib, polybench).
count_ir() { # $1=out-count-var-name; rest: clang args producing ONE .ll on stdout
  local __v="$1"; shift
  local __ll __n
  __ll=$("$@" -S -emit-llvm -o - 2>/dev/null) || { eval "$__v=NA"; return; }
  __n=$(printf '%s' "$__ll" | grep -c 'call void @llvm.ubsantrap')
  eval "$__v=\$__n"
}

# ---- shared corpus in tmpfs -------------------------------------------------
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_matrix.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
CORP="$CORPDIR/corpus"
make_corpus() {
  [ -s "$CORP" ] && return
  cat "$PL_ROOT"/zlib/*.c "$PL_ROOT"/zlib/*.h > "$CORP" 2>/dev/null
  [ -s "$CORP" ] || cat "$ROOT"/OraclePass/*.cpp > "$CORP" 2>/dev/null
  [ -s "$CORP" ] || { echo "[FATAL] empty corpus seed"; exit 1; }
  while [ "$(stat -c%s "$CORP")" -lt $((CORPUS_MB*1024*1024)) ]; do
    cat "$CORP" "$CORP" > "$CORP.t" && mv "$CORP.t" "$CORP"
  done
  truncate -s "${CORPUS_MB}M" "$CORP"
}

# =============================================================================
# ADAPTERS. Contract per bench B:
#   build_B <spec> "<flags>"  -> echo binary path | "SKIP"
#     and set TRAPS_CELL (exact IR count) or leave empty (ud2 proxy used)
#     and set TRAPMETH_CELL ("ir" | "ud2")
#   run_B <binary>            -> the timed kernel (deterministic, /dev/null out)
# =============================================================================
ZDEFS="-DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1"
ZSRCS="adler32 compress crc32 deflate gzclose gzlib gzread gzwrite infback inffast inflate inftrees trees uncompr zutil"
TRAPS_CELL=""; TRAPMETH_CELL="ud2"

build_zlib() {
  local d="$PL_ROOT/zlib"; [ -d "$d" ] || { echo SKIP; return; }
  local objs=() f total=0 n
  for f in $ZSRCS; do
    clang -O3 $2 $ZDEFS -I"$d" -c "$d/$f.c" -o "$W/zlib.$1.$f.o" 2>/dev/null \
      || { echo SKIP; return; }
    objs+=("$W/zlib.$1.$f.o")
    count_ir n clang -O3 $2 $ZDEFS -I"$d" "$d/$f.c"
    [ "$n" = "NA" ] && n=0; total=$((total+n))
  done
  local mg="$d/test/minigzip.c"; [ -f "$mg" ] || mg="$d/minigzip.c"
  clang -O2 $ZDEFS -I"$d" -c "$mg" -o "$W/zlib.mg.o" 2>/dev/null || { echo SKIP; return; }
  clang "${objs[@]}" "$W/zlib.mg.o" -o "$W/bin.zlib.$1" 2>/dev/null || { echo SKIP; return; }
  echo "$total ir" > "$W/.trapcount.zlib.$1"
  echo "$W/bin.zlib.$1"
}
run_zlib() { "$1" -9 < "$CORP" > /dev/null 2>&1; }

build_lz4() {
  local d="$PL_ROOT/lz4"; [ -d "$d" ] || { echo SKIP; return; }
  # Build in programs/ directly: the top-level 'lz4' target has been seen
  # to drop MOREFLAGS (=> silently unsanitized binaries, traps=0 everywhere).
  # MOREFLAGS proven dropped (v2 top-level AND v3 programs/ builds came out
  # uninstrumented). Command-line CFLAGS overrides every Makefile assignment
  # -- the one mechanism make guarantees. -O3 included since override kills
  # the default optimization flags.
  ( cd "$d/programs" && make clean >/dev/null 2>&1
    make -j"$NPROC" CC=clang CFLAGS="-O3 $2" lz4 >/dev/null 2>&1 ) || { echo SKIP; return; }
  local b="$d/programs/lz4"; [ -x "$b" ] || b="$d/lz4"
  [ -x "$b" ] || { echo SKIP; return; }
  cp "$b" "$W/bin.lz4.$1"; echo "$W/bin.lz4.$1"
}
run_lz4() { "$1" -9 -f -c < "$CORP" > /dev/null 2>&1; }

build_zstd() {
  local d="$PL_ROOT/zstd"; [ -d "$d" ] || { echo SKIP; return; }
  ( cd "$d" && make clean >/dev/null 2>&1
    make -j"$NPROC" CC=clang MOREFLAGS="$2" zstd >/dev/null 2>&1 ) || { echo SKIP; return; }
  local b="$d/zstd"; [ -x "$b" ] || b="$d/programs/zstd"
  [ -x "$b" ] || { echo SKIP; return; }
  cp "$b" "$W/bin.zstd.$1"; echo "$W/bin.zstd.$1"
}
run_zstd() { "$1" -"$ZSTD_LEVEL" -f -c < "$CORP" > /dev/null 2>&1; }

# OpenSSL: out-of-tree build dir per spec; kernel = sha256 digest + AES-CBC
# encrypt of the corpus (raw -K/-iv: no KDF, deterministic, CPU-bound).
build_openssl() {
  local d="$PL_ROOT/openssl"; [ -d "$d" ] || { echo SKIP; return; }
  local bd="$W/openssl.$1"
  if [ ! -x "$bd/apps/openssl" ]; then
    mkdir -p "$bd"
    ( cd "$bd" && "$d/Configure" CC=clang linux-x86_64 no-shared no-tests \
        -O3 $2 >/dev/null 2>&1 && make -j"$NPROC" >/dev/null 2>&1 ) \
      || { echo SKIP; return; }
  fi
  [ -x "$bd/apps/openssl" ] || { echo SKIP; return; }
  echo "$bd/apps/openssl"
}
run_openssl() {
  "$1" dgst -sha256 "$CORP" > /dev/null 2>&1 || return $?
  "$1" enc -aes-256-cbc \
    -K 0000000000000000000000000000000000000000000000000000000000000000 \
    -iv 00000000000000000000000000000000 -in "$CORP" -out /dev/null 2>/dev/null
}

PB_KERNELS="linear-algebra/blas/gemm linear-algebra/kernels/2mm linear-algebra/kernels/3mm linear-algebra/solvers/cholesky linear-algebra/solvers/lu"
build_polybench() {
  local d="" c
  for c in "$PL_ROOT/polybench" "$PL_ROOT/PolyBenchC-4.2.1" "$PL_ROOT/polybench-c-4.2.1"; do
    [ -d "$c/utilities" ] && d="$c" && break
  done
  [ -n "$d" ] || { echo SKIP; return; }
  local k name outs=() total=0 n src
  for k in $PB_KERNELS; do
    name=$(basename "$k")
    clang -O3 $2 -I"$d/utilities" -I"$d/$k" -D${PB_DATASET}_DATASET \
      "$d/utilities/polybench.c" "$d/$k/$name.c" -lm \
      -o "$W/bin.pb.$name.$1" 2>/dev/null || { echo SKIP; return; }
    outs+=("$W/bin.pb.$name.$1")
    for src in "$d/utilities/polybench.c" "$d/$k/$name.c"; do
      count_ir n clang -O3 $2 -I"$d/utilities" -I"$d/$k" -D${PB_DATASET}_DATASET "$src"
      [ "$n" = "NA" ] && n=0; total=$((total+n))
    done
  done
  local drv="$W/bin.polybench.$1"
  { echo '#!/usr/bin/env bash'
    local b; for b in "${outs[@]}"; do echo "\"$b\" > /dev/null 2>&1 || exit \$?"; done
  } > "$drv"; chmod +x "$drv"
  echo "$total ir" > "$W/.trapcount.polybench.$1"
  echo "$drv"
}
run_polybench() { "$1"; }

# timeout(1) execs a real command, not a shell function -- so the timed
# kernels run via an exported-function bash -c shim. CORP/ZSTD_LEVEL must
# be in the environment for the child shell.
export CORP ZSTD_LEVEL
export -f run_zlib run_lz4 run_zstd run_openssl run_polybench
timed() { # $1 = bench, $2 = binary; returns the kernel's rc (124 = timeout)
  $PIN timeout "$RUN_TIMEOUT" bash -c "run_$1 \"\$0\"" "$2"
}

# =============================================================================
# MAIN LOOP -- bench by bench (checkpoint unit), specs interleaved inside.
# =============================================================================
[ -f "$CSV" ] || echo "bench,spec,traps_n,trap_method,status,min_run_s,avg_run_s,slowdown_vs_none_min_pct,slowdown_vs_none_avg_pct,components,runs_s" > "$CSV"
make_corpus
echo "==== matrix v2: benches [$BENCHES] x specs [$SPECS] ===="
echo "==== RUNS=$RUNS CORPUS=${CORPUS_MB}MB pin='${PIN:-none}' raw log: $RAW ===="

for bench in $BENCHES; do
  if [ -f "$MDIR/.done.$bench" ]; then
    echo "[$bench] checkpoint found -- skipping (rm $MDIR/.done.$bench to redo)"
    continue
  fi
  echo ""
  echo "==== [$bench] building cells ===="
  declare -A BIN TRAPS METH DIED RUNTIMES COMPO
  BIN=(); TRAPS=(); METH=(); DIED=(); RUNTIMES=(); COMPO=()
  CELLS=()
  for s in $SPECS; do
    fl=$(san_flags "$s"); [ "$fl" = "__BAD__" ] && { echo "[FATAL] bad spec $s"; exit 1; }
    rm -f "$W/.trapcount.$bench.$s"
    bin=$("build_$bench" "$s" "$fl")
    if [ "$bin" = "SKIP" ] || [ -z "$bin" ]; then
      echo "  [skip] $bench/$s (missing clone or build failed)"
      echo "$bench,$s,,,build_failed,,,,,," >> "$CSV"
      continue
    fi
    BIN[$s]="$bin"
    if [ -f "$W/.trapcount.$bench.$s" ]; then
      read -r "TRAPS[$s]" "METH[$s]" < "$W/.trapcount.$bench.$s"
    else TRAPS[$s]=$(count_ud2 "$bin"); METH[$s]="ud2"; fi
    CELLS+=("$s")
    printf '  built %-10s %-9s traps=%s (%s)\n' "$bench" "$s" "${TRAPS[$s]}" "${METH[$s]}"
    # Sanity: a sanitized build with ZERO traps almost always means the
    # flags never reached the compiler (build-system swallowed MOREFLAGS).
    if [ "$s" != "none" ] && [ "${TRAPS[$s]}" = "0" ]; then
      echo "  [WARN] $bench/$s built with 0 traps -- sanitizer flags may not have reached the compiler; verify before trusting this row"
    fi
  done
  [ ${#CELLS[@]} -gt 0 ] || { echo "  [$bench] nothing built"; touch "$MDIR/.done.$bench"; continue; }

  echo "==== [$bench] warmup ===="
  for s in "${CELLS[@]}"; do
    timed "$bench" "${BIN[$s]}"; rc=$?
    if [ "$rc" -ge 128 ] || [ "$rc" -eq 124 ]; then
      DIED[$s]=$rc
      echo "  [TRAP] $bench/$s warmup rc=$rc ($([ $rc -eq 124 ] && echo timeout || echo 'sanitizer fired')) -- excluded from timing, kept as finding"
    fi
  done

  # ---- UNION CELLS: composed from the singles' build+warmup outcomes ----
  if [ "${UNIONS}" = "1" ]; then
    for u in all-sanitizers all-non-firing; do
      comps=""
      for s in $UNION_COMPONENTS; do
        [ -n "${BIN[$s]:-}" ] || continue                    # must have built
        if [ "$u" = "all-non-firing" ] && [ -n "${DIED[$s]:-}" ]; then
          continue                                           # fired => excluded
        fi
        comps="$comps $s"
      done
      comps="${comps# }"
      [ -n "$comps" ] || { echo "  [skip] $bench/$u (no eligible components)"; continue; }
      fl=$(union_flags $comps)
      rm -f "$W/.trapcount.$bench.$u"
      bin=$("build_$bench" "$u" "$fl")
      if [ "$bin" = "SKIP" ] || [ -z "$bin" ]; then
        echo "  [skip] $bench/$u (build failed)"
        echo "$bench,$u,,,build_failed,,,,,\"$comps\"," >> "$CSV"
        continue
      fi
      BIN[$u]="$bin"; COMPO[$u]="$comps"
      if [ -f "$W/.trapcount.$bench.$u" ]; then
        read -r "TRAPS[$u]" "METH[$u]" < "$W/.trapcount.$bench.$u"
      else TRAPS[$u]=$(count_ud2 "$bin"); METH[$u]="ud2"; fi
      CELLS+=("$u")
      printf '  built %-10s %-15s traps=%s (%s) = {%s}\n' \
        "$bench" "$u" "${TRAPS[$u]}" "${METH[$u]}" "$comps"
      # warmup-probe the union too (all-non-firing SHOULD survive; if it
      # dies anyway that is itself a finding -- interacting checks)
      timed "$bench" "${BIN[$u]}"; rc=$?
      if [ "$rc" -ge 128 ] || [ "$rc" -eq 124 ]; then
        DIED[$u]=$rc
        echo "  [TRAP] $bench/$u warmup rc=$rc -- excluded from timing"
      fi
    done
  fi

  echo "==== [$bench] timing: $RUNS shuffled reps ===="
  for rep in $(seq "$RUNS"); do
    while IFS= read -r s; do
      [ -n "${DIED[$s]:-}" ] && continue
      t0=$(now); timed "$bench" "${BIN[$s]}"; rc=$?; t1=$(now)
      dt=$(elapsed "$t0" "$t1")
      echo "$(date +%F.%T) $bench $s rep=$rep rc=$rc t=$dt" >> "$RAW"
      if [ "$rc" -ge 128 ] || [ "$rc" -eq 124 ]; then DIED[$s]=$rc; continue; fi
      RUNTIMES[$s]="${RUNTIMES[$s]:-}$dt;"
    done < <(printf '%s\n' "${CELLS[@]}" | shuf)
    echo "  rep $rep/$RUNS done ($(date +%H:%M:%S))"
  done

  # ---- emit this bench's rows immediately (checkpoint) ----
  declare -A MN AV
  MN=(); AV=()
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    if [ -n "$rj" ]; then
      MN[$s]=$(echo "$rj" | tr ';' '\n' | awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
      AV[$s]=$(echo "$rj" | tr ';' '\n' | awk '{t+=$1} END{printf "%.3f", t/NR}')
    fi
  done
  refm="${MN[none]:-}"; refa="${AV[none]:-}"
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    st=ok; ovm=""; ova=""
    if [ -n "${DIED[$s]:-}" ]; then
      st=$([ "${DIED[$s]}" -eq 124 ] && echo timeout || echo "died_rc=${DIED[$s]}")
    else
      [ -n "$refm" ] && [ -n "${MN[$s]:-}" ] && \
        ovm=$(awk -v n="${MN[$s]}" -v r="$refm" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
      [ -n "$refa" ] && [ -n "${AV[$s]:-}" ] && \
        ova=$(awk -v n="${AV[$s]}" -v r="$refa" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
    fi
    echo "$bench,$s,${TRAPS[$s]:-},${METH[$s]:-},$st,${MN[$s]:-},${AV[$s]:-},$ovm,$ova,\"${COMPO[$s]:-}\",\"$rj\"" >> "$CSV"
  done
  touch "$MDIR/.done.$bench"
  echo "==== [$bench] rows appended to $CSV ; checkpoint written ===="
done

echo ""
echo "CSV: $CSV"
echo "Report: python3 make_matrix_report.py   (3 matrices: min / avg / traps)"
```

════════════════════════════════════════════════════════════════════
## FILE: run_matrix_native.sh
## Native-language (Swift/Rust/Julia) opportunity matrix -- the checked-vs-unchecked ceilings.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_matrix_native.sh -- NATIVE-CHECK LANGUAGE matrix (Swift / Rust / Julia).
#
# Same protocol as run_matrix.sh (pin, shuffled interleaved reps, per-run raw
# log, bench-level checkpoints, CSV compatible with make_matrix_report.py):
#   python3 make_matrix_report.py evaluation/matrix_native.csv \
#                                 evaluation/matrix_native_report.csv
#
# The SPec axis is per-language (checks are language semantics here):
#   swift_*  : none    = -Ounchecked   (overflow+bounds+unwrap checks OFF)
#              checked = -O default    (all of them ON -- what users ship)
#   rust_*   : none    = release default (bounds ALWAYS on; overflow off)
#              overflow= + RUSTFLAGS="-C overflow-checks=on"
#              (bounds cannot be disabled globally -- itself a finding)
#   julia_*  : none    = --check-bounds=no    (same binary, runtime flag)
#              bounds  = --check-bounds=yes
#
# Benchmarks (sources written by this script into native_bench/):
#   swift_nbody   n-body physics, tight O(n^2) loop, indexed particle arrays
#   swift_sha256  pure-Swift SHA-256 (wrapping &+ where wrap is intended --
#                 idiomatic -- so the measured load is bounds + index arith)
#   swift_lz77    greedy LZ77 over the corpus: byte-stream indexing w/ guards
#   rust_miniz    miniz_oxide DEFLATE compress of the corpus (zlib twin)
#   rust_inflate  miniz_oxide inflate of a pre-compressed corpus
#   julia_stencil 2-D heat stencil, the canonical bounds-elimination shape
#   julia_gemm    triple-loop GEMM, constant bounds (SCEV home turf)
#
# Trap counts: swift = ud1|ud2 in binary; rust = panic-call sites in binary
# (proxy: 'panic' call targets); julia = n/a (JIT).
#
# Knobs : RUNS=20 CORPUS_MB=64 PIN=... RUN_TIMEOUT=300
#         BENCHES="swift_nbody swift_sha256 swift_lz77 rust_miniz rust_inflate julia_stencil julia_gemm"
#         NBODY_STEPS=6000000 SHA_ITERS=6 LZ77_ITERS=3 MINIZ_ITERS=4
#         INFLATE_ITERS=30 STENCIL_N=1500 STENCIL_STEPS=400 GEMM_N=700 GEMM_REPS=3
#         (calibrate in smoke: aim 5-15 s per timed run)
# Needs : swiftc, cargo, julia on PATH (see setup commands in chat).
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
RUNS=${RUNS:-20}
CORPUS_MB=${CORPUS_MB:-64}
RUN_TIMEOUT=${RUN_TIMEOUT:-300}
BENCHES=${BENCHES:-"swift_nbody swift_sha256 swift_lz77 rust_miniz rust_inflate julia_stencil julia_gemm"}
NBODY_STEPS=${NBODY_STEPS:-6000000}
SHA_ITERS=${SHA_ITERS:-6}
LZ77_ITERS=${LZ77_ITERS:-3}
MINIZ_ITERS=${MINIZ_ITERS:-4}
INFLATE_ITERS=${INFLATE_ITERS:-30}
STENCIL_N=${STENCIL_N:-1500}; STENCIL_STEPS=${STENCIL_STEPS:-400}
GEMM_N=${GEMM_N:-700}; GEMM_REPS=${GEMM_REPS:-3}

NB="$ROOT/native_bench"; W="$ROOT/native_test"
MDIR="$ROOT/evaluation/matrix_native"
CSV="$ROOT/evaluation/matrix_native.csv"
RAW="$MDIR/raw_runs.log"
mkdir -p "$NB" "$W" "$MDIR" "$ROOT/evaluation"

if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else PIN=""; fi
fi
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }

# ---- corpus (tmpfs) ---------------------------------------------------------
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_native.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
CORP="$CORPDIR/corpus"
if [ ! -s "$CORP" ]; then
  cat "$ROOT"/OraclePass/*.cpp "$ROOT"/*.md > "$CORP" 2>/dev/null
  [ -s "$CORP" ] || { echo "[FATAL] empty corpus seed"; exit 1; }
  while [ "$(stat -c%s "$CORP" 2>/dev/null || stat -f%z "$CORP")" -lt $((CORPUS_MB*1024*1024)) ]; do
    cat "$CORP" "$CORP" > "$CORP.t" && mv "$CORP.t" "$CORP"
  done
  truncate -s "${CORPUS_MB}M" "$CORP" 2>/dev/null || true
fi
# pre-compressed corpus for rust_inflate
[ -s "$CORP.z" ] || python3 -c "
import zlib,sys
data = open('$CORP','rb').read()
open('$CORP.z','wb').write(zlib.compress(data, 6))
print('corpus.z:', len(data), '->', end=' ')
import os; print(os.path.getsize('$CORP.z'))"

# =============================================================================
# BENCHMARK SOURCES (written once; edit in native_bench/ to iterate)
# =============================================================================
write_sources() {
mkdir -p "$NB/rust_miniz/src" "$NB/rust_inflate/src"

# ---------------- Swift: n-body ----------------
cat > "$NB/nbody.swift" <<'EOF'
import Foundation
let steps = Int(CommandLine.arguments[1])!
let n = 5
var px = [Double](repeating: 0, count: n), py = px, pz = px
var vx = px, vy = px, vz = px, mass = px
let pi = 3.141592653589793, solar = 4 * pi * pi, dpy = 365.24
let bodies: [[Double]] = [
 [0,0,0,0,0,0,1],
 [4.84143144246472090,-1.16032004402742839,-0.103622044471123109,
  0.00166007664274403694,0.00769901118419740425,-0.0000690460016972063023,0.000954791938424326609],
 [8.34336671824457987,4.12479856412430479,-0.403523417114321381,
  -0.00276742510726862411,0.00499852801234917238,0.0000230417297573763929,0.000285885980666130812],
 [12.8943695621391310,-15.1111514016986312,-0.223307578892655734,
  0.00296460137564761618,0.00237847173959480950,-0.0000296589568540237556,0.0000436624404335156298],
 [15.3796971148509165,-25.9193146099879641,0.179258772950371181,
  0.00268067772490389322,0.00162824170038242295,-0.0000951592254519715870,0.0000515138902046611451]]
for i in 0..<n {
  px[i]=bodies[i][0]; py[i]=bodies[i][1]; pz[i]=bodies[i][2]
  vx[i]=bodies[i][3]*dpy; vy[i]=bodies[i][4]*dpy; vz[i]=bodies[i][5]*dpy
  mass[i]=bodies[i][6]*solar
}
var mpx=0.0, mpy=0.0, mpz=0.0
for i in 0..<n { mpx += vx[i]*mass[i]; mpy += vy[i]*mass[i]; mpz += vz[i]*mass[i] }
vx[0] = -mpx/solar; vy[0] = -mpy/solar; vz[0] = -mpz/solar
let dt = 0.01
for _ in 0..<steps {
  for i in 0..<n {
    for j in (i+1)..<n {
      let dx = px[i]-px[j], dy = py[i]-py[j], dz = pz[i]-pz[j]
      let d2 = dx*dx+dy*dy+dz*dz
      let mag = dt / (d2 * d2.squareRoot())
      vx[i] -= dx*mass[j]*mag; vy[i] -= dy*mass[j]*mag; vz[i] -= dz*mass[j]*mag
      vx[j] += dx*mass[i]*mag; vy[j] += dy*mass[i]*mag; vz[j] += dz*mass[i]*mag
    }
  }
  for i in 0..<n { px[i] += dt*vx[i]; py[i] += dt*vy[i]; pz[i] += dt*vz[i] }
}
var e = 0.0
for i in 0..<n {
  e += 0.5*mass[i]*(vx[i]*vx[i]+vy[i]*vy[i]+vz[i]*vz[i])
  for j in (i+1)..<n {
    let dx = px[i]-px[j], dy = py[i]-py[j], dz = pz[i]-pz[j]
    e -= mass[i]*mass[j] / (dx*dx+dy*dy+dz*dz).squareRoot()
  }
}
print(String(format: "%.9f", e))
EOF

# ---------------- Swift: SHA-256 ----------------
cat > "$NB/sha256.swift" <<'EOF'
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))
let k: [UInt32] = [
0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2]
func rotr(_ x: UInt32, _ n: UInt32) -> UInt32 { (x >> n) | (x << (32 - n)) }
var final: UInt32 = 0
for _ in 0..<iters {
  var h: [UInt32] = [0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,
                     0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19]
  var w = [UInt32](repeating: 0, count: 64)
  let nBlocks = data.count / 64
  for b in 0..<nBlocks {
    let off = b * 64
    for t in 0..<16 {
      w[t] = (UInt32(data[off+4*t]) << 24) | (UInt32(data[off+4*t+1]) << 16)
           | (UInt32(data[off+4*t+2]) << 8) | UInt32(data[off+4*t+3])
    }
    for t in 16..<64 {
      let s0 = rotr(w[t-15],7) ^ rotr(w[t-15],18) ^ (w[t-15] >> 3)
      let s1 = rotr(w[t-2],17) ^ rotr(w[t-2],19) ^ (w[t-2] >> 10)
      w[t] = w[t-16] &+ s0 &+ w[t-7] &+ s1
    }
    var a=h[0], bb=h[1], c=h[2], d=h[3], e=h[4], f=h[5], g=h[6], hh=h[7]
    for t in 0..<64 {
      let S1 = rotr(e,6) ^ rotr(e,11) ^ rotr(e,25)
      let ch = (e & f) ^ (~e & g)
      let t1 = hh &+ S1 &+ ch &+ k[t] &+ w[t]
      let S0 = rotr(a,2) ^ rotr(a,13) ^ rotr(a,22)
      let mj = (a & bb) ^ (a & c) ^ (bb & c)
      let t2 = S0 &+ mj
      hh=g; g=f; f=e; e = d &+ t1; d=c; c=bb; bb=a; a = t1 &+ t2
    }
    h[0] = h[0] &+ a; h[1] = h[1] &+ bb; h[2] = h[2] &+ c; h[3] = h[3] &+ d
    h[4] = h[4] &+ e; h[5] = h[5] &+ f; h[6] = h[6] &+ g; h[7] = h[7] &+ hh
  }
  final = final &+ h[0]
}
print(final)
EOF

# ---------------- Swift: greedy LZ77 ----------------
cat > "$NB/lz77.swift" <<'EOF'
import Foundation
let iters = Int(CommandLine.arguments[1])!
let full = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))
let cap = min(full.count, 2 * 1024 * 1024)
let data = Array(full[0..<cap])
var total = 0
for _ in 0..<iters {
  var out = 0
  var i = 0
  let n = data.count
  let window = 1024, minMatch = 4, maxMatch = 255
  while i < n {
    var bestLen = 0, bestDist = 0
    let start = i > window ? i - window : 0
    var j = start
    while j < i {
      var l = 0
      while l < maxMatch && i + l < n && data[j + l] == data[i + l] { l += 1 }
      if l > bestLen { bestLen = l; bestDist = i - j }
      j += 1
      if bestLen >= maxMatch { break }
    }
    if bestLen >= minMatch {
      out += 3
      i += bestLen
      total = total &+ bestDist
    } else {
      out += 1
      i += 1
    }
  }
  total = total &+ out
}
print(total)
EOF

# ---------------- Rust: miniz compress ----------------
cat > "$NB/rust_miniz/Cargo.toml" <<'EOF'
[package]
name = "rust_miniz"
version = "0.1.0"
edition = "2021"
[dependencies]
miniz_oxide = "0.8"
[profile.release]
debug = false
EOF
cat > "$NB/rust_miniz/src/main.rs" <<'EOF'
use std::env;
use std::fs;
fn main() {
    let args: Vec<String> = env::args().collect();
    let iters: usize = args[1].parse().unwrap();
    let data = fs::read(&args[2]).unwrap();
    let mut total = 0usize;
    for _ in 0..iters {
        let c = miniz_oxide::deflate::compress_to_vec(&data, 6);
        total = total.wrapping_add(c.len());
    }
    println!("{}", total);
}
EOF

# ---------------- Rust: miniz inflate ----------------
cat > "$NB/rust_inflate/Cargo.toml" <<'EOF'
[package]
name = "rust_inflate"
version = "0.1.0"
edition = "2021"
[dependencies]
miniz_oxide = "0.8"
[profile.release]
debug = false
EOF
cat > "$NB/rust_inflate/src/main.rs" <<'EOF'
use std::env;
use std::fs;
fn main() {
    let args: Vec<String> = env::args().collect();
    let iters: usize = args[1].parse().unwrap();
    let z = fs::read(&args[2]).unwrap();
    let mut total = 0usize;
    for _ in 0..iters {
        let d = miniz_oxide::inflate::decompress_to_vec_zlib(&z).unwrap();
        total = total.wrapping_add(d.len());
    }
    println!("{}", total);
}
EOF

# ---------------- Julia: heat stencil ----------------
cat > "$NB/stencil.jl" <<'EOF'
n = parse(Int, ARGS[1]); steps = parse(Int, ARGS[2])
A = zeros(Float64, n, n); B = zeros(Float64, n, n)
for i in 1:n, j in 1:n
    A[i, j] = sin(i * 0.01) * cos(j * 0.01)
end
function step!(B, A, n)
    for j in 2:n-1
        for i in 2:n-1
            B[i, j] = 0.25 * (A[i-1, j] + A[i+1, j] + A[i, j-1] + A[i, j+1])
        end
    end
end
for s in 1:steps
    step!(B, A, n)
    global A, B = B, A
end
println(sum(A))
EOF

# ---------------- Julia: GEMM ----------------
cat > "$NB/gemm.jl" <<'EOF'
n = parse(Int, ARGS[1]); reps = parse(Int, ARGS[2])
A = [Float64((i * 7 + j) % 13) for i in 1:n, j in 1:n]
B = [Float64((i * 3 + j) % 17) for i in 1:n, j in 1:n]
C = zeros(Float64, n, n)
function gemm!(C, A, B, n)
    for j in 1:n
        for k in 1:n
            b = B[k, j]
            for i in 1:n
                C[i, j] += A[i, k] * b
            end
        end
    end
end
for r in 1:reps
    gemm!(C, A, B, n)
end
println(C[1, 1] + C[n, n])
EOF
}

# =============================================================================
# BUILD + RUN definitions per bench
#   build_<b> <spec>  -> echo binary (or SKIP); RUNCMD assembled in main loop
# =============================================================================
count_traps_bin() { # swift: ud1|ud2
  command -v objdump >/dev/null 2>&1 || { echo NA; return; }
  local n; n=$(objdump -d "$1" 2>/dev/null | grep -cwE 'ud1|ud2'); echo "${n:-0}"
}
count_panics_bin() { # rust: panic-call sites (bounds/overflow land here)
  command -v objdump >/dev/null 2>&1 || { echo NA; return; }
  local n; n=$(objdump -d "$1" 2>/dev/null | grep -c 'call.*panic'); echo "${n:-0}"
}

swift_flags() { [ "$1" = "none" ] && echo "-Ounchecked" || echo "-O"; }

build_swift() { # $1 = src stem, $2 = spec
  command -v swiftc >/dev/null 2>&1 || { echo SKIP; return; }
  swiftc $(swift_flags "$2") "$NB/$1.swift" -o "$W/bin.$1.$2" 2>"$W/$1.$2.buildlog" \
    || { echo SKIP; return; }
  echo "$W/bin.$1.$2"
}
build_rust() { # $1 = crate dir name, $2 = spec
  command -v cargo >/dev/null 2>&1 || { echo SKIP; return; }
  local rf=""
  [ "$2" = "overflow" ] && rf="-C overflow-checks=on"
  ( cd "$NB/$1" && RUSTFLAGS="$rf" cargo build --release -q 2>"$W/$1.$2.buildlog" ) \
    || { echo SKIP; return; }
  cp "$NB/$1/target/release/$1" "$W/bin.$1.$2" || { echo SKIP; return; }
  echo "$W/bin.$1.$2"
}

# per-bench: spec list | build | run-command template
bench_specs() {
  case "$1" in
    swift_*) echo "none checked" ;;
    rust_*)  echo "none overflow" ;;
    julia_*) echo "none bounds" ;;
  esac
}
build_cell() { # $1 bench, $2 spec -> echo bin/SKIP  (julia: echo script path)
  case "$1" in
    swift_nbody)  build_swift nbody  "$2" ;;
    swift_sha256) build_swift sha256 "$2" ;;
    swift_lz77)   build_swift lz77   "$2" ;;
    rust_miniz)   build_rust rust_miniz   "$2" ;;
    rust_inflate) build_rust rust_inflate "$2" ;;
    julia_*)      command -v julia >/dev/null 2>&1 && echo JULIA || echo SKIP ;;
  esac
}
run_cell() { # $1 bench, $2 spec, $3 bin  -- the timed kernel
  case "$1" in
    swift_nbody)  "$3" "$NBODY_STEPS" > /dev/null 2>&1 ;;
    swift_sha256) "$3" "$SHA_ITERS" "$CORP" > /dev/null 2>&1 ;;
    swift_lz77)   "$3" "$LZ77_ITERS" "$CORP" > /dev/null 2>&1 ;;
    rust_miniz)   "$3" "$MINIZ_ITERS" "$CORP" > /dev/null 2>&1 ;;
    rust_inflate) "$3" "$INFLATE_ITERS" "$CORP.z" > /dev/null 2>&1 ;;
    julia_stencil)
      local cb; cb=$([ "$2" = "bounds" ] && echo yes || echo no)
      julia --check-bounds=$cb -O3 "$NB/stencil.jl" "$STENCIL_N" "$STENCIL_STEPS" > /dev/null 2>&1 ;;
    julia_gemm)
      local cb; cb=$([ "$2" = "bounds" ] && echo yes || echo no)
      julia --check-bounds=$cb -O3 "$NB/gemm.jl" "$GEMM_N" "$GEMM_REPS" > /dev/null 2>&1 ;;
  esac
}
# run_cell executes in a child bash under $PIN -- export it and everything
# it references so the child shell can see them.
export -f run_cell
export NB CORP NBODY_STEPS SHA_ITERS LZ77_ITERS MINIZ_ITERS INFLATE_ITERS \
       STENCIL_N STENCIL_STEPS GEMM_N GEMM_REPS

count_cell() { # $1 bench, $2 bin -> "count method"
  case "$1" in
    swift_*) echo "$(count_traps_bin "$2") ud2" ;;
    rust_*)  echo "$(count_panics_bin "$2") panic" ;;
    julia_*) echo "NA jit" ;;
  esac
}

# =============================================================================
# MAIN LOOP -- mirrors run_matrix.sh (checkpoints, raw log, per-bench rows)
# =============================================================================
# timeout-on-a-function: subshell + watchdog (run_cell may launch julia with
# flags, so a plain `timeout CMD` doesn't fit). NOTE: a watchdog kill shows up
# as rc=137 and is recorded as died_rc=137 -- read that as TIMEOUT in the CSV.
timed_run() { # $1 bench, $2 spec, $3 bin -> rc
  local b="$1" s="$2" bin="$3" rc
  ( [ -n "$PIN" ] && exec $PIN bash -c "run_cell \"$b\" \"$s\" \"$bin\"" || run_cell "$b" "$s" "$bin" ) &
  local pid=$!
  ( sleep "$RUN_TIMEOUT" && kill -9 $pid 2>/dev/null ) &
  local wd=$!
  wait $pid; rc=$?
  kill $wd 2>/dev/null; wait $wd 2>/dev/null
  return $rc
}

[ -f "$CSV" ] || echo "bench,spec,traps_n,trap_method,status,min_run_s,avg_run_s,slowdown_vs_none_min_pct,slowdown_vs_none_avg_pct,components,runs_s" > "$CSV"
write_sources
echo "==== native matrix: [$BENCHES] RUNS=$RUNS pin='${PIN:-none}' ===="

for bench in $BENCHES; do
  if [ -f "$MDIR/.done.$bench" ]; then
    echo "[$bench] checkpoint found -- skipping"; continue
  fi
  echo ""
  echo "==== [$bench] building ===="
  declare -A BIN TRAPS METH DIED RUNTIMES
  BIN=(); TRAPS=(); METH=(); DIED=(); RUNTIMES=()
  CELLS=()
  for s in $(bench_specs "$bench"); do
    bin=$(build_cell "$bench" "$s")
    if [ "$bin" = "SKIP" ] || [ -z "$bin" ]; then
      echo "  [skip] $bench/$s (toolchain missing or build failed -- see $W/*.buildlog)"
      echo "$bench,$s,,,build_failed,,,,,," >> "$CSV"
      continue
    fi
    BIN[$s]="$bin"
    read -r "TRAPS[$s]" "METH[$s]" <<< "$(count_cell "$bench" "$bin")"
    CELLS+=("$s")
    printf '  built %-14s %-9s traps=%s (%s)\n' "$bench" "$s" "${TRAPS[$s]:-NA}" "${METH[$s]:-}"
  done
  [ ${#CELLS[@]} -gt 0 ] || { touch "$MDIR/.done.$bench"; continue; }

  echo "==== [$bench] warmup ===="
  for s in "${CELLS[@]}"; do
    t0=$(now); timed_run "$bench" "$s" "${BIN[$s]}"; rc=$?; t1=$(now)
    echo "  warmup $bench/$s rc=$rc t=$(elapsed "$t0" "$t1")s"
    if [ "$rc" -ge 128 ]; then
      DIED[$s]=$rc
      if [ "$rc" -eq 137 ]; then
        echo "  [TIMEOUT] $bench/$s exceeded ${RUN_TIMEOUT}s (watchdog) -- excluded; resize its iteration knob"
      else
        echo "  [TRAP] $bench/$s died rc=$rc -- a native check fired (finding); excluded from timing"
      fi
    fi
  done

  echo "==== [$bench] timing: $RUNS shuffled reps ===="
  for rep in $(seq "$RUNS"); do
    while IFS= read -r s; do
      [ -n "${DIED[$s]:-}" ] && continue
      t0=$(now); timed_run "$bench" "$s" "${BIN[$s]}"; rc=$?; t1=$(now)
      dt=$(elapsed "$t0" "$t1")
      echo "$(date +%F.%T) $bench $s rep=$rep rc=$rc t=$dt" >> "$RAW"
      if [ "$rc" -ge 128 ]; then DIED[$s]=$rc; continue; fi
      RUNTIMES[$s]="${RUNTIMES[$s]:-}$dt;"
    done < <(printf '%s\n' "${CELLS[@]}" | shuf)
    echo "  rep $rep/$RUNS done ($(date +%H:%M:%S))"
  done

  declare -A MN AV
  MN=(); AV=()
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    if [ -n "$rj" ]; then
      MN[$s]=$(echo "$rj" | tr ';' '\n' | awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
      AV[$s]=$(echo "$rj" | tr ';' '\n' | awk '{t+=$1} END{printf "%.3f", t/NR}')
    fi
  done
  refm="${MN[none]:-}"; refa="${AV[none]:-}"
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    st=ok; ovm=""; ova=""
    if [ -n "${DIED[$s]:-}" ]; then st="died_rc=${DIED[$s]}"
    else
      [ -n "$refm" ] && [ -n "${MN[$s]:-}" ] && \
        ovm=$(awk -v n="${MN[$s]}" -v r="$refm" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
      [ -n "$refa" ] && [ -n "${AV[$s]:-}" ] && \
        ova=$(awk -v n="${AV[$s]}" -v r="$refa" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
    fi
    echo "$bench,$s,${TRAPS[$s]:-},${METH[$s]:-},$st,${MN[$s]:-},${AV[$s]:-},$ovm,$ova,,\"$rj\"" >> "$CSV"
  done
  touch "$MDIR/.done.$bench"
  echo "==== [$bench] rows appended to $CSV ===="
done
echo ""
echo "CSV: $CSV"
echo "Report: python3 make_matrix_report.py evaluation/matrix_native.csv evaluation/matrix_native_report.csv"
```

════════════════════════════════════════════════════════════════════
## FILE: run_swift_perf.sh
## The O3-sandwich perf harness: swiftc -O -emit-ir -> opt config -> opt O3 -> llc(-relocation-model=pic, probe-stack strip) -> link. base/base2x round-trip controls, output-equivalence soundness gate, shuffled reps, median-primary. EXTRA_SRCS for multi-file (CryptoSwift).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_swift_perf.sh -- Swift x ODeSSy runtime experiment (sha256 first).
#
# Question: the 3 statically-eliminated bounds checks sit in SHA-256's
# message-schedule inner loop (blocks 257/259/261; 16 iters/block, every
# block). Ceiling from the native matrix: ~+9.5% (checks off). How much
# does deleting 3-of-5 hot-loop checks actually recover?
#
# Pipeline (identical for every config; only the middle opt differs):
#   swiftc -O -emit-ir  ->  opt <config>  ->  llc -O2  ->  swiftc link
#
# Configs (attribution doctrine -- report oracle vs base AND vs base2x):
#   base    : opt round-trip with -passes=verify        (control for the
#             emit-ir/opt/llc sandwich itself)
#   base2x  : TWO verify round-trips                    (control for
#             round-trip-count effects; any base~base2x gap = noise floor)
#   oracle  : oracle-pass<heavy;ldeq;timeout=300;threads=8>  (no vacuity
#             in perf runs, per doctrine)
#
# SOUNDNESS GATE: all three binaries must print byte-identical stdout on
# the workload before any timing is trusted. A mismatch aborts the run.
#
# Usage : bash run_swift_perf.sh                     (Mac smoke: REPS=3)
#         REPS=15 bash run_swift_perf.sh             (server night)
#         RUNARGS="..." to pass workload args to the kernel binary.
# Needs : swiftc, pinned opt+llc, python3; run from repo root.
# Output: evaluation/perf_swift.csv (append-aware) + summary table
#         (median primary; min/avg shown; outlier audit min<98%median).
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
W="$ROOT/perf_swift_work"; mkdir -p "$W" "$ROOT/evaluation"
CSV="$ROOT/evaluation/perf_swift.csv"
KERNEL="${KERNEL:-$NB/sha256.swift}"
stem=$(basename "$KERNEL" .swift)
REPS="${REPS:-3}"
RUNARGS="${RUNARGS:-}"
ORACLE_PASSES="${ORACLE_PASSES:-oracle-pass<heavy;ldeq;timeout=300;threads=8>}"

for t in swiftc opt llc python3; do
  command -v $t >/dev/null || { echo "[FATAL] $t not on PATH"; exit 1; }
done
echo "swiftc: $(swiftc --version 2>&1 | head -1)"
echo "opt   : $(opt --version | head -1)"
echo "reps  : $REPS   kernel: $stem   runargs: '${RUNARGS}'"
echo ""

# ---------- PHASE A: build all three binaries ----------
echo "==== PHASE A: building ===="
# EXTRA_SRCS: additional .swift files compiled whole-module with the
# kernel (library rows, e.g. CryptoSwift). Empty => single-file as before.
swiftc -O -wmo -emit-ir "$KERNEL" ${EXTRA_SRCS:-} -o "$W/$stem.ll" \
  || { echo "[FATAL] swiftc emit-ir"; exit 1; }
traps0=$(grep -cE 'call void @llvm\.(ubsan)?trap' "$W/$stem.ll")

build_one() {  # $1=config
  local cfg=$1 ll="$W/$stem.$1.ll" elim=0
  # CLEANUP runs in EVERY config (symmetric exposure) and is a FULL O3:
  # the value of an eliminated check is what the optimizer can do once
  # the branch is gone (unroll/vectorize/schedule), so the oracle must
  # be SANDWICHED: swiftc -O -> oracle -> O3 -> llc. base gets the same
  # post-O3 (one round-trip), base2x gets it twice (round-trip control),
  # so deltas attribute to the eliminations, not to extra optimization.
  local CLEANUP="default<O3>"
  case $cfg in
    base)   opt -passes="$CLEANUP" -S "$W/$stem.ll" -o "$ll" || return 1 ;;
    base2x) opt -passes="$CLEANUP" -S "$W/$stem.ll" -o "$W/.tmp.ll" \
            && opt -passes="$CLEANUP" -S "$W/.tmp.ll" -o "$ll" || return 1 ;;
    oracle) mkdir -p logs/compilations
            opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
                -passes="$ORACLE_PASSES,$CLEANUP" -S "$W/$stem.ll" -o "$ll" \
                2>"$W/$stem.oracle.err" || return 1
            elim=$(grep -oE 'Total Traps Eliminated: [0-9]+' "$W/$stem.oracle.err" \
                   | awk '{s+=$4} END{print s+0}') ;;
  esac
  # Strip Swift's stack-probe hardening attr: trunk llc rejects it on
  # AArch64 ("Unsupported stack probing method"). Applied identically to
  # every config, so the comparison stays fair; note it in the paper's
  # methodology (binaries lack stack-clash probes vs stock swiftc).
  perl -pi -e 's/"probe-stack"="[^"]*"\s*//g' "$ll"
  llc -O2 -relocation-model=pic -filetype=obj "$ll" -o "$W/$stem.$cfg.o" || return 1
  swiftc -O "$W/$stem.$cfg.o" -o "$W/$stem.$cfg" || return 1
  local t1; t1=$(grep -cE 'call void @llvm\.(ubsan)?trap' "$ll")
  printf '  built %-8s traps %4s->%-4s bin %8s B  eliminated %s\n' \
    "$cfg" "$traps0" "$t1" "$(wc -c < "$W/$stem.$cfg" | tr -d ' ')" "$elim"
}
for cfg in base base2x oracle; do
  build_one $cfg || { echo "[FATAL] build $cfg failed"; exit 1; }
done

# ---------- PHASE B: soundness gate (byte-identical stdout) ----------
echo "==== PHASE B: output equivalence gate ===="
for cfg in base base2x oracle; do
  "$W/$stem.$cfg" $RUNARGS > "$W/out.$cfg" 2>/dev/null \
    || { echo "[FATAL] $cfg run failed"; exit 1; }
done
cmp -s "$W/out.base" "$W/out.base2x" && cmp -s "$W/out.base" "$W/out.oracle" \
  || { echo "[FATAL] OUTPUT MISMATCH -- soundness gate tripped. Investigate before timing!"; exit 1; }
echo "  outputs byte-identical across all configs -- gate passed"

# ---------- PHASE C: shuffled interleaved timing ----------
echo "==== PHASE C: $REPS shuffled reps x 3 configs ===="
[ -f "$CSV" ] || echo "kernel,config,rep,seconds" > "$CSV"
python3 - "$W" "$stem" "$REPS" "$CSV" "$RUNARGS" <<'PYEOF'
import random, subprocess, sys, time
w, stem, reps, csv, runargs = sys.argv[1], sys.argv[2], int(sys.argv[3]), sys.argv[4], sys.argv[5]
args = runargs.split() if runargs else []
cfgs = ["base", "base2x", "oracle"]
rows = []
for r in range(reps):
    order = cfgs[:]; random.shuffle(order)
    for c in order:
        exe = f"{w}/{stem}.{c}"
        t0 = time.perf_counter()
        subprocess.run([exe] + args, stdout=subprocess.DEVNULL, check=True)
        rows.append((c, r + 1, time.perf_counter() - t0))
    print(f"  rep {r+1}/{reps}", flush=True)
with open(csv, "a") as f:
    for c, r, s in rows:
        f.write(f"{stem},{c},{r},{s:.6f}\n")
# summary: median primary, min/avg shown, outlier audit
import statistics
print(f"\n{'config':8s} {'median':>9s} {'min':>9s} {'avg':>9s}  audit")
med = {}
for c in cfgs:
    xs = sorted(s for cc, r, s in rows if cc == c)
    m = statistics.median(xs); med[c] = m
    audit = "OUTLIER(min<98%med)" if xs[0] < 0.98 * m else "ok"
    print(f"{c:8s} {m:9.4f} {xs[0]:9.4f} {sum(xs)/len(xs):9.4f}  {audit}")
for ref in ("base", "base2x"):
    d = (med[ref] - med["oracle"]) / med[ref] * 100
    print(f"oracle vs {ref}: {d:+.2f}% (median)")
PYEOF
echo ""
echo "CSV appended: $CSV   (rerun with REPS=15 on the server for the real number)"
```

════════════════════════════════════════════════════════════════════
## FILE: run_tests.sh
## Regression gate. Expected PASS=17/FAIL=6 (heavy/ldeq/stride tests under the light gate BY DESIGN; the two *_sat tripwires must PASS).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_tests.sh -- regression suite over the hand-written IR tests in tests/.
#
# Ground truth from the filename convention:
#   *_sat*  -> the trap is reachable, expect SAT (trap kept)
#   others  -> the trap is provably dead, expect UNSAT (trap eliminated)
#
# For each .ll: run analysis-only, pull per-trap verdicts from the pass log,
# and PASS/FAIL against the expectation. Any [VACUOUS] or [Skip] is an
# automatic FAIL regardless of expectation -- those mean the machinery broke.
#
# Exit code: 0 iff every test passes (usable as a pre-commit / CI gate).
# =============================================================================
set -u
# repo root = directory containing this script (override with ROOT=... if needed)
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
cd "$ROOT" || exit 1
mkdir -p logs/compilations

echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }

pass=0; fail=0
printf '\n%-20s %-8s %6s %6s %8s %8s %6s  %s\n' \
  test expect unsat sat unknown vacuous skips result

for ll in tests/*.ll; do
  stem=$(basename "$ll" .ll)
  vlog="logs/compilations/${stem}.txt"
  rm -f "$vlog"

  opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<vacuity>" \
      -disable-output "$ll" >/dev/null 2>&1
  rc=$?

  if [ "$rc" -ne 0 ] || [ ! -f "$vlog" ]; then
    printf '%-20s %-8s %6s %6s %8s %8s %6s  %s\n' \
      "$stem" "?" - - - - - "FAIL (opt rc=$rc / no log)"
    fail=$((fail+1)); continue
  fi

  unsat=$(grep -c 'UNSAT' "$vlog")
  sat=$(grep -c 'SAT (WARNING' "$vlog")
  unknown=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
  vacuous=$(grep -c '\[VACUOUS\]' "$vlog")
  skips=$(grep -c '\[Skip\]' "$vlog")

  case "$stem" in
    *_sat*) expect="SAT"   ;;
    *)      expect="UNSAT" ;;
  esac

  result="FAIL"
  if [ "$vacuous" -eq 0 ] && [ "$skips" -eq 0 ] && [ "$unknown" -eq 0 ]; then
    if [ "$expect" = "UNSAT" ] && [ "$unsat" -ge 1 ] && [ "$sat" -eq 0 ]; then
      result="PASS"
    elif [ "$expect" = "SAT" ] && [ "$sat" -ge 1 ] && [ "$unsat" -eq 0 ]; then
      result="PASS"
    fi
  fi
  [ "$result" = "PASS" ] && pass=$((pass+1)) || fail=$((fail+1))

  printf '%-20s %-8s %6s %6s %8s %8s %6s  %s\n' \
    "$stem" "$expect" "$unsat" "$sat" "$unknown" "$vacuous" "$skips" "$result"
done

echo ""
echo "================ PASS=$pass FAIL=$fail ================"
[ $fail -eq 0 ] || { echo "Inspect failures: logs/compilations/<test>.txt"; exit 1; }
```

════════════════════════════════════════════════════════════════════
## FILE: run_timeout_sweep.sh
## Per-query timeout sweep (the 52->50@100ms / cliff@1-3ms result).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_timeout_sweep.sh -- the advisor-requested per-query TIMEOUT sweep.
# Fixed input (zlib/deflate unsigned O1 -- the trap-dense audit workhorse),
# fixed threads, timeout in {10000,3000,1000,300,100,30} ms. Reports verdict
# counts + stage wall per point: the "latency is a dial" table for the paper.
# Analysis-only; no stabilization needed (wall is indicative, verdicts exact).
# Knobs: THREADS=8  INPUT=evaluation/zlib/deflate_integer_unsigned_O1.ll
# Out  : evaluation/timeout_sweep.csv
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
THREADS=${THREADS:-8}
INPUT=${INPUT:-evaluation/zlib/deflate_integer_unsigned_O1.ll}
CSV="$ROOT/evaluation/timeout_sweep.csv"
cd "$ROOT" || exit 1
[ -f "$INPUT" ] || { echo "[FATAL] $INPUT missing -- run SPECS=unsigned OPTS=O1 bash run_zlib.sh once first"; exit 1; }
( cd build && ninja ) || exit 1
echo "timeout_ms,unsat,sat,unknown,vacuous,skips,wall_s" > "$CSV"
stem=$(basename "$INPUT" .ll)
for T in 1 3 10 30 100 300 1000 3000 10000; do
  t0=$(date +%s.%N)
  opt -load-pass-plugin=build/OraclePass.so \
      -passes="oracle-pass<vacuity;timeout=${T};threads=${THREADS}>" \
      -disable-output "$INPUT" > "logs/opt_runs/sweep_${T}.log" 2>&1
  t1=$(date +%s.%N)
  wall=$(awk -v a="$t0" -v b="$t1" 'BEGIN{printf "%.2f", b-a}')
  vlog="logs/compilations/$stem.txt"
  u=$(grep -c 'UNSAT' "$vlog"); s=$(grep -c 'SAT (WARNING' "$vlog")
  k=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
  v=$(grep -c '\[VACUOUS\]' "$vlog"); sk=$(grep -c '\[Skip\]' "$vlog")
  echo "$T,$u,$s,$k,$v,$sk,$wall" >> "$CSV"
  printf '  timeout=%-6sms  unsat=%-4s sat=%-4s unknown=%-4s wall=%ss\n' "$T" "$u" "$s" "$k" "$wall"
done
echo "CSV: $CSV   (paper claim: UNSATs survive tight timeouts; wall collapses)"
```

════════════════════════════════════════════════════════════════════
## FILE: run_zlib.sh
## Isolated dev harness: zlib/deflate only, analysis+transform tables per (spec x opt), TIER=light|heavy.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_zlib.sh -- ISOLATED dev harness: zlib/deflate, SIGNED + UNSIGNED specs.
#
# Same fast inner loop as run_zlib_signed.sh, now iterating the sanitizer
# spec as well: rebuild pass, compile deflate.c per (spec x opt) with traps +
# aggressive inlining, run analysis + transform, print one honest table.
#
# Knobs:
#   SPECS="signed"        restrict specs   (default "signed unsigned")
#   OPTS="O1"             restrict opt levels (default "O1 O3")
#   TIMEOUT_SECS=NNN      per-opt-run wall clock (default 600)
#   TIER=heavy            precision tier: light (default) | heavy
#   THREADS=N             Level-2: per-trap worker threads inside opt
#                         (default 1 = serial reference; verdicts are
#                         THREADS-invariant by construction)
#   INLINE_AGGRESSIVE=0   disable the inliner cranking
#   ZLIB_SRC=/path        zlib sources (default: <repo-parent>/zlib)
#
# Counting: 'call void @llvm.ubsantrap' counts CALL SITES only (no declare
# line). unknown = solver gave up (kept). vacuous = UNSATs rejected by the
# vacuity audit (must stay 0).
# =============================================================================
set -u
# Self-locating: repo root = this script's directory; benchmarks live beside
# the repo. All three overridable via environment (ROOT / PL_ROOT / ZLIB_SRC).
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
ZLIB_SRC="${ZLIB_SRC:-$PL_ROOT/zlib}"
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
TIER=${TIER:-light}
THREADS=${THREADS:-1}
case "$TIER" in
  light) AUDIT_PASSES="oracle-pass<vacuity;threads=${THREADS}>"
         XFORM_PASSES="oracle-pass<threads=${THREADS}>,simplifycfg,adce,verify" ;;
  heavy) AUDIT_PASSES="oracle-pass<vacuity;heavy;threads=${THREADS}>"
         XFORM_PASSES="oracle-pass<heavy;threads=${THREADS}>,simplifycfg,adce,verify" ;;
  *) echo "[FATAL] unknown TIER '$TIER' (light|heavy)"; exit 1 ;;
esac
read -r -a OPT_ARR  <<< "${OPTS:-O1 O3}"
read -r -a SPEC_ARR <<< "${SPECS:-signed unsigned}"

INLINE_AGGRESSIVE=${INLINE_AGGRESSIVE:-1}
INLINE_FLAGS=()
if [ "$INLINE_AGGRESSIVE" = "1" ]; then
  INLINE_FLAGS=(-finline-functions
    -mllvm -inline-threshold=100000
    -mllvm -inlinehint-threshold=100000
    -mllvm -inlinecold-threshold=100000)
fi

cd "$ROOT" || exit 1
mkdir -p evaluation/zlib logs/compilations logs/opt_runs

echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }

if command -v timeout >/dev/null 2>&1; then
  run_opt() { timeout "${TIMEOUT_SECS}s" "$@"; }
else
  run_opt() { "$@"; }
fi

printf '\n%-9s %-4s %8s %8s %6s %6s %8s %8s %6s %8s %8s  %s\n' \
  spec opt before intr unsat sat unknown vacuous skips after elim status

for spec in "${SPEC_ARR[@]}"; do
  case "$spec" in
    signed)   SANF=(-fsanitize=signed-integer-overflow
                    -fsanitize-trap=signed-integer-overflow) ;;
    unsigned) SANF=(-fsanitize=unsigned-integer-overflow
                    -fsanitize-trap=unsigned-integer-overflow) ;;
    *) echo "[FATAL] unknown spec '$spec'"; exit 1 ;;
  esac
  for opt in "${OPT_ARR[@]}"; do
    stem="deflate_integer_${spec}_${opt}"
    [ "$TIER" = "heavy" ] && stem="${stem}_heavy"
    in="evaluation/zlib/${stem}.ll"
    out="evaluation/zlib/${stem}_oracle.ll"
    alog="logs/opt_runs/${stem}.analysis.log"
    xlog="logs/opt_runs/${stem}.transform.log"

    # ---- compile sanitized baseline ----
    clang "-$opt" -S -emit-llvm -g "${SANF[@]}" "${INLINE_FLAGS[@]}" \
      -I"$ZLIB_SRC" "$ZLIB_SRC/deflate.c" -o "$in" \
      || { echo "$spec $opt : COMPILE FAILED"; continue; }

    before=$(grep -c 'call void @llvm.ubsantrap' "$in")
    intr=$(grep -c 'call .*\.with\.overflow' "$in")

    # ---- (A) analysis-only ----
    run_opt opt -load-pass-plugin=build/OraclePass.so -passes="$AUDIT_PASSES" \
        -disable-output "$in" > "$alog" 2>&1
    rc_a=$?
    vlog="logs/compilations/${stem}_analysis.txt"
    [ -f "logs/compilations/${stem}.txt" ] && cp "logs/compilations/${stem}.txt" "$vlog"

    if [ -f "$vlog" ]; then
      unsat=$(grep -c 'UNSAT' "$vlog")
      sat=$(grep -c 'SAT (WARNING' "$vlog")
      unknown=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
      vacuous=$(grep -c '\[VACUOUS\]' "$vlog")
      skips=$(grep -c '\[Skip\]' "$vlog")
    else
      unsat=0; sat=0; unknown=0; vacuous=0; skips=0
    fi

    # ---- (B) transform ----
    rm -f "$out"
    run_opt opt -load-pass-plugin=build/OraclePass.so \
        -passes="$XFORM_PASSES" \
        -S "$in" -o "$out" > "$xlog" 2>&1
    rc_x=$?
    if [ "$rc_x" -eq 0 ] && [ -s "$out" ]; then
      after=$(grep -c 'call void @llvm.ubsantrap' "$out")
      elim=$(( before - after ))
      status="OK"
    else
      after="NA"; elim="NA"
      [ "$rc_x" -eq 124 ] && status="XFORM_TIMEOUT" || status="XFORM_CRASH(rc=$rc_x)"
    fi
    if [ "$rc_a" -ne 0 ]; then
      [ "$rc_a" -eq 124 ] && status="ANALYSIS_TIMEOUT;$status" || status="ANALYSIS_CRASH(rc=$rc_a);$status"
    fi

    printf '%-9s %-4s %8s %8s %6s %6s %8s %8s %6s %8s %8s  %s\n' \
      "$spec" "$opt" "$before" "$intr" "$unsat" "$sat" "$unknown" "$vacuous" "$skips" "$after" "$elim" "$status"
  done
done

echo ""
echo "Per-trap verdicts : logs/compilations/deflate_integer_<spec>_<opt>_analysis.txt"
echo "Locate UNSATs     : grep -n -B3 'UNSAT' logs/compilations/deflate_integer_signed_O1_analysis.txt"
```

════════════════════════════════════════════════════════════════════
## FILE: run_zlib_perf.sh
## C compile+runtime benchmark v5: specs none/signed/unsigned/both/anf, base/base2x/oracle, JOBS x THREADS parallel oracle stage, tmpfs corpora, shuffled reps; raw runs in CSV (median via make_perf_report.py).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_zlib_perf.sh -- v5: COMPILE + RUNTIME benchmark, multi-size + shuffled,
#                    PARALLEL oracle stage (Level-1 + Level-2), MIN-based.
#
# v5 changes (noise-control release, CloudLab c220g2):
#   * MIN-BASED: min_run_s emitted next to avg_run_s (min = primary index;
#     noise only ever ADDS time). make_perf_report.py is min-primary too.
#   * SIZES default "8 64 256" -- 512 dropped (fires the known intentional
#     unsigned wraparound trap, rc=132, corrupting protocol timing; keep one
#     manual 512 run archived as the dynamic spec-mismatch finding only).
#   * PIN: timed+warmup runs go through $PIN (default: numactl socket-0
#     cpu+mem binding when numactl exists; PIN="" disables). Kills
#     cross-socket memory luck and scheduler wander.
#   * Corpora live in /dev/shm when available (no disk I/O in timing).
#   * Parallelism defaults sized from nproc: THREADS=8, JOBS=nproc/THREADS
#     (c220g2: 5x8=40). Timing phase is strictly serial regardless.
#
# Specs   : none | signed | unsigned | both   (sanitizer configuration)
# Configs : base   = clang -O3                                  -> binary
#           base2x = clang -O3 -> opt default<O3>               -> binary
#           oracle = clang -O3 -> oracle+simplifycfg+adce+verify
#                             -> opt default<O3>                -> binary
# Sizes   : corpus of SIZES MB (default "8 64 512") -- cold-path eliminations
#           should show SHRINKING %-speedup as size grows (fixed savings /
#           growing hot-loop denominator); a flat % means a warm path changed.
#
# v4 change:
#   * LEVEL-2 PARALLELISM: oracle-pass is now a module pass with an internal
#     per-trap worker pool, selected by the threads=N pass parameter (THREADS
#     knob below). Composes with Level-1 (JOBS concurrent opt processes);
#     keep JOBS*THREADS <= cores. THREADS=1 (default) == v3 behavior, and
#     verdicts/output IR are THREADS-invariant by construction.
#
# v3 changes:
#   * LEVEL-1 PARALLELISM: the oracle stage runs its per-TU `opt` invocations
#     as up to JOBS concurrent PROCESSES (default: CPU count; JOBS=1 == old
#     serial behavior). TUs are fully independent (separate .ll in/out files
#     and per-module logs) => no collisions. ORACLE_S is the stage
#     WALL-CLOCK; with JOBS>1 (or THREADS>1) the derived per-trap ms is
#     wall-clock based ("latency with parallelism"). After the wave, every
#     expected output is checked; missing/empty => FATAL with a pointer to
#     its oracle.log.
#   * AVG-BASED REPORTING: the min statistic is dropped; the CSV carries
#     avg_run_s plus the full raw run list (runs_s), so any other statistic
#     can be recomputed offline from the raw column if ever needed.
#
# v2 protocol (unchanged): phase separation + cooldown; shuffled interleaved
# reps; binary file+.text size records.
#
# Output: evaluation/perf_zlib.csv (TIER=heavy: evaluation/perf_zlib_heavy.csv)
# Knobs : RUNS=10 SIZES="8 64 256" LEVEL=9 TIMEOUT_SECS=600 COOLDOWN=60
#         TIER=light|heavy  ZLIB=/path/to/zlib  JOBS=N  THREADS=N
#         PIN="numactl ..."|"taskset -c 2-9"|""   (timed-run wrapper)
# NOTE  : vacuity check intentionally OFF here (plain 'oracle-pass').
# NOTE  : requires GNU userland (timeout, stat -c, shuf, GNU size) and
#         bash >= 4 -- on macOS: brew coreutils gnubin on PATH + brew bash;
#         and remember arm64 runtime numbers are NOT comparable to x86 tables.
# =============================================================================
set -u
# Self-locating: repo root = this script's directory; benchmarks live beside
# the repo. All overridable via environment (ROOT / PL_ROOT / ZLIB).
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
ZLIB="${ZLIB:-$PL_ROOT/zlib}"
RUNS=${RUNS:-10}
read -r -a SIZE_ARR <<< "${SIZES:-8 64 256}"
LEVEL=${LEVEL:-9}
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
COOLDOWN=${COOLDOWN:-60}
NPROC=$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4)
# Level-2: worker threads INSIDE each opt process (per-trap pool).
# Level-1 x Level-2 sized to the machine: JOBS*THREADS == nproc.
THREADS=${THREADS:-8}
JOBS=${JOBS:-$(( NPROC / THREADS > 0 ? NPROC / THREADS : 1 ))}
# PIN wraps ONLY warmup + timed runs (never the parallel compile stage):
# one socket, local memory. Override PIN="taskset -c 2-9" or PIN="" to disable.
if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else
    PIN=""
  fi
fi
TIER=${TIER:-light}
case "$TIER" in
  light) ORACLE_PASSES="oracle-pass<threads=${THREADS}>,simplifycfg,adce,verify" ;;
  heavy) ORACLE_PASSES="oracle-pass<heavy;threads=${THREADS}>,simplifycfg,adce,verify" ;;
  *) echo "[FATAL] unknown TIER '$TIER' (light|heavy)"; exit 1 ;;
esac
CSV="$ROOT/evaluation/perf_zlib.csv"
[ "$TIER" = "heavy" ] && CSV="$ROOT/evaluation/perf_zlib_heavy.csv"
W="$ROOT/perf_test"

INLINE_FLAGS=(-finline-functions
  -mllvm -inline-threshold=100000
  -mllvm -inlinehint-threshold=100000
  -mllvm -inlinecold-threshold=100000)
ZDEFS=(-DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1)
SRCS=(adler32 compress crc32 deflate gzclose gzlib gzread gzwrite infback \
      inffast inflate inftrees trees uncompr zutil)

set_san() {
  case "$1" in
    none)     SANF=() ;;
    signed)   SANF=(-fsanitize=signed-integer-overflow
                    -fsanitize-trap=signed-integer-overflow) ;;
    unsigned) SANF=(-fsanitize=unsigned-integer-overflow
                    -fsanitize-trap=unsigned-integer-overflow) ;;
    both)     SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow) ;;
    # anf = zlib's all-non-firing union (robust matrix): everything that
    # can actually SHIP on zlib -- the deployable config ODeSSy attacks.
    anf)      SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds) ;;
  esac
}
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }

cd "$ROOT" || exit 1
echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }
rm -rf "$W"; mkdir -p "$W"
echo "==== oracle-stage parallelism: JOBS=$JOBS x THREADS=$THREADS ===="

echo "==== minigzip driver (unsanitized, shared by every build) ===="
MG="$ZLIB/test/minigzip.c"; [ -f "$MG" ] || MG="$ZLIB/minigzip.c"
[ -f "$MG" ] || { echo "[FATAL] minigzip.c not found"; exit 1; }
clang -O2 "${ZDEFS[@]}" -I"$ZLIB" -c "$MG" -o "$W/minigzip.o" || exit 1

# =============================================================================
# PHASE A: build every (spec x config) binary; record compile metrics + sizes.
# =============================================================================
declare -A CLANG_S TRAPS_IN                                  # per spec
declare -A B_PATH B_BYTES B_TEXT TRAPS_FIN ORACLE_S O3_S BACKEND_S TOTAL_S  # per spec.cfg
KEYS2=()   # list of "spec.cfg"

echo ""
echo "==== PHASE A: building all binaries ===="
for spec in ${SPECS:-none signed unsigned both}; do
  set_san "$spec"
  t0=$(now)
  for f in "${SRCS[@]}"; do
    clang -O3 -S -emit-llvm "${SANF[@]}" "${INLINE_FLAGS[@]}" "${ZDEFS[@]}" -I"$ZLIB" \
      "$ZLIB/$f.c" -o "$W/${spec}.${f}.ll" || { echo "[FATAL] clang $spec/$f"; exit 1; }
  done
  CLANG_S[$spec]=$(elapsed "$t0" "$(now)")
  ti=0
  for f in "${SRCS[@]}"; do
    n=$(grep -c 'call void @llvm.ubsantrap' "$W/${spec}.${f}.ll"); ti=$((ti+n))
  done
  TRAPS_IN[$spec]=$ti

  CONFIGS=(base base2x oracle)
  [ "$spec" = "none" ] && CONFIGS=(base)
  for cfg in "${CONFIGS[@]}"; do
    k="${spec}.${cfg}"
    ORACLE_S[$k]=0.000; O3_S[$k]=0.000
    case "$cfg" in
      base) sfx="ll" ;;
      base2x)
        t0=$(now)
        for f in "${SRCS[@]}"; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.ll" \
              -o "$W/${spec}.${f}.b2.ll" || exit 1
        done
        O3_S[$k]=$(elapsed "$t0" "$(now)")
        sfx="b2.ll" ;;
      oracle)
        # ---- LEVEL-1 PARALLEL ORACLE STAGE (each opt is Level-2
        # multi-threaded internally when THREADS>1) ----
        # Up to JOBS concurrent opt processes, one per TU. Independent
        # inputs/outputs/logs => no collisions. ORACLE_S = wall-clock of
        # the whole wave (the honest "compile latency with parallelism").
        t0=$(now)
        running=0
        for f in "${SRCS[@]}"; do
          timeout "${TIMEOUT_SECS}s" opt -load-pass-plugin=build/OraclePass.so \
            -passes="$ORACLE_PASSES" \
            -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.or.ll" \
            > "$W/${spec}.${f}.oracle.log" 2>&1 &
          running=$((running+1))
          if [ "$running" -ge "$JOBS" ]; then
            wait -n            # one slot frees up
            running=$((running-1))
          fi
        done
        wait                   # drain the remaining jobs
        # Post-wave check: every output must exist and be non-empty.
        for f in "${SRCS[@]}"; do
          [ -s "$W/${spec}.${f}.or.ll" ] || {
            echo "[FATAL] oracle failed on $spec/$f (see $W/${spec}.${f}.oracle.log)"
            exit 1
          }
        done
        ORACLE_S[$k]=$(elapsed "$t0" "$(now)")
        t0=$(now)
        for f in "${SRCS[@]}"; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.or.ll" \
              -o "$W/${spec}.${f}.or2.ll" || exit 1
        done
        O3_S[$k]=$(elapsed "$t0" "$(now)")
        sfx="or2.ll" ;;
    esac

    tf=0; t0=$(now); OBJS=()
    for f in "${SRCS[@]}"; do
      fin="$W/${spec}.${f}.${sfx}"
      n=$(grep -c 'call void @llvm.ubsantrap' "$fin"); tf=$((tf+n))
      llc -O3 -relocation-model=pic -filetype=obj "$fin" \
          -o "$W/${spec}.${cfg}.${f}.o" || exit 1
      OBJS+=("$W/${spec}.${cfg}.${f}.o")
    done
    BIN="$W/mg.${spec}.${cfg}"
    clang "${OBJS[@]}" "$W/minigzip.o" -o "$BIN" || exit 1
    BACKEND_S[$k]=$(elapsed "$t0" "$(now)")
    TOTAL_S[$k]=$(awk -v a="${CLANG_S[$spec]}" -v b="${ORACLE_S[$k]}" \
                      -v c="${O3_S[$k]}" -v d="${BACKEND_S[$k]}" \
                  'BEGIN{printf "%.3f", a+b+c+d}')
    TRAPS_FIN[$k]=$tf
    B_PATH[$k]="$BIN"
    B_BYTES[$k]=$(stat -c%s "$BIN")
    B_TEXT[$k]=$(size "$BIN" | awk 'NR==2{print $1}')
    KEYS2+=("$k")
    printf '  built %-16s traps %5s->%-5s bin %8s B text %8s B compile %8ss (smt %ss)\n' \
      "$k" "${TRAPS_IN[$spec]}" "$tf" "${B_BYTES[$k]}" "${B_TEXT[$k]}" \
      "${TOTAL_S[$k]}" "${ORACLE_S[$k]}"
  done
done

# =============================================================================
# PHASE B: corpora (text, by doubling -- fast even for 512 MB).
# =============================================================================
echo ""
echo "==== PHASE B: corpora (${SIZE_ARR[*]} MB) ===="
SEED="$W/seed.txt"; cat "$ZLIB"/*.c "$ZLIB"/*.h > "$SEED"
# tmpfs when available: corpus reads never touch disk during timing.
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_corpus.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
echo "  corpus dir: $CORPDIR"
declare -A CORPUS
for mb in "${SIZE_ARR[@]}"; do
  c="$CORPDIR/corpus.${mb}M"
  cp "$SEED" "$c"
  while [ "$(stat -c%s "$c")" -lt $((mb*1024*1024)) ]; do
    cat "$c" "$c" > "$c.t" && mv "$c.t" "$c"
  done
  truncate -s "${mb}M" "$c"
  CORPUS[$mb]="$c"
  echo "  corpus ${mb} MB ready"
done

echo ""
echo "==== cooldown ${COOLDOWN}s after compile phase (thermal settle) ===="
sleep "$COOLDOWN"

# =============================================================================
# PHASE C: warmup -- one untimed run per (binary x size); primes page cache.
# =============================================================================
echo "==== PHASE C: warmup ====  [pin: ${PIN:-none}]"
MKEYS=()   # measurement keys "spec.cfg|mb"
for k in "${KEYS2[@]}"; do
  for mb in "${SIZE_ARR[@]}"; do
    $PIN "${B_PATH[$k]}" -"$LEVEL" < "${CORPUS[$mb]}" > /dev/null 2>&1
    rc=$?
    [ "$rc" -ge 128 ] && echo "  [TRAP] $k @${mb}MB warmup died rc=$rc -- a trap fired!"
    MKEYS+=("$k|$mb")
  done
done

# =============================================================================
# PHASE D: shuffled, interleaved measurement. Each rep runs every
# (binary x size) exactly once, in a fresh random order, so environmental
# drift is spread uniformly across all configurations.
# =============================================================================
echo "==== PHASE D: $RUNS shuffled reps x ${#MKEYS[@]} (binary x size) pairs ===="
declare -A RUNTIMES
for rep in $(seq "$RUNS"); do
  echo "  rep $rep/$RUNS  ($(date +%H:%M:%S))"
  while IFS= read -r mk; do
    k="${mk%|*}"; mb="${mk#*|}"
    t0=$(now)
    $PIN "${B_PATH[$k]}" -"$LEVEL" < "${CORPUS[$mb]}" > /dev/null 2>&1
    rc=$?
    t1=$(now)
    [ "$rc" -ge 128 ] && echo "  [TRAP] $k @${mb}MB rep $rep died rc=$rc -- a trap fired!"
    RUNTIMES[$mk]="${RUNTIMES[$mk]:-}$(elapsed "$t0" "$t1");"
  done < <(printf '%s\n' "${MKEYS[@]}" | shuf)
done

# =============================================================================
# PHASE E: emit CSV (min-primary + avg; raw run list kept for reprocessing).
# =============================================================================
echo "spec,config,size_mb,traps_in,traps_final,bin_bytes,text_bytes,clang_s,oracle_s,o3_s,backend_link_s,total_compile_s,min_run_s,avg_run_s,runs_s" > "$CSV"
printf '\n%-9s %-7s %5s %6s %6s %10s %9s %9s %9s %9s\n' \
  spec config MB t_in t_fin bin_B text_B total_s min_run avg_run
for k in "${KEYS2[@]}"; do
  spec="${k%.*}"; cfg="${k#*.}"
  for mb in "${SIZE_ARR[@]}"; do
    mk="$k|$mb"
    runs_join="${RUNTIMES[$mk]%;}"
    avg=$(echo "$runs_join" | tr ';' '\n' | \
      awk '{s+=$1} END{printf "%.3f", s/NR}')
    mn=$(echo "$runs_join" | tr ';' '\n' | \
      awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
    echo "$spec,$cfg,$mb,${TRAPS_IN[$spec]},${TRAPS_FIN[$k]},${B_BYTES[$k]},${B_TEXT[$k]},${CLANG_S[$spec]},${ORACLE_S[$k]},${O3_S[$k]},${BACKEND_S[$k]},${TOTAL_S[$k]},$mn,$avg,\"$runs_join\"" >> "$CSV"
    printf '%-9s %-7s %5s %6s %6s %10s %9s %9s %9s %9s\n' \
      "$spec" "$cfg" "$mb" "${TRAPS_IN[$spec]}" "${TRAPS_FIN[$k]}" \
      "${B_BYTES[$k]}" "${B_TEXT[$k]}" "${TOTAL_S[$k]}" "$mn" "$avg"
  done
done

echo ""
echo "CSV: $CSV   (then: python3 make_perf_report.py)   [oracle stage JOBS=$JOBS x THREADS=$THREADS]"
echo "Cold-path check: if %-speedup shrinks 8 -> 64 -> 256 MB, the savings are"
echo "constant-per-invocation (cold path); flat % means a scaled path changed."
```

════════════════════════════════════════════════════════════════════
## FILE: run_zlib_signed.sh
## Older signed-only zlib dev loop (superseded by run_zlib.sh).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_zlib_signed.sh -- ISOLATED dev harness: zlib/deflate, SIGNED spec only.
#
# Fast inner loop for auditing the signed UNSATs: rebuild pass, compile
# deflate.c at O1+O3 with signed-integer-overflow traps + aggressive inlining,
# run analysis + transform, print one honest summary table.
#
# Knobs:
#   TIMEOUT_SECS=NNN   per-opt-run wall clock (default 600)
#   OPTS="O1"          restrict opt levels (default "O1 O3")
#   INLINE_AGGRESSIVE=0 disable the inliner cranking
#
# Counting notes (fixed vs the old matrix script):
#   * 'call void @llvm.ubsantrap' -- counts CALL SITES only, not the module's
#     `declare` line (the old grep over-counted by exactly 1).
#   * unknown  = solver timeouts / give-ups (kept, correctly, as not-proven)
#   * vacuous  = UNSATs rejected by the vacuity audit (needs the push/pop
#     patch in OraclePass.cpp; 0 until then)
# =============================================================================
set -u
PL_ROOT="$HOME/michigan/pl"
ROOT="$PL_ROOT/smt-compiler-oracle"
ZLIB_SRC="$PL_ROOT/zlib"
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
read -r -a OPT_ARR <<< "${OPTS:-O1 O3}"

INLINE_AGGRESSIVE=${INLINE_AGGRESSIVE:-1}
INLINE_FLAGS=()
if [ "$INLINE_AGGRESSIVE" = "1" ]; then
  INLINE_FLAGS=(-finline-functions
    -mllvm -inline-threshold=100000
    -mllvm -inlinehint-threshold=100000
    -mllvm -inlinecold-threshold=100000)
fi

cd "$ROOT" || exit 1
mkdir -p evaluation/zlib logs/compilations logs/opt_runs

echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }

if command -v timeout >/dev/null 2>&1; then
  run_opt() { timeout "${TIMEOUT_SECS}s" "$@"; }
else
  run_opt() { "$@"; }
fi

printf '\n%-6s %8s %8s %6s %6s %8s %8s %8s %8s %8s  %s\n' \
  opt before intr unsat sat unknown vacuous skips after elim status

for opt in "${OPT_ARR[@]}"; do
  stem="deflate_integer_signed_${opt}"
  in="evaluation/zlib/${stem}.ll"
  out="evaluation/zlib/${stem}_oracle.ll"
  alog="logs/opt_runs/${stem}.analysis.log"
  xlog="logs/opt_runs/${stem}.transform.log"

  # ---- compile sanitized baseline (signed spec only) ----
  clang "-$opt" -S -emit-llvm \
    -fsanitize=signed-integer-overflow \
    -fsanitize-trap=signed-integer-overflow \
    "${INLINE_FLAGS[@]}" -I"$ZLIB_SRC" \
    "$ZLIB_SRC/deflate.c" -o "$in" \
    || { echo "$opt : COMPILE FAILED"; continue; }

  before=$(grep -c 'call void @llvm.ubsantrap' "$in")
  intr=$(grep -c 'call .*\.with\.overflow' "$in")

  # ---- (A) analysis-only: per-trap verdicts land in the pass log ----
  run_opt opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
      -disable-output "$in" > "$alog" 2>&1
  rc_a=$?
  vlog="logs/compilations/${stem}_analysis.txt"
  [ -f "logs/compilations/${stem}.txt" ] && cp "logs/compilations/${stem}.txt" "$vlog"

  if [ -f "$vlog" ]; then
    unsat=$(grep -c 'UNSAT' "$vlog")
    sat=$(grep -c 'SAT (WARNING' "$vlog")
    unknown=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
    vacuous=$(grep -c '\[VACUOUS\]' "$vlog")
    skips=$(grep -c '\[Skip\]' "$vlog")
  else
    unsat=0; sat=0; unknown=0; vacuous=0; skips=0
  fi

  # ---- (B) transform: honest after-count from the optimized .ll ----
  rm -f "$out"
  run_opt opt -load-pass-plugin=build/OraclePass.so \
      -passes="oracle-pass,simplifycfg,adce,verify" \
      -S "$in" -o "$out" > "$xlog" 2>&1
  rc_x=$?
  if [ "$rc_x" -eq 0 ] && [ -s "$out" ]; then
    after=$(grep -c 'call void @llvm.ubsantrap' "$out")
    elim=$(( before - after ))
    status="OK"
  else
    after="NA"; elim="NA"
    [ "$rc_x" -eq 124 ] && status="XFORM_TIMEOUT" || status="XFORM_CRASH(rc=$rc_x)"
  fi
  if [ "$rc_a" -ne 0 ]; then
    [ "$rc_a" -eq 124 ] && status="ANALYSIS_TIMEOUT;$status" || status="ANALYSIS_CRASH(rc=$rc_a);$status"
  fi

  printf '%-6s %8s %8s %6s %6s %8s %8s %8s %8s %8s  %s\n' \
    "$opt" "$before" "$intr" "$unsat" "$sat" "$unknown" "$vacuous" "$skips" "$after" "$elim" "$status"
done

echo ""
echo "Per-trap verdicts : logs/compilations/deflate_integer_signed_<opt>_analysis.txt"
echo "Locate the UNSATs : grep -n -B3 'UNSAT' logs/compilations/deflate_integer_signed_O1_analysis.txt"
echo "                    (the '[Z3 Oracle] Analyzing Function:' line above each hit names the function)"
```

════════════════════════════════════════════════════════════════════
## FILE: run_zstd_audit.sh
## zstd whole-library elimination audit per TU x spec x {light,ldeq}; totals block = the 13.2% number; xxhash vacuous cluster documented in PAPER_FACTS.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# run_zstd_audit.sh -- zstd whole-library ELIMINATION AUDIT (analysis-only).
# Second flagship: 199 signed / 6615 unsigned / 481 bounds traps (matrix v3).
# Per (spec x variant): compile every zstd lib TU to .ll, run
# oracle-pass<vacuity;threads=N[;ldeq]>, aggregate verdicts from the
# per-module logs. Variants light|ldeq = the built-in LDEQ ablation.
# Analysis-only: no stabilization needed; verdicts are deterministic.
# Knobs: SPECS="signed unsigned bounds both" VARIANTS="light ldeq"
#        THREADS=16 TIMEOUT_SECS=900 ZSTD=/path (default beside repo)
# Out  : evaluation/zstd_audit.csv (+ logs/compilations/zstd.* per TU)
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
ZSTD="${ZSTD:-$PL_ROOT/zstd}"
SPECS=${SPECS:-"signed unsigned bounds both"}
VARIANTS=${VARIANTS:-"light ldeq"}
THREADS=${THREADS:-16}
TIMEOUT_SECS=${TIMEOUT_SECS:-900}
W="$ROOT/zstd_audit_test"; mkdir -p "$W" "$ROOT/evaluation" logs/compilations logs/opt_runs
CSV="$ROOT/evaluation/zstd_audit.csv"
[ -f "$CSV" ] || echo "spec,variant,tu,traps,unsat,sat,unknown,vacuous,skips,wall_s" > "$CSV"

cd "$ROOT" || exit 1
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }

san_flags() {
  case "$1" in
    signed)   echo "-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow" ;;
    unsigned) echo "-fsanitize=unsigned-integer-overflow -fsanitize-trap=unsigned-integer-overflow" ;;
    bounds)   echo "-fsanitize=bounds -fsanitize-trap=bounds" ;;
    both)     echo "-fsanitize=signed-integer-overflow,unsigned-integer-overflow -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow" ;;
  esac
}
# all non-legacy lib TUs
mapfile -t TUS < <(cd "$ZSTD/lib" && find common compress decompress -name '*.c' | sort)
echo "==== zstd audit: ${#TUS[@]} TUs x [$SPECS] x [$VARIANTS], threads=$THREADS ===="

for spec in $SPECS; do
  FL=$(san_flags "$spec")
  for tu in "${TUS[@]}"; do
    stem="zstd.${spec}.$(basename "$tu" .c)"
    ll="$W/$stem.ll"
    clang -O3 -S -emit-llvm $FL -I"$ZSTD/lib" -I"$ZSTD/lib/common" \
      "$ZSTD/lib/$tu" -o "$ll" 2>/dev/null || { echo "  [skip] $stem (clang)"; continue; }
    traps=$(grep -c 'call void @llvm.ubsantrap' "$ll")
    [ "$traps" -eq 0 ] && continue                     # nothing to audit
    for var in $VARIANTS; do
      P="oracle-pass<vacuity;threads=${THREADS}>"
      [ "$var" = "ldeq" ] && P="oracle-pass<vacuity;ldeq;threads=${THREADS}>"
      t0=$(date +%s.%N)
      timeout "${TIMEOUT_SECS}s" opt -load-pass-plugin=build/OraclePass.so \
        -passes="$P" -disable-output "$ll" > "logs/opt_runs/$stem.$var.log" 2>&1
      rc=$?
      t1=$(date +%s.%N)
      wall=$(awk -v a="$t0" -v b="$t1" 'BEGIN{printf "%.1f", b-a}')
      vlog="logs/compilations/$stem.txt"     # module log (stem from .ll name)
      u=0; s=0; k=0; v=0; sk=0
      if [ -f "$vlog" ]; then
        u=$(grep -c 'UNSAT' "$vlog"); s=$(grep -c 'SAT (WARNING' "$vlog")
        k=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
        v=$(grep -c '\[VACUOUS\]' "$vlog"); sk=$(grep -c '\[Skip\]' "$vlog")
      fi
      [ $rc -eq 124 ] && sk="TIMEOUT"
      echo "$spec,$var,$(basename "$tu" .c),$traps,$u,$s,$k,$v,$sk,$wall" >> "$CSV"
      printf '  %-10s %-6s %-24s traps=%-5s unsat=%-4s sat=%-5s vac=%s wall=%ss\n' \
        "$spec" "$var" "$(basename "$tu" .c)" "$traps" "$u" "$s" "$v" "$wall"
    done
  done
done
echo ""
echo "CSV: $CSV"
awk -F, 'NR>1 && $9!="TIMEOUT" {u[$1","$2]+=$5; t[$1","$2]+=$4}
     END{print "== TOTALS (spec,variant: unsat/traps) ==";
         for (k in u) printf "  %-18s %d / %d  (%.1f%%)\n", k, u[k], t[k], t[k]?u[k]/t[k]*100:0}' "$CSV"
```

════════════════════════════════════════════════════════════════════
## FILE: rust_triage.sh
## Rust triage. panic=abort is LOAD-BEARING (unwind emits invoke, invisible to the CallInst hunter). traps=panic.
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# rust_triage.sh -- the Rust x ODeSSy static triage (sibling of
# swift_triage.sh; same four gate questions, HANDOFF doctrine).
#
#   1. VERSION SKEW : does rustc's emitted IR parse under our pinned
#                     trunk opt?
#   2. TRAP SHAPE   : how many panic call sites exist (bounds +
#                     overflow), and how many does the Anchor accept?
#   3. FIRST VERDICTS: UNSAT / SAT / vacuous / skip counts under
#                     oracle-pass<vacuity;heavy;ldeq;traps=panic>.
#                     `traps=panic` matches every core::panicking::*
#                     symbol behind the divergence gate (noreturn or
#                     call+unreachable) -- see TrapDiscovery.cpp.
#   4. LDEQ RELEVANCE: reloaded-bound unification hits.
#
# Usage : bash rust_triage.sh [kernel.rs ...]   (default: lz77 + matmul)
# Needs : rustc + pinned opt on PATH; run from repo root (build/ present).
# Output: logs/rust_triage/<stem>.{ll,log} + a per-kernel summary table.
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
OUT="$ROOT/logs/rust_triage"
mkdir -p "$OUT"
KERNELS=("$@")
[ ${#KERNELS[@]} -gt 0 ] || KERNELS=("$NB/lz77.rs" "$NB/matmul.rs")

# Heavy is the standard tier for native-language static runs.
PASSES="${PASSES:-oracle-pass<vacuity;heavy;ldeq;threads=8;traps=panic>}"

command -v rustc >/dev/null || { echo "[FATAL] rustc not on PATH"; exit 1; }
command -v opt   >/dev/null || { echo "[FATAL] opt not on PATH"; exit 1; }
echo "rustc: $(rustc --version)"
echo "opt  : $(opt --version | head -1)"
echo "pass : $PASSES"
echo ""
printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
  kernel traps anchored pct unsat sat vacuous skips ldeq status

for SRC in "${KERNELS[@]}"; do
  stem=$(basename "$SRC" .rs)
  ll="$OUT/$stem.ll"
  log="$OUT/$stem.log"

  # --- gate 1: emit + parse ---
  # -O + overflow-checks=on: optimized IR that KEEPS both check families.
  # panic=abort is LOAD-BEARING: default panic=unwind lowers panics to
  # `invoke` (landing pads), which our CallInst Hunter cannot see; abort
  # lowers them to `call` + `unreachable` -- the exact ubsantrap shape,
  # and the deployment-honest comparison. codegen-units=1 for one .ll.
  rustc -O -C overflow-checks=on -C panic=abort -C debuginfo=0 -C codegen-units=1 \
        --emit=llvm-ir -o "$ll" "$SRC" 2>"$OUT/$stem.rustc.err" || {
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "RUSTC_FAIL (see $OUT/$stem.rustc.err)"
    continue
  }
  if ! opt -passes=verify -disable-output "$ll" 2>"$OUT/$stem.parse.err"; then
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "PARSE_FAIL@pinned-opt (version skew; see $OUT/$stem.parse.err)"
    continue
  fi

  # --- gate 2: trap census = panic CALL SITES in the .ll ---
  # (count invoke too, so a panic=unwind .ll shows census>0 with
  #  anchored=0 instead of silently reading as "no checks present")
  traps=$(grep -cE '(call|invoke)[^;]*@[^(]*panic' "$ll")

  # --- gate 3: verdicts ---
  opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
      -passes="$PASSES" \
      -disable-output "$ll" > "$log" 2>&1
  rc=$?
  anchored=$(grep -oE '[0-9]+ trap site\(s\)' "$log" | grep -oE '^[0-9]+' | head -1)
  anchored=${anchored:-0}
  unsat=$(grep -c 'UNSAT' "$log");  sat=$(grep -c 'SAT (WARNING' "$log")
  vac=$(grep -c '\[VACUOUS\]' "$log"); skips=$(grep -c '\[Skip\]' "$log")
  ldeq=$(grep -oE '\[ldeq\] [0-9]+' "$log" | awk '{s+=$2} END{print s+0}')
  pct="-"; [ "$traps" -gt 0 ] && pct=$(awk -v a="$anchored" -v t="$traps" 'BEGIN{printf "%.0f%%", a/t*100}')
  st="ok"; [ $rc -ne 0 ] && st="OPT_RC=$rc"

  printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
    "$stem" "$traps" "$anchored" "$pct" "$unsat" "$sat" "$vac" "$skips" "$ldeq" "$st"
done
echo ""
echo "Per-trap logs: $OUT/<kernel>.log   IR: $OUT/<kernel>.ll"
echo "Read: anchored/traps = Anchor coverage (multi-pred gap; rustc MERGES"
echo "      panic blocks aggressively -- expect a bigger gap than Swift);"
echo "      vacuous MUST be 0; audit any UNSAT via its core before celebrating."
```

════════════════════════════════════════════════════════════════════
## FILE: strip_traps.py
## Trap-stripping utility for controls.
════════════════════════════════════════════════════════════════════
```
import sys

def strip_traps(input_file, output_file):
    try:
        with open(input_file, 'r') as f:
            lines = f.readlines()
    except FileNotFoundError:
        print(f"[!] Error: Could not find {input_file}")
        sys.exit(1)

    trap_count = 0
    with open(output_file, 'w') as f:
        for line in lines:
            # Target both modern UBSan traps and legacy LLVM traps
            if "call void @llvm.ubsantrap" in line or "call void @llvm.trap" in line:
                # Comment out the trap to neutralize its side-effects
                f.write(f"; LIMIT STUDY: Oracle neutralized -> {line.lstrip()}")
                trap_count += 1
            else:
                f.write(line)

    print(f"[*] Limit Study Prep Complete.")
    print(f"[*] Successfully neutralized {trap_count} traps in {input_file}")
    print(f"[*] Output saved to {output_file}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 strip_traps.py <input_IR.ll> <output_IR.ll>")
        sys.exit(1)
    
    strip_traps(sys.argv[1], sys.argv[2])```

════════════════════════════════════════════════════════════════════
## FILE: swift_triage.sh
## Swift static triage: emit-ir -> parse gate -> trap census -> oracle verdicts table (traps/anchored/unsat/sat/vacuous/ldeq).
════════════════════════════════════════════════════════════════════
```
#!/usr/bin/env bash
# =============================================================================
# swift_triage.sh -- the 10-minute Swift x ODeSSy triage (HANDOFF doctrine).
#
# Answers, per Swift kernel, the four gate questions BEFORE any real
# elimination campaign:
#   1. VERSION SKEW : does Swift 6.x's emitted IR parse under our pinned
#                     trunk opt at all?
#   2. TRAP SHAPE   : how many llvm.trap / ubsantrap call sites exist,
#                     and how many does the Anchor actually accept
#                     (single-pred trap blocks)? Swift merges trap blocks
#                     aggressively -- expect a coverage gap; measure it.
#   3. FIRST VERDICTS: UNSAT / SAT / vacuous / skip counts under
#                     oracle-pass<vacuity;ldeq>.
#   4. LDEQ RELEVANCE: how often the reloaded-bound unification fires.
#
# Usage : bash swift_triage.sh [nbody.swift ...]   (default: all three)
# Needs : swiftc + pinned opt on PATH; run from repo root (build/ present).
# Output: logs/swift_triage/<stem>.{ll,log} + a per-kernel summary table.
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
OUT="$ROOT/logs/swift_triage"
mkdir -p "$OUT"
KERNELS=("$@")
[ ${#KERNELS[@]} -gt 0 ] || KERNELS=("$NB/nbody.swift" "$NB/sha256.swift" "$NB/lz77.swift")

command -v swiftc >/dev/null || { echo "[FATAL] swiftc not on PATH"; exit 1; }
command -v opt    >/dev/null || { echo "[FATAL] opt not on PATH"; exit 1; }
echo "swiftc: $(swiftc --version 2>&1 | head -1)"
echo "opt   : $(opt --version | head -1)"
echo ""
printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
  kernel traps anchored pct unsat sat vacuous skips ldeq status

for SRC in "${KERNELS[@]}"; do
  stem=$(basename "$SRC" .swift)
  ll="$OUT/$stem.ll"
  log="$OUT/$stem.log"

  # --- gate 1: emit + parse ---
  swiftc -O -emit-ir "$SRC" -o "$ll" 2>"$OUT/$stem.swiftc.err" || {
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "SWIFTC_FAIL (see $OUT/$stem.swiftc.err)"
    continue
  }
  if ! opt -passes=verify -disable-output "$ll" 2>"$OUT/$stem.parse.err"; then
    printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
      "$stem" - - - - - - - - "PARSE_FAIL@pinned-opt (version skew; see $OUT/$stem.parse.err)"
    continue
  fi

  # --- gate 2: trap census (call sites only, per counting doctrine) ---
  traps=$(grep -cE 'call void @llvm\.(ubsan)?trap' "$ll")

  # --- gate 3: verdicts (analysis-only; vacuity + ldeq; threads for speed) ---
  opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
      -passes="oracle-pass<vacuity;heavy;ldeq;threads=8>" \
      -disable-output "$ll" > "$log" 2>&1
  rc=$?
  anchored=$(grep -oE '[0-9]+ trap site\(s\)' "$log" | grep -oE '^[0-9]+' | head -1)
  anchored=${anchored:-0}
  unsat=$(grep -c 'UNSAT' "$log");  sat=$(grep -c 'SAT (WARNING' "$log")
  vac=$(grep -c '\[VACUOUS\]' "$log"); skips=$(grep -c '\[Skip\]' "$log")
  ldeq=$(grep -oE '\[ldeq\] [0-9]+' "$log" | awk '{s+=$2} END{print s+0}')
  pct="-"; [ "$traps" -gt 0 ] && pct=$(awk -v a="$anchored" -v t="$traps" 'BEGIN{printf "%.0f%%", a/t*100}')
  st="ok"; [ $rc -ne 0 ] && st="OPT_RC=$rc"

  printf '%-12s %8s %8s %8s %6s %6s %8s %6s %6s  %s\n' \
    "$stem" "$traps" "$anchored" "$pct" "$unsat" "$sat" "$vac" "$skips" "$ldeq" "$st"
done
echo ""
echo "Per-trap logs: $OUT/<kernel>.log   IR: $OUT/<kernel>.ll"
echo "Read: anchored/traps = Anchor coverage (multi-pred gap);"
echo "      vacuous MUST be 0; audit any UNSAT via its core before celebrating."
```

════════════════════════════════════════════════════════════════════
## FILE: test_z3.cpp
## Z3 linkage smoke test (historical).
════════════════════════════════════════════════════════════════════
```
#include <z3++.h>
#include <iostream>

using namespace z3;

int main() {
    try {
        // Create a Z3 context (the main environment)
        context c;

        // Create two integer variables 'x' and 'y'
        expr x = c.int_const("x");
        expr y = c.int_const("y");

        // Create a solver instance
        solver s(c);

        // Add constraints: x + y = 10, and x > 5
        s.add(x + y == 10);
        s.add(x > 5);

        // Check if the constraints are satisfiable
        if (s.check() == sat) {
            std::cout << "Z3 is working! Found a satisfying model:\n";
            model m = s.get_model();
            std::cout << m << "\n";
        } else {
            std::cout << "Unsatisfiable.\n";
        }
    } catch (exception &ex) {
        std::cerr << "Z3 Error: " << ex << "\n";
        return 1;
    }
    return 0;
}```
