#include "FactEncoder.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
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

// =====================================================================
// Go 3 -- LEAF PRE-ENCODING (Aug 24 2026). The SCEVSYM bounds reference
// SSA leaves (bc.resume.val and the vectorizer preamble behind it) that
// Go 2 could only constrain with UNCONDITIONAL facts; the countermodels
// exploited the zero-trip scenario (resume = limit+1, remainder loop
// never runs), which only the middle-block BRANCH excludes -- PATH
// information no unconditional fact can carry.
//
// FORMALLY: the query is an over-approximation A of the executions
// reaching the trap. Leaves were HAVOC (existentially free). This pass
// replaces havoc with DEFINITIONAL AXIOMS: for every instruction in the
// leaves' def-closure, add  v == [[def(v)]]  by running the ordinary
// encoder over it -- selects become ites, non-header phis become
// guarded unions over their incoming edges (the encoder's memoized
// reachability machinery supplies R(pred) ∧ cond(pred->B)), and the
// controlling branch icmps encode as themselves. No "trip count > 0"
// is ever asserted: zero-trip models die because they VIOLATE THE
// DEFINITIONS. Definitional axioms are true of every real execution by
// construction, so the over-approximation -- and hence soundness -- is
// untouched; no new trust is introduced.
//
// ORDERING (the trap that forces this shape): Z3Encoder's ValueMap
// insert is FIRST-WINS, so any valueAsBV reference made before the
// precise encode permanently freezes the leaf as a free variable.
// Hence this pass runs FIRST in encodeBoundaryFacts, before the fact
// battery translates anything.
//
// CLOSURE RULES mirror the main slicer's boundaries: loop-header phis,
// loads/GEPs, and non-intrinsic calls stay FREE (the battery gives
// them facts); everything else is definitional. Non-header phis also
// pull their incoming edges' branch conditions (that is where the
// middle-block guard enters). Cap = 256 instructions (logged if hit).
// =====================================================================
void FactEncoder::preEncodeScevLeafClosure() {
    if (!SE || !LI) return;
    // ---- seeds: SCEVUnknown instruction leaves of every boundary
    // header-phi's (BTC, start) pair, collected purely SCEV-side so no
    // Z3 variable is created before the closure is encoded.
    SmallPtrSet<Instruction *, 16> Seeds;
    auto Collect = [&](const SCEV *S) {
        SmallVector<const SCEV *, 16> WL{S};
        SmallPtrSet<const SCEV *, 32> Seen;
        while (!WL.empty()) {
            const SCEV *C = WL.pop_back_val();
            if (!Seen.insert(C).second) continue;
            if (auto *U = dyn_cast<SCEVUnknown>(C)) {
                if (auto *I = dyn_cast<Instruction>(U->getValue()))
                    Seeds.insert(I);
                continue;
            }
            for (const SCEV *Op : C->operands()) WL.push_back(Op);
        }
    };
    for (Value *V : Encoder.getFreeVariables()) {
        auto *Phi = dyn_cast<PHINode>(V);
        if (!Phi) continue;
        Loop *L = LI->getLoopFor(Phi->getParent());
        if (!L || L->getHeader() != Phi->getParent()) continue;
        if (!SE->isSCEVable(Phi->getType())) continue;
        auto *AR = dyn_cast<SCEVAddRecExpr>(SE->getSCEV(Phi));
        if (!AR || AR->getLoop() != L || !AR->isAffine()) continue;
        const SCEV *BTC = SE->getBackedgeTakenCount(L);
        if (isa<SCEVCouldNotCompute>(BTC))
            BTC = SE->getSymbolicMaxBackedgeTakenCount(L);
        if (isa<SCEVCouldNotCompute>(BTC)) continue;
        Collect(BTC);
        Collect(AR->getStart());
    }
    // PHIINV's base value: the header phi's incoming value from the loop's
    // unique out-of-loop predecessor (often a non-header phi / select such
    // as lz77's `start`); encode its definition so the LO fact p >= v0 is
    // not anchored to a free variable (first-wins ValueMap).
    for (Value *V : Encoder.getFreeVariables()) {
        auto *Phi = dyn_cast<PHINode>(V);
        if (!Phi) continue;
        Loop *L = LI->getLoopFor(Phi->getParent());
        if (!L || L->getHeader() != Phi->getParent()) continue;
        BasicBlock *Pre = L->getLoopPreheader();
        if (!Pre) Pre = L->getLoopPredecessor();
        if (!Pre) continue;
        if (auto *I = dyn_cast<Instruction>(Phi->getIncomingValueForBlock(Pre)))
            Seeds.insert(I);
    }
    if (Seeds.empty()) return;
    // ---- def-closure with slicer boundary rules.
    SmallPtrSet<Instruction *, 32> Closure;
    SmallVector<Instruction *, 64> WL(Seeds.begin(), Seeds.end());
    const unsigned Cap = 256;
    bool CapHit = false;
    while (!WL.empty()) {
        if (Closure.size() >= Cap) { CapHit = true; break; }
        Instruction *I = WL.pop_back_val();
        if (Closure.count(I)) continue;
        if (auto *P = dyn_cast<PHINode>(I)) {
            Loop *L = LI->getLoopFor(P->getParent());
            if (L && L->getHeader() == P->getParent())
                continue;                       // boundary: header phi
            Closure.insert(I);
            for (unsigned i = 0; i < P->getNumIncomingValues(); ++i) {
                if (auto *II = dyn_cast<Instruction>(P->getIncomingValue(i)))
                    WL.push_back(II);
                // The guarded union needs the incoming edges' branch
                // predicates to MEAN something: pull their conditions.
                if (auto *Br = dyn_cast<BranchInst>(
                        P->getIncomingBlock(i)->getTerminator()))
                    if (Br->isConditional())
                        if (auto *CI = dyn_cast<Instruction>(Br->getCondition()))
                            WL.push_back(CI);
            }
            continue;
        }
        if (isa<LoadInst>(I) || isa<GetElementPtrInst>(I))
            continue;                           // boundary: memory
        if (auto *CB = dyn_cast<CallInst>(I)) {
            Function *CF = CB->getCalledFunction();
            if (!CF || !CF->getName().contains(".with.overflow"))
                continue;                       // boundary: alien call
        }
        Closure.insert(I);
        for (Use &U : I->operands())
            if (auto *OI = dyn_cast<Instruction>(U.get()))
                WL.push_back(OI);
    }
    // ---- definitional encode in RPO (defs before uses in the acyclic
    // skeleton; header phis are boundaries so back edges never matter).
    // encodeInstruction failures are TOLERATED: that value simply stays
    // free (weaker, never wrong) -- unlike the main slice, an abort
    // here must not kill the query.
    Function *F = DT.getRoot()->getParent();
    unsigned N = 0;
    ReversePostOrderTraversal<Function *> RPOT(F);
    for (BasicBlock *BB : RPOT)
        for (Instruction &I : *BB)
            if (Closure.count(&I))
                if (Encoder.encodeInstruction(&I, &DT, LI)) ++N;
    Log << "    -> [go3] " << N << " leaf-closure instruction(s) encoded"
        << (CapHit ? " (CAP HIT -- closure truncated, leaves weaker)" : "")
        << "\n";
}

unsigned FactEncoder::encodeBoundaryFacts(BasicBlock *PredBB) {
    preEncodeScevLeafClosure();
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
        tryPhiInv(V);
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

// =====================================================================
// PHIINV -- header-phi interval invariant by 1-induction (HANDOFF §10.9;
// acceptance test lz77.jl, §10.2/§10.8). Two independent facts on a
// loop-header phi p = phi [v0, preheader], [vL, latch]:
//
//   HI (latch-implied bound, EXACT, no side condition):
//       p == v0  ||  pred(p, B)
//     where the loop's single latch branches back to the header iff
//     pred(vL, B) holds (pred oriented by which successor is the
//     header; vL is the phi's latch incoming value; B is loop-invariant).
//     Soundness: on iteration 0, p IS v0; on iteration t >= 1, p is the
//     very value vL that was tested at the latch on iteration t-1, and
//     the back edge was taken, so pred(p, B) held. Wrap-agnostic: the
//     compare is asserted on exactly the (possibly wrapped) value that
//     the machine compared. Any ICmp predicate qualifies.
//
//   LO (monotone lower bound):
//       p >=s v0
//     when every latch value reaching the phi is `add nsw p, d` (looked
//     through selects and non-header phis, depth <= 4) with d provably
//     >=s 0 (constant, or SCEV isKnownNonNegative). Soundness: p_0 = v0;
//     p_{t+1} = p_t + d >= p_t. The nsw REQUIREMENT is load-bearing: a
//     wrapping add could take p below v0 while the latch compare still
//     passes (negative <=s bound), so without nsw the invariant is NOT
//     inductive in IR semantics (lz77.jl's outer increment lacks nsw --
//     see §10.11). nsw's poison caveat is the encoder's standing trust
//     class (wrap => poison => UB once branched on).
//
//   HX (header-exit equality bound, HANDOFF §10.17):
//       (v0 <=u B) -> p <=u B
//     when the header exits iff p == B (B loop-invariant) and every latch
//     value is p + 1. Base by antecedent; step: body ran so p != B, with
//     p <=u B that is p <u B, so p + 1 <=u B without wrap. Unit step is
//     load-bearing (stride >= 2 can jump over B).
//
// The latch (HI) condition may be a conjunction (`select A, B, false`,
// `and`) taken on true, or a disjunction (`select A, true, B`, `or`)
// taken on false: every operand then holds (resp. fails) on the back
// edge, so each ICmp operand comparing vL contributes a HI fact.
//
// REFUSALS: not a header phi; loop without a unique preheader or with
// != 1 latch; phi with incoming blocks other than {preheader, latch};
// latch terminator not a conditional branch on an ICmp (or on a
// conjunction/disjunction of ICmps with the right polarity); the ICmp
// does not compare vL against a loop-invariant operand (HI); any latch
// value not of the add-nsw-of-self shape or with unknown sign (LO); the
// header exit not an equality on p against an invariant, or a non-unit
// step (HX). Pure IR walk + SE queries (FactGate-serialized like every
// heavy fact).
// =====================================================================
static bool collectSelfAdds(Value *V, PHINode *P, unsigned Depth,
                            SmallVectorImpl<Value *> &Incs, bool &AllNSW) {
    if (Depth > 4) return false;
    if (auto *BO = dyn_cast<BinaryOperator>(V)) {
        if (BO->getOpcode() != Instruction::Add) return false;
        if (!BO->hasNoSignedWrap()) AllNSW = false;        // see LO-wrap below
        if (BO->getOperand(0) == P) { Incs.push_back(BO->getOperand(1)); return true; }
        if (BO->getOperand(1) == P) { Incs.push_back(BO->getOperand(0)); return true; }
        return false;
    }
    if (auto *Sel = dyn_cast<SelectInst>(V))
        return collectSelfAdds(Sel->getTrueValue(), P, Depth + 1, Incs, AllNSW) &&
               collectSelfAdds(Sel->getFalseValue(), P, Depth + 1, Incs, AllNSW);
    if (auto *Phi = dyn_cast<PHINode>(V)) {
        for (Value *In : Phi->incoming_values())
            if (!collectSelfAdds(In, P, Depth + 1, Incs, AllNSW)) return false;
        return Phi->getNumIncomingValues() > 0;
    }
    return false;
}


// Universal (all-iterations) signed maximum of an increment value, via
// SCEV signed ranges, looked through selects / non-header phis (depth<=4).
// Returns false if any leaf is unbounded (signed max == INT_MAX).
static bool signedMaxOf(Value *V, ScalarEvolution *SE, unsigned Depth, APInt &Max) {
    if (Depth > 4) return false;
    unsigned W = V->getType()->getIntegerBitWidth();
    if (auto *CI = dyn_cast<ConstantInt>(V)) { Max = CI->getValue(); return true; }
    if (auto *Sel = dyn_cast<SelectInst>(V)) {
        APInt A(W, 0), B(W, 0);
        if (!signedMaxOf(Sel->getTrueValue(), SE, Depth + 1, A) ||
            !signedMaxOf(Sel->getFalseValue(), SE, Depth + 1, B)) return false;
        Max = A.sgt(B) ? A : B; return true;
    }
    if (SE && SE->isSCEVable(V->getType())) {
        APInt M = SE->getSignedRange(SE->getSCEV(V)).getSignedMax();
        if (!M.isMaxSignedValue()) { Max = M; return true; }
    }
    if (auto *Phi = dyn_cast<PHINode>(V)) {
        APInt Acc = APInt::getSignedMinValue(W);
        for (Value *In : Phi->incoming_values()) {
            APInt A(W, 0);
            if (!signedMaxOf(In, SE, Depth + 1, A)) return false;
            if (A.sgt(Acc)) Acc = A;
        }
        Max = Acc; return Phi->getNumIncomingValues() > 0;
    }
    return false;
}

// Universal non-negativity of an increment value: constant, SCEV signed
// range, or every arm of a select / non-header phi (depth <= 4).
static bool nonNegOf(Value *V, ScalarEvolution *SE, unsigned Depth) {
    if (Depth > 4) return false;
    if (auto *CI = dyn_cast<ConstantInt>(V)) return !CI->getValue().isNegative();
    if (SE && SE->isSCEVable(V->getType()) && SE->isKnownNonNegative(SE->getSCEV(V)))
        return true;
    if (auto *Sel = dyn_cast<SelectInst>(V))
        return nonNegOf(Sel->getTrueValue(), SE, Depth + 1) &&
               nonNegOf(Sel->getFalseValue(), SE, Depth + 1);
    if (auto *Phi = dyn_cast<PHINode>(V)) {
        for (Value *In : Phi->incoming_values())
            if (!nonNegOf(In, SE, Depth + 1)) return false;
        return Phi->getNumIncomingValues() > 0;
    }
    return false;
}

bool FactEncoder::tryPhiInv(Value *V) {
    if (!LI) return false;
    auto *Phi = dyn_cast<PHINode>(V);
    if (!Phi || !Phi->getType()->isIntegerTy()) return false;
    BasicBlock *H = Phi->getParent();
    Loop *L = LI->getLoopFor(H);
    if (!L || L->getHeader() != H) return false;
    // A dedicated preheader is not required: the unique out-of-loop
    // predecessor (which may branch elsewhere too) is exactly the block
    // whose incoming value is the induction's base case.
    BasicBlock *Pre = L->getLoopPreheader();
    if (!Pre) Pre = L->getLoopPredecessor();
    BasicBlock *Latch = L->getLoopLatch();          // null if != 1 latch
    if (!Pre || !Latch) return false;
    if (Phi->getNumIncomingValues() != 2) return false;
    Value *V0 = Phi->getIncomingValueForBlock(Pre);
    Value *VL = Phi->getIncomingValueForBlock(Latch);
    if (!V0 || !VL) return false;
    unsigned W = Phi->getType()->getIntegerBitWidth();
    z3::expr PhiE = Encoder.valueAsBV(Phi, W);
    z3::expr V0E  = Encoder.valueAsBV(V0, W);
    bool Any = false;
    std::optional<z3::expr> HiBound;   // B when HI fired with a <=s / <s bound

    // ---------------- HI: latch-implied bound ----------------
    if (auto *Br = dyn_cast<BranchInst>(Latch->getTerminator())) {
        if (Br->isConditional() && Br->getSuccessor(0) != Br->getSuccessor(1)) {
            bool BackOnTrue = (Br->getSuccessor(0) == H);
            // The back-edge condition may be a conjunction (Swift/Julia emit
            // `select i1 A, i1 B, false` or `and i1 A, B` for `A && B`): on
            // the back edge every conjunct holds, so any conjunct comparing
            // vL qualifies. Symmetrically a disjunction whose FALSE edge is
            // the back edge (`select A, true, B` / `or`) makes every disjunct
            // false. Collect (ICmp, holds) pairs; depth-bounded.
            SmallVector<std::pair<ICmpInst *, bool>, 4> Conj;
            std::function<void(Value *, bool, unsigned)> Decomp =
                [&](Value *C, bool Holds, unsigned D) {
                    if (D > 3) return;
                    if (auto *IC = dyn_cast<ICmpInst>(C)) { Conj.push_back({IC, Holds}); return; }
                    Value *X = nullptr, *Y = nullptr;
                    if (auto *Sel = dyn_cast<SelectInst>(C)) {
                        auto *T = dyn_cast<ConstantInt>(Sel->getTrueValue());
                        auto *F = dyn_cast<ConstantInt>(Sel->getFalseValue());
                        if (Holds && F && F->isZero()) { X = Sel->getCondition(); Y = Sel->getTrueValue(); }
                        else if (!Holds && T && T->isOne()) { X = Sel->getCondition(); Y = Sel->getFalseValue(); }
                    } else if (auto *BO = dyn_cast<BinaryOperator>(C)) {
                        if ((Holds && BO->getOpcode() == Instruction::And) ||
                            (!Holds && BO->getOpcode() == Instruction::Or)) {
                            X = BO->getOperand(0); Y = BO->getOperand(1);
                        }
                    }
                    if (X && Y) { Decomp(X, Holds, D + 1); Decomp(Y, Holds, D + 1); }
                };
            Decomp(Br->getCondition(), BackOnTrue, 0);
            for (auto &CH : Conj) {
                ICmpInst *Cmp = CH.first;
                ICmpInst::Predicate Pred = Cmp->getPredicate();
                if (!CH.second) Pred = ICmpInst::getInversePredicate(Pred);
                Value *A = Cmp->getOperand(0), *Bv = Cmp->getOperand(1);
                if (Bv == VL) { std::swap(A, Bv); Pred = ICmpInst::getSwappedPredicate(Pred); }
                if (A == VL && Bv != VL && L->isLoopInvariant(Bv) &&
                    Bv->getType() == Phi->getType()) {
                    z3::expr BE = Encoder.valueAsBV(Bv, W);
                    z3::expr C = (PhiE == BE);
                    bool OK = true;
                    switch (Pred) {
                    case ICmpInst::ICMP_EQ:  C = (PhiE == BE); break;
                    case ICmpInst::ICMP_NE:  C = (PhiE != BE); break;
                    case ICmpInst::ICMP_SGT: C = (PhiE >  BE); break;
                    case ICmpInst::ICMP_SGE: C = (PhiE >= BE); break;
                    case ICmpInst::ICMP_SLT: C = (PhiE <  BE); break;
                    case ICmpInst::ICMP_SLE: C = (PhiE <= BE); break;
                    case ICmpInst::ICMP_UGT: C = z3::ugt(PhiE, BE); break;
                    case ICmpInst::ICMP_UGE: C = z3::uge(PhiE, BE); break;
                    case ICmpInst::ICMP_ULT: C = z3::ult(PhiE, BE); break;
                    case ICmpInst::ICMP_ULE: C = z3::ule(PhiE, BE); break;
                    default: OK = false;
                    }
                    if (OK) {
                        if (Pred == ICmpInst::ICMP_SLE) HiBound = BE;
                        else if (Pred == ICmpInst::ICMP_SLT) HiBound = BE - Encoder.apintToBV(APInt(W, 1));
                        z3::expr Fact = (PhiE == V0E) || C;
                        std::string Lbl = mkLabel("PHIINV-hi");
                        Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());
                        Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
                            << " == " << valueStr(V0) << " || "
                            << ICmpInst::getPredicateName(Pred).str() << "("
                            << valueStr(V) << ", " << valueStr(Bv)
                            << ") (latch-implied bound, 1-induction)\n";
                        ++NumFacts; Any = true;
                    }
                }
            }
        }
    }

    // ---------------- LO: monotone lower bound ----------------
    SmallVector<Value *, 8> Incs;
    bool AllNSW = true;
    bool HaveIncs = collectSelfAdds(VL, Phi, 0, Incs, AllNSW) && !Incs.empty();

    // ---------------- HX: header-exit equality bound ----------------
    //   (v0 <=u B)  ->  p <=u B
    // when the HEADER's terminator exits the loop iff p == B (B loop-
    // invariant; body runs on the != edge) and EVERY latch value is
    // `add p, 1` (unit step, wrap flags irrelevant). Soundness: base
    // p_0 = v0 <=u B by the antecedent; step: the body ran, so p != B, and
    // with p <=u B that is p <u B <= 2^W-1, hence p+1 <=u B without wrap.
    // The unit step is load-bearing: a stride >= 2 can jump over B (see
    // tripwire test_heavy_phiinv_hx_stride_sat.ll). This is the shape the
    // Swift frontend emits for `while l < maxMatch && i + l < n` after
    // it turns the bound into a trip count (HANDOFF §10.17, Swift lz77).
    if (HaveIncs) {
        bool Unit = true;
        for (Value *D : Incs) {
            auto *CI = dyn_cast<ConstantInt>(D);
            if (!CI || !CI->isOne()) { Unit = false; break; }
        }
        auto *HBr = dyn_cast<BranchInst>(H->getTerminator());
        if (Unit && HBr && HBr->isConditional() && HBr->getSuccessor(0) != HBr->getSuccessor(1)) {
            if (auto *Cmp = dyn_cast<ICmpInst>(HBr->getCondition())) {
                if (Cmp->isEquality()) {
                    // Which successor leaves the loop on p == B?
                    BasicBlock *OnTrue = HBr->getSuccessor(0), *OnFalse = HBr->getSuccessor(1);
                    BasicBlock *EqSucc = Cmp->getPredicate() == ICmpInst::ICMP_EQ ? OnTrue : OnFalse;
                    BasicBlock *NeSucc = EqSucc == OnTrue ? OnFalse : OnTrue;
                    Value *A = Cmp->getOperand(0), *Bv = Cmp->getOperand(1);
                    if (Bv == Phi) std::swap(A, Bv);
                    if (A == Phi && Bv != Phi && L->isLoopInvariant(Bv) &&
                        Bv->getType() == Phi->getType() &&
                        !L->contains(EqSucc) && L->contains(NeSucc)) {
                        z3::expr BE = Encoder.valueAsBV(Bv, W);
                        z3::expr Fact = z3::implies(z3::ule(V0E, BE), z3::ule(PhiE, BE));
                        std::string Lbl = mkLabel("PHIINV-hx");
                        Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());
                        Log << "    -> Fact[" << Lbl << "] (" << valueStr(V0) << " <=u "
                            << valueStr(Bv) << ") -> " << valueStr(V) << " <=u "
                            << valueStr(Bv) << " (header-exit eq bound, unit step, 1-induction)\n";
                        ++NumFacts; Any = true;
                    }
                }
            }
        }
    }

    if (HaveIncs) {
        bool AllNonNeg = true;
        for (Value *D : Incs)
            if (!nonNegOf(D, SE, 0)) { AllNonNeg = false; break; }
        if (AllNonNeg) {
            z3::expr Lo = (PhiE >= V0E);
            bool V0NonNeg = false;
            if (auto *CI = dyn_cast<ConstantInt>(V0)) V0NonNeg = !CI->getValue().isNegative();
            else if (SE && SE->isSCEVable(V0->getType()))
                V0NonNeg = SE->isKnownNonNegative(SE->getSCEV(V0));
            if (V0NonNeg) Lo = Lo && z3::uge(PhiE, V0E);
            if (AllNSW) {
                std::string Lbl = mkLabel("PHIINV-lo");
                Encoder.assertRawFact(Lo, Audit ? Lbl : std::string());
                Log << "    -> Fact[" << Lbl << "] " << valueStr(V) << " >=s "
                    << valueStr(V0) << " (monotone nsw increments, "
                    << Incs.size() << " arm(s))\n";
                ++NumFacts; Any = true;
            } else if (HiBound) {
                // LO-WRAP: the adds may wrap, so p >= v0 is inductive only
                // when p + d cannot pass INT_MAX. With HI (p <=s B) that is
                // guaranteed if B <=s INT_MAX - dmax, dmax a UNIVERSAL bound
                // on every increment (SCEV signed ranges hold on all
                // iterations), and v0 <=s B for the base case. Emitted as
                // an implication: harmless unless the context proves the
                // antecedent (e.g. a `length(a) <= 2^62` guard or a
                // multi-versioning condition).
                APInt DMax(W, 0), Acc = APInt::getSignedMinValue(W);
                bool Bounded = true;
                for (Value *D : Incs) {
                    if (!signedMaxOf(D, SE, 0, DMax)) { Bounded = false; break; }
                    if (DMax.sgt(Acc)) Acc = DMax;
                }
                if (Bounded && Acc.isNonNegative()) {
                    APInt Lim = APInt::getSignedMaxValue(W) - Acc;   // INT_MAX - dmax
                    z3::expr Ante = (*HiBound <= Encoder.apintToBV(Lim)) && (V0E <= *HiBound);
                    z3::expr Fact = z3::implies(Ante, Lo);
                    std::string Lbl = mkLabel("PHIINV-lo");
                    Encoder.assertRawFact(Fact, Audit ? Lbl : std::string());
                    Log << "    -> Fact[" << Lbl << "] (B <=s INT_MAX-" << Acc
                        << " && v0 <=s B) -> " << valueStr(V) << " >=s "
                        << valueStr(V0) << " (monotone WRAPPING increments; conditional)\n";
                    ++NumFacts; Any = true;
                }
            }
        }
    }
    return Any;
}
