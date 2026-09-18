#include "TrapSolver.h"
#include "FactEncoder.h"
#include "Narrow.h"
#include <chrono>
#include <memory>

#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/ConstantRange.h"
#include "llvm/Analysis/SimplifyQuery.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Transforms/Utils/ScalarEvolutionExpander.h"

#include <string>
#include <optional>
#include <functional>

using namespace llvm;

namespace odessy {

TrapSolver::TrapSolver(const SolverConfig &Cfg, const FunctionCtx &FC,
                       TrapJob &Job, unsigned Narrow)
    : Cfg(Cfg), FC(FC), Job(Job), Encoder(Cfg.QueryTimeoutMs), NarrowMode(Narrow),
      Log(Job.LogText) {
    if (Cfg.VacuityCheck || Cfg.MultiVersion)   // MV reads cores too
        Encoder.enableUnsatCores();
    if (Narrow == 2) Encoder.enableNarrowMul(64, Cfg.NarrowBits);   // mul-only fallback
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
        if (NarrowMode == 1) Defs64 = Encoder.snapshotAssertions();   // §10.38: definitions
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
                          Cfg.VacuityCheck, Log, /*PhiInv=*/!Cfg.NoPhiInv);
        unsigned NFacts = Facts.encodeBoundaryFacts(Job.PredBB);
        Log << "    -> [heavy] " << NFacts << " analysis fact(s) on "
            << Encoder.getFreeVariables().size() << " boundary value(s)\n";
        if (Cfg.MultiVersion && Cfg.MVT3) prepareT3();   // SE queries: gate is held here
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

// F1 profiling: after a check slower than Cfg.ProfileMs, log Z3 statistics
// and dump the assertion set to logs/profile/<function>_<job>_<tag>.smt2.
void TrapSolver::profileQuery(const char *Tag, const std::string &Res, double Ms) {
    if (!Cfg.ProfileMs || Ms < Cfg.ProfileMs) return;
    Log << "    -> [profile:" << Tag << "] " << Ms << " ms " << (Res.find("UNSAT") != std::string::npos ? "UNSAT" : Res.find("UNKNOWN") != std::string::npos ? "UNKNOWN" : "SAT")
        << " stats: " << Encoder.getStatistics() << "\n";
    std::string Name = "logs/profile/" + Job.F->getName().str().substr(0, 40) + "_" + std::to_string(Job.Index) + "_" + Tag + ".smt2";
    std::error_code EC;
    raw_fd_ostream OS(Name, EC, sys::fs::OF_Text);
    if (!EC) { OS << Encoder.toSMT2() << "\n"; Log << "    -> [profile] dumped " << Name << "\n"; }
}

void TrapSolver::indSmoke() {
    if (!FC.LI) return;
    Loop *L = FC.LI->getLoopFor(Job.PredBB);
    if (!L) { Log << "    -> [ind] trap not in a loop\n"; return; }
    BasicBlock *Latch = L->getLoopLatch();
    // BASE needs the header's unique outside predecessor (the phis' entry
    // edge); a dedicated preheader is not required.
    BasicBlock *Entry = nullptr;
    if (Latch) for (BasicBlock *P : predecessors(L->getHeader())) if (P != Latch) { if (Entry) { Entry = nullptr; break; } Entry = P; }
    if (!Latch || !Entry) { Log << "    -> [ind] refused: loop needs a unique latch and a unique entry edge\n"; return; }
    try {
        Encoder.push();
        Encoder.beginPrimed(L, "p");
        unsigned N = 0, Skipped = 0;
        ReversePostOrderTraversal<Function *> RPOT(Job.F);
        for (BasicBlock *BB : RPOT) {
            if (!L->contains(BB)) continue;
            for (Instruction &I : *BB) {
                if (I.isTerminator() || isa<DbgInfoIntrinsic>(&I)) continue;
                if (I.getType()->isVoidTy()) continue;
                if (!Encoder.encodeInstruction(&I, FC.DT, FC.LI)) ++Skipped; else ++N;
            }
        }
        // links: state t (normal header phi) == copy's latch value. The
        // state-t side must be fetched OUTSIDE primed mode.
        unsigned Links = 0;
        Encoder.endPrimed();
        std::vector<std::pair<PHINode *, z3::expr>> CurVars;
        for (PHINode &P : L->getHeader()->phis())
            if (P.getType()->isIntegerTy()) CurVars.push_back({&P, Encoder.valueAsBV(&P, P.getType()->getIntegerBitWidth())});
        Encoder.beginPrimed(L, "p");
        for (auto &[PP, Cur] : CurVars) {
            PHINode &P = *PP;
            Value *LV = P.getIncomingValueForBlock(Latch);
            unsigned W = P.getType()->getIntegerBitWidth();
            z3::expr Nxt = Encoder.primedExpr(LV);            // copy: latch value
            z3::expr NxtBV = Nxt.is_bool() ? z3::ite(Nxt, Encoder.apintToBV(APInt(W, 1)), Encoder.apintToBV(APInt(W, 0))) : Nxt;
            Encoder.assertRawFact(Cur == NxtBV, "LINK:" + std::to_string(Links));
            { std::string A = Cur.to_string(), B = NxtBV.to_string(); if (A.size() > 60) A = A.substr(0, 60) + "..."; if (B.size() > 160) B = B.substr(0, 160) + "...";
              Log << "    -> [ind] link " << Links << ": " << A << "  ==  " << B << "\n"; }
            ++Links;
        }
        Encoder.endPrimed();
        auto [Res, Ms] = Encoder.checkSatisfiability();
        if (Res.find("UNSAT") != std::string::npos) Log << "    -> [ind] consistency core: " << Encoder.getUnsatCore() << "\n";
        Log << "    -> [ind] copy: " << N << " instruction(s) instantiated, " << Skipped << " skipped, "
            << Encoder.primedHeaderPhis().size() << " header phi(s) primed, " << Links << " link(s); consistency check: "
            << (Res.find("UNSAT") != std::string::npos ? "UNSAT (!)" : Res.find("UNKNOWN") != std::string::npos ? "UNKNOWN" : "SAT") << " (" << Ms << " ms)\n";
        Encoder.pop();
    } catch (const z3::exception &e) { Encoder.endPrimed(); Log << "    -> [ind] Z3 exception: " << e.msg() << "\n"; }
}

void TrapSolver::solvePhase() {
    try {
        // PHASE 2.75 (FRAME only): cross-BB load unification facts from
        // Stage 1's MemorySSA frame walk (HANDOFF §8.1). Each validated
        // pair (L1, L2) reads the same never-clobbered location, so
        // their (already-free) boundary variables are equal. Asserted
        // CONTEXT-SIDE, before the guards: covered by the vacuity audit,
        // attributed in unsat cores via the FRAME: label. Reads only
        // job-private state -- no analyses, no FactGate.
        if (Cfg.FrameMode) {
            for (size_t k = 0; k < Job.FramePairs.size(); ++k) {
                Value *L1 = Job.FramePairs[k].first;
                Value *L2 = Job.FramePairs[k].second;
                unsigned W = L1->getType()->getIntegerBitWidth();
                z3::expr Fact =
                    Encoder.valueAsBV(L1, W) == Encoder.valueAsBV(L2, W);
                std::string Lbl = "FRAME:" + std::to_string(k);
                Encoder.assertRawFact(
                    Fact, Cfg.VacuityCheck ? Lbl : std::string());
                Log << "    -> Fact[" << Lbl
                    << "] cross-BB load pair unified (frame held)\n";
            }
        }
        // Item 1 session 2 smoke (HANDOFF §10.48): on the context alone
        // (facts, no guards/trap yet), instantiate the primed body copy of
        // the trap's loop, link state t to the copy's latch values, and
        // report well-formedness + satisfiability. No verdict.
        if (Cfg.Inductive) indSmoke();
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
        profileQuery("main", ResultString, QueryLatency);
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
        if (NarrowMode) {
            // Narrow encoding: ordinary verdicts are NOT taken from it (the
            // operands' smallness is only certifiable under a hypothesis).
            if (IsUnsat) Log << "    -> [narrow] UNSAT on the narrow encoding without H: ignored (exact verdict stands)\n";
        } else
            Job.Eliminate = IsUnsat;

        // PHASE 3.5 (MV only): a SAT verdict may still be dead under a
        // runtime-checkable hypothesis over loop-invariant values.
        if (Cfg.MultiVersion && (NarrowMode || !IsUnsat) &&
            ResultString.find("SAT") != std::string::npos)
            mvPhase();

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

// =====================================================================
// PHASE 3.5 -- MV hypothesis mining (HANDOFF §10.22). Runs only after a
// SAT verdict with the solver still holding  context | push | trap.
//
//   T1 length-vs-index : trap <=> idx >=u count (or idx >u count) with
//        count loop-invariant and idx not -> candidate count >u hi(idx)
//        (resp. >=u), hi from the index's static unsigned range.
//   T2 sane range      : every loop-invariant integer free variable v ->
//        candidates 0 <=s v and v <=s 2^k (k = min(mv-sane, W-2)).
//
// All candidates are asserted TRACKED (|MV:i|) on top of the trap scope
// and the query is re-checked. UNSAT => the core names the minimal H_T;
// then H_T alone (with the context) must be SAT (a contradictory H would
// make the fast copy dead code: refuse). SAT/UNKNOWN => not versionable.
// Every conjunct is an ICmp between a loop-invariant value and a
// constant, hence evaluable in the loop preheader (Stage 3 hoists it).
// Uses only LI (read-only) and stateless ValueTracking: no FactGate.
// =====================================================================
static std::string predText(ICmpInst::Predicate P) {
    switch (P) {
    case ICmpInst::ICMP_UGT: return ">u";  case ICmpInst::ICMP_UGE: return ">=u";
    case ICmpInst::ICMP_ULT: return "<u";  case ICmpInst::ICMP_ULE: return "<=u";
    case ICmpInst::ICMP_SGT: return ">s";  case ICmpInst::ICMP_SGE: return ">=s";
    case ICmpInst::ICMP_SLT: return "<s";  case ICmpInst::ICMP_SLE: return "<=s";
    default: return "?";
    }
}

// T3 preparation (HANDOFF §10.29), under the FactGate: for a bounds trap
// `trap <=> idx >=u count` (count loop-invariant, idx not) compute SCEV's
// symbolic maximum of idx over the loop nest: replace each AddRec
// (innermost first, step provably non-negative) by its value at the last
// iteration. Result must be invariant in some enclosing loop and safe to
// expand there. Stored on the job; no Z3 work here.
void TrapSolver::prepareT3() {
    if (!FC.SE || !FC.LI) return;
    Loop *L = FC.LI->getLoopFor(Job.PredBB);
    auto *IC = dyn_cast<ICmpInst>(Job.TrapCond);
    if (!L || !IC) { if (Cfg.MultiVersion && L) Log << "    -> [mv] T3: trap condition not an ICmp\n"; return; }
    ICmpInst::Predicate P = IC->getPredicate();
    if (!Job.TrapOnTrue) P = ICmpInst::getInversePredicate(P);
    Value *A = IC->getOperand(0), *B = IC->getOperand(1);
    Value *Idx = nullptr, *Cnt = nullptr; bool Strict = false;
    auto inv = [&](Value *V) { return V->getType()->isIntegerTy() && L->isLoopInvariant(V); };
    if ((P == ICmpInst::ICMP_UGE || P == ICmpInst::ICMP_UGT) && inv(B) && !L->isLoopInvariant(A)) {
        Idx = A; Cnt = B; Strict = (P == ICmpInst::ICMP_UGT);
    } else if ((P == ICmpInst::ICMP_ULE || P == ICmpInst::ICMP_ULT) && inv(A) && !L->isLoopInvariant(B)) {
        Idx = B; Cnt = A; Strict = (P == ICmpInst::ICMP_ULT);
    }
    if (!Idx) { Log << "    -> [mv] T3: not a bounds shape (idx vs invariant count)\n"; return; }
    if (!FC.SE->isSCEVable(Idx->getType())) return;
    ScalarEvolution &SE = *FC.SE;
    const SCEV *S = SE.getSCEV(Idx);
    // Peel AddRecs innermost-first, at most nest depth + 2 rounds.
    for (unsigned Round = 0; Round < 6; ++Round) {
        // find the innermost AddRec in S
        const SCEVAddRecExpr *Inner = nullptr;
        SmallVector<const SCEV *, 16> WL{S}; SmallPtrSet<const SCEV *, 32> Seen;
        while (!WL.empty()) {
            const SCEV *C = WL.pop_back_val();
            if (!Seen.insert(C).second) continue;
            if (auto *AR = dyn_cast<SCEVAddRecExpr>(C))
                if (!Inner || AR->getLoop()->getLoopDepth() > Inner->getLoop()->getLoopDepth()) Inner = AR;
            for (const SCEV *Op : C->operands()) WL.push_back(Op);
        }
        if (!Inner) break;
        // Affine only. The step's SIGN is NOT required: S is a hypothesis
        // candidate, not a fact -- soundness rests on the re-solve under H
        // (the solver proves the trap dead itself; if S is not the true
        // maximum the re-solve simply stays SAT). T2's `step >=s 0` is
        // available as a conjunct when the proof needs it.
        if (!Inner->isAffine()) {
            std::string T; raw_string_ostream O(T); Inner->print(O);
            Log << "    -> [mv] T3: refused, AddRec not affine: " << T << "\n"; return; }
        // Trip count through the LATCH edge only: the loop's own bound.
        // The generic symbolic-max BTC mixes in the trap exits (a bounds
        // check is a loop exit), which makes H circular (count > ... umax count).
        const Loop *IL0 = Inner->getLoop();
        const SCEV *BTC = SE.getCouldNotCompute();
        if (BasicBlock *LB = IL0->getLoopLatch())
            BTC = SE.getExitCount(IL0, LB, ScalarEvolution::SymbolicMaximum);
        if (isa<SCEVCouldNotCompute>(BTC)) {
            // Fallback (hypothesis-grade, like PHIINV-hi): read the latch
            // compare. If the back edge is taken iff  V pred B  with V an
            // affine unit-step AddRec {v0,+,1} of this loop and B invariant,
            // then the back-edge count is <= B - v0 (<=) or B - 1 - v0 (<).
            // Approximate is fine: soundness rests on the re-solve under H.
            const Loop *IL = Inner->getLoop();
            BasicBlock *Latch = IL->getLoopLatch();
            auto *Br = Latch ? dyn_cast<BranchInst>(Latch->getTerminator()) : nullptr;
            auto *Cmp = (Br && Br->isConditional()) ? dyn_cast<ICmpInst>(Br->getCondition()) : nullptr;
            if (Cmp) {
                ICmpInst::Predicate P = Cmp->getPredicate();
                if (Br->getSuccessor(0) != IL->getHeader()) P = ICmpInst::getInversePredicate(P);
                Value *A = Cmp->getOperand(0), *Bv = Cmp->getOperand(1);
                if (IL->isLoopInvariant(A) && !IL->isLoopInvariant(Bv)) { std::swap(A, Bv); P = ICmpInst::getSwappedPredicate(P); }
                if (!IL->isLoopInvariant(A) && IL->isLoopInvariant(Bv) && SE.isSCEVable(A->getType())) {
                    auto *AR = dyn_cast<SCEVAddRecExpr>(SE.getSCEV(A));
                    if (AR && AR->getLoop() == IL && AR->isAffine() && AR->getStepRecurrence(SE)->isOne()) {
                        const SCEV *BS = SE.getSCEV(Bv);
                        if (BS->getType() == AR->getType()) {
                            const SCEV *Lim = nullptr;
                            switch (P) {
                            case ICmpInst::ICMP_SLE: case ICmpInst::ICMP_ULE: Lim = BS; break;
                            case ICmpInst::ICMP_SLT: case ICmpInst::ICMP_ULT: Lim = SE.getMinusSCEV(BS, SE.getOne(BS->getType())); break;
                            default: break;
                            }
                            // back edge at iteration t iff v0 + t <= Lim  =>  last
                            // iteration index (= back-edge count) is Lim - v0 + 1
                            if (Lim) BTC = SE.getAddExpr(SE.getMinusSCEV(Lim, AR->getStart()), SE.getOne(Lim->getType()));
                        }
                    }
                }
            }
            if (isa<SCEVCouldNotCompute>(BTC)) BTC = SE.getSymbolicMaxBackedgeTakenCount(IL);
            if (isa<SCEVCouldNotCompute>(BTC)) { Log << "    -> [mv] T3: refused, no symbolic trip count for loop depth " << IL->getLoopDepth() << "\n"; return; }
            std::string T; raw_string_ostream O(T); BTC->print(O);
            Log << "    -> [mv] T3: latch-derived trip-count bound for loop depth " << IL->getLoopDepth()
                << " (latch " << (Latch ? Latch->getName() : "?") << "): " << T << "\n";
        }
        const SCEV *Last = Inner->evaluateAtIteration(BTC, SE);
        // substitute Inner -> Last everywhere in S
        struct Rewriter : public SCEVRewriteVisitor<Rewriter> {
            const SCEV *From, *To;
            Rewriter(ScalarEvolution &SE, const SCEV *F, const SCEV *T) : SCEVRewriteVisitor(SE), From(F), To(T) {}
            const SCEV *visitAddRecExpr(const SCEVAddRecExpr *E) { return E == From ? To : SCEVRewriteVisitor::visitAddRecExpr(E); }
        };
        Rewriter R(SE, Inner, Last);
        S = R.visit(S);
    }
    if (isa<SCEVCouldNotCompute>(S)) { Log << "    -> [mv] T3: refused, bound not computable\n"; return; }
    // Outermost loop in which S is invariant.
    Loop *Hoist = L;
    if (!SE.isLoopInvariant(S, L)) { std::string T; raw_string_ostream O(T); S->print(O); Log << "    -> [mv] T3: refused, bound not invariant in the trap loop: " << T << "\n"; return; }
    for (Loop *Pp = L->getParentLoop(); Pp && SE.isLoopInvariant(S, Pp); Pp = Pp->getParentLoop()) Hoist = Pp;
    bool FnInv = (Hoist->getParentLoop() == nullptr);
    SCEVExpander Exp(SE, "mv.t3");
    if (!Exp.isSafeToExpandAt(S, Hoist->getLoopPreheader() ? Hoist->getLoopPreheader()->getTerminator()
                                                             : Hoist->getHeader()->getTerminator())) { Log << "    -> [mv] T3: refused, bound not safe to expand\n"; return; }
    Job.MVIdxMax = S; Job.MVCount = Cnt; Job.MVStrict = Strict; Job.MVIdxHoist = FnInv ? nullptr : Hoist;
    std::string SS; raw_string_ostream OS(SS); S->print(OS);
    Log << "    -> [mv] T3 symbolic index bound: max(idx) = " << SS << "\n";
}

// Minimal SCEV -> Z3 bit-vector translator for T3 hypotheses. Refuses
// (OK=false) on any node kind not listed. Leaves become the query's own
// variables (free if not encoded -- H then only relates count to them).
z3::expr TrapSolver::scevToBV(const SCEV *S, bool &OK, unsigned W) {
    z3::expr Bad = Encoder.apintToBV(APInt(W, 0));
    if (!OK) return Bad;
    auto Cast = [&](z3::expr E, unsigned FromW) {
        if (FromW == W) return E;
        if (FromW < W) return z3::zext(E, W - FromW);
        return E.extract(W - 1, 0);
    };
    if (auto *C = dyn_cast<SCEVConstant>(S)) return Encoder.apintToBV(C->getAPInt().zextOrTrunc(W));
    if (auto *U = dyn_cast<SCEVUnknown>(S)) {
        unsigned FW = U->getType()->getIntegerBitWidth();
        return Cast(Encoder.valueAsBV(U->getValue(), FW), FW);
    }
    if (auto *A = dyn_cast<SCEVAddExpr>(S)) {
        z3::expr R = scevToBV(A->getOperand(0), OK, W);
        for (unsigned i = 1; i < A->getNumOperands(); ++i) R = R + scevToBV(A->getOperand(i), OK, W);
        return R;
    }
    if (auto *M = dyn_cast<SCEVMulExpr>(S)) {
        z3::expr R = scevToBV(M->getOperand(0), OK, W);
        for (unsigned i = 1; i < M->getNumOperands(); ++i) R = Encoder.mulMaybeNarrow(R, scevToBV(M->getOperand(i), OK, W));
        return R;
    }
    if (auto *Z = dyn_cast<SCEVZeroExtendExpr>(S)) {
        unsigned FW = Z->getOperand()->getType()->getIntegerBitWidth();
        z3::expr In = scevToBV(Z->getOperand(), OK, FW);
        return FW < W ? z3::zext(In, W - FW) : Cast(In, FW);
    }
    if (auto *X = dyn_cast<SCEVSignExtendExpr>(S)) {
        unsigned FW = X->getOperand()->getType()->getIntegerBitWidth();
        z3::expr In = scevToBV(X->getOperand(), OK, FW);
        return FW < W ? z3::sext(In, W - FW) : Cast(In, FW);
    }
    if (auto *T = dyn_cast<SCEVTruncateExpr>(S)) {
        unsigned FW = T->getOperand()->getType()->getIntegerBitWidth();
        return Cast(scevToBV(T->getOperand(), OK, FW), FW);
    }
    if (auto *MM = dyn_cast<SCEVMinMaxExpr>(S)) {
        z3::expr R = scevToBV(MM->getOperand(0), OK, W);
        for (unsigned i = 1; i < MM->getNumOperands(); ++i) {
            z3::expr O = scevToBV(MM->getOperand(i), OK, W);
            switch (S->getSCEVType()) {
            case scUMaxExpr: R = z3::ite(z3::ugt(R, O), R, O); break;
            case scUMinExpr: R = z3::ite(z3::ult(R, O), R, O); break;
            case scSMaxExpr: R = z3::ite(R > O, R, O); break;
            case scSMinExpr: R = z3::ite(R < O, R, O); break;
            default: OK = false;
            }
        }
        return R;
    }
    OK = false; return Bad;
}

void TrapSolver::mvPhase() {
    if (!FC.LI) return;
    // Whole-query narrowing (§10.38): rewrite defs/guards/trap once; on
    // refusal fall back to the exact solver path (this solver's encoding is
    // exact in mode 1, so the fallback is just "no narrowing").
    bool Whole = false;
    if (NarrowMode == 1) {
        try {
            for (int v = 0; v < 2; ++v) {
                NarrowSet &S = NS[v];
                S.N = std::make_unique<Narrower>(Encoder.context(), 64, 32, /*FreshInputs=*/true, /*Linearize=*/v == 0);
                S.Defs32.clear(); S.Guards32.clear(); S.Facts32.clear();
                for (auto &D : Defs64) S.Defs32.push_back(S.N->rewrite(D));
                for (auto &G : Job.Guards) {
                    try { S.Guards32.push_back(S.N->rewrite(Encoder.condExpr(G.first, G.second))); }
                    catch (const NarrowRefused &R) { if (v == 1) Log << "    -> [narrow] guard dropped (" << R.Why << ")\n"; }
                }
                S.Trap32 = S.N->rewrite(Encoder.condExpr(Job.TrapCond, Job.TrapOnTrue));
                for (auto &F : Encoder.factExprs()) { try { S.Facts32.push_back(S.N->rewrite(F)); } catch (const NarrowRefused &) {} }
            }
            WholeN = std::make_unique<Narrower>(Encoder.context(), 64, 32, true, false);
            { // WholeN mirrors NS[1] for flags/links/inputs (same rewrite, exact products)
                for (auto &D : Defs64) WholeN->rewrite(D);
                for (auto &G : Job.Guards) { try { WholeN->rewrite(Encoder.condExpr(G.first, G.second)); } catch (const NarrowRefused &) {} }
                WholeN->rewrite(Encoder.condExpr(Job.TrapCond, Job.TrapOnTrue));
                for (auto &F : Encoder.factExprs()) { try { WholeN->rewrite(F); } catch (const NarrowRefused &) {} }
            }
            Guards64NoMul.clear();
            std::function<bool(const z3::expr &)> hasMul = [&](const z3::expr &E) -> bool {
                if (!E.is_app()) return false;
                if (E.decl().decl_kind() == Z3_OP_BMUL) return true;
                for (unsigned i = 0; i < E.num_args(); ++i) if (hasMul(E.arg(i))) return true;
                return false;
            };
            for (auto &G : Job.Guards) { z3::expr GE = Encoder.condExpr(G.first, G.second); if (!hasMul(GE)) Guards64NoMul.push_back(GE); }
            Whole = true;
            Log << "    -> [narrow] whole-query 64->32 rewrite: " << WholeN->flags().size() << " overflow flags, "
                << WholeN->numInputs() << " 64-bit inputs, " << NS[0].N->numLinearized() << " product(s) linearized\n";
        } catch (const NarrowRefused &R) {
            Log << "    -> [narrow] whole-query narrowing refused: " << R.Why << " (exact solver used)\n";
            Whole = false;
        }
    }
    Loop *L = FC.LI->getLoopFor(Job.PredBB);
    if (!L) { Log << "    -> [mv] trap not inside a loop: not versionable\n"; return; }
    struct Cand { Value *V; ICmpInst::Predicate P; APInt C; std::string Text; Loop *Outer;
                  const SCEV *Bound = nullptr; std::optional<z3::expr> BoundE; };
    // A hypothesis operand must be evaluable in the hoist loop's preheader:
    // loop-invariant AND its definition must dominate the loop header (the
    // query's free variables include SCEV leaves pre-encoded for facts,
    // which need not dominate the trap's loop at all).
    auto domHeader = [&](Value *V, const Loop *P) {
        auto *I = dyn_cast<Instruction>(V);
        if (!I) return true;                         // arguments, constants
        return FC.DT->dominates(I->getParent(), P->getHeader()) && !P->contains(I->getParent());
    };
    // Outermost loop (containing L) in which V is still invariant: the
    // level H can be hoisted to. nullptr = invariant in the whole function.
    auto outerInv = [&](Value *V) -> Loop * {
        Loop *Best = L;
        for (Loop *P = L; P; P = P->getParentLoop())
            if (P->isLoopInvariant(V) && domHeader(V, P)) Best = P; else break;
        if (Best->getParentLoop() == nullptr && Best->isLoopInvariant(V)) {
            // invariant in the outermost loop: is it defined outside every loop?
            if (auto *I = dyn_cast<Instruction>(V))
                if (FC.LI->getLoopFor(I->getParent()) == nullptr) return nullptr;
            if (!isa<Instruction>(V)) return nullptr;
        }
        return Best;
    };
    std::vector<Cand> Cands;
    auto isInv = [&](Value *V) {
        return V && V->getType()->isIntegerTy() && L->isLoopInvariant(V) && domHeader(V, L);
    };
    auto nameOf = [](Value *V) {
        std::string S; raw_string_ostream OS(S); V->printAsOperand(OS, false); return S;
    };
    // ---- T1
    if (auto *IC = dyn_cast<ICmpInst>(Job.TrapCond)) {
        ICmpInst::Predicate P = IC->getPredicate();
        if (!Job.TrapOnTrue) P = ICmpInst::getInversePredicate(P);   // trap <=> P(A,B)
        Value *A = IC->getOperand(0), *B = IC->getOperand(1);
        Value *Idx = nullptr, *Cnt = nullptr; bool Strict = false;
        if ((P == ICmpInst::ICMP_UGE || P == ICmpInst::ICMP_UGT) && isInv(B) && !L->isLoopInvariant(A)) {
            Idx = A; Cnt = B; Strict = (P == ICmpInst::ICMP_UGT);
        } else if ((P == ICmpInst::ICMP_ULE || P == ICmpInst::ICMP_ULT) && isInv(A) && !L->isLoopInvariant(B)) {
            Idx = B; Cnt = A; Strict = (P == ICmpInst::ICMP_ULT);
        }
        if (Idx) {
            const DataLayout &DL = Job.F->getParent()->getDataLayout();
            SimplifyQuery SQ(DL, FC.DT, /*AC=*/nullptr, /*CxtI=*/Job.Br);
            ConstantRange CR = computeConstantRangeIncludingKnownBits(Idx, /*ForSigned=*/false, SQ);
            APInt Hi = CR.getUnsignedMax();
            // A nearly-full index range would demand count > 2^(W-1),
            // which no length can satisfy: skip (would be refused as vacuous).
            if (!Hi.isMaxValue() && Hi.getActiveBits() < Idx->getType()->getIntegerBitWidth() - 1) {
                // trap <=> idx >=u count  ==> dead if count >u hi(idx)
                // trap <=> idx >u  count  ==> dead if count >=u hi(idx)
                ICmpInst::Predicate HP = Strict ? ICmpInst::ICMP_UGE : ICmpInst::ICMP_UGT;
                SmallString<32> HS; Hi.toString(HS, 10, false);
                Cands.push_back({Cnt, HP, Hi, nameOf(Cnt) + " " + predText(HP) + " " + std::string(HS), outerInv(Cnt)});
            }
        }
    }
    // ---- T2
    for (Value *V : Encoder.getFreeVariables()) {
        if (!isInv(V)) {
            if (Cfg.ProfileMs && V->getType()->isIntegerTy())
                Log << "    -> [mv] T2 skip " << nameOf(V) << ": " << (L->isLoopInvariant(V) ? "invariant but def does not dominate header / lies in loop" : "not loop-invariant in trap loop depth " + std::to_string(L->getLoopDepth())) << "\n";
            continue;
        }
        unsigned W = V->getType()->getIntegerBitWidth();
        if (W < 8) continue;
        unsigned K = std::min<unsigned>(Cfg.MVSaneExp, W - 2);
        APInt Lim = APInt::getOneBitSet(W, K);
        Loop *O = outerInv(V);
        Cands.push_back({V, ICmpInst::ICMP_SGE, APInt(W, 0), nameOf(V) + " >=s 0", O});
        Cands.push_back({V, ICmpInst::ICMP_SLE, Lim, nameOf(V) + " <=s 2^" + std::to_string(K), O});
        // Half-width sane bound: a product of two such values cannot wrap
        // (needed when the trap index is quadratic, e.g. (i-1)*n + k).
        unsigned K2 = W / 2 - 1;
        if (K2 < K) {
            APInt Lim2 = APInt::getOneBitSet(W, K2);
            Cands.push_back({V, ICmpInst::ICMP_SLE, Lim2, nameOf(V) + " <=s 2^" + std::to_string(K2), O});
        }
        if (NarrowMode && Cfg.NarrowBits - 1 < K2) {
            // narrow-mul mode: a bound that makes mul operands provably < 2^NarrowBits,
            // and the product-sized bound 2^(2K-2) for lengths (the loosening rung
            // between 2^(K-1) and 2^(W/2-1)).
            unsigned K3 = Cfg.NarrowBits - 1, K4 = 2 * Cfg.NarrowBits - 2;
            APInt Lim3 = APInt::getOneBitSet(W, K3);
            Cands.push_back({V, ICmpInst::ICMP_SLE, Lim3, nameOf(V) + " <=s 2^" + std::to_string(K3), O});
            if (K4 < K2) {
                APInt Lim4 = APInt::getOneBitSet(W, K4);
                Cands.push_back({V, ICmpInst::ICMP_SLE, Lim4, nameOf(V) + " <=s 2^" + std::to_string(K4), O});
            }
        }
    }
    // ---- T3 (symbolic bound prepared in factPhase)
    if (Job.MVIdxMax && Job.MVCount && isInv(Job.MVCount)) {
        bool OK = true;
        unsigned W = Job.MVCount->getType()->getIntegerBitWidth();
        z3::expr BE = scevToBV(Job.MVIdxMax, OK, W);
        if (OK) {
            std::string SS; raw_string_ostream OS(SS); Job.MVIdxMax->print(OS);
            ICmpInst::Predicate HP = Job.MVStrict ? ICmpInst::ICMP_UGE : ICmpInst::ICMP_UGT;
            // Hoist level: the DEEPER of where `count` is invariant and where
            // the bound S is invariant (both must dominate the check block).
            Loop *OC = outerInv(Job.MVCount), *OB = Job.MVIdxHoist, *O = nullptr;
            if (!OC) O = OB; else if (!OB) O = OC; else O = OC->contains(OB) ? OB : OC;
            Cand C{Job.MVCount, HP, APInt(W, 0), nameOf(Job.MVCount) + " " + predText(HP) + " (" + SS + ")", O};
            C.Bound = Job.MVIdxMax; C.BoundE = BE;
            Cands.push_back(C);
        } else Log << "    -> [mv] T3 bound not translatable to bit-vectors: skipped\n";
    }
    if (Cands.empty()) { Log << "    -> [mv] no loop-invariant hypothesis candidates\n"; return; }

    auto mkExpr = [&](const Cand &C) {
        unsigned W = C.V->getType()->getIntegerBitWidth();
        z3::expr V = Encoder.valueAsBV(C.V, W), K = C.BoundE ? *C.BoundE : Encoder.apintToBV(C.C);
        switch (C.P) {
        case ICmpInst::ICMP_UGT: return z3::ugt(V, K); case ICmpInst::ICMP_UGE: return z3::uge(V, K);
        case ICmpInst::ICMP_ULT: return z3::ult(V, K); case ICmpInst::ICMP_ULE: return z3::ule(V, K);
        case ICmpInst::ICMP_SGT: return V > K;         case ICmpInst::ICMP_SGE: return V >= K;
        case ICmpInst::ICMP_SLT: return V < K;         default:                 return V <= K;
        }
    };
    // ---------------------------------------------------------------------
    // One check of "trap dead under the candidate set Use", mode-aware.
    //   exact / mul-narrow : push, assert Use (tracked), check, core, pop
    //   whole-narrow (§10.38): Q_A on the 32-bit instrumented query and
    //                          Q_B (no guards/trap) ruling out every flag
    // ---------------------------------------------------------------------
    struct CheckResult { bool Unsat = false, Unknown = false; double Ms = 0; std::vector<size_t> Core; };
    auto coreOf = [&](const std::string &Core, const std::vector<size_t> &Use) {
        std::vector<size_t> K;
        for (size_t i : Use) {
            std::string Tok = "|MV:" + std::to_string(i) + "|", Tok2 = "MV:" + std::to_string(i) + " ";
            if (Core.find(Tok) != std::string::npos || Core.find(Tok2) != std::string::npos) K.push_back(i);
        }
        return K;
    };
    // Whole mode: EXEMPT inputs (HANDOFF §10.45): a 64-bit input with no
    // hypothesis candidate and no fact cannot be bounded, so its 32-bit image
    // may be garbage. Everything depending on it (guards, facts, flags) is
    // dropped from Q_A/Q_B -- a weakening, hence sound; if the trap itself
    // depends on it, whole-query narrowing is refused for this job.
    std::vector<z3::expr> ExemptC;   // 64-bit inputs and their 32-bit images (both narrowers)
    if (Whole) {
        for (auto &In : WholeN->inputs()) {
            // Bounded = has a hypothesis candidate. Inputs the trap condition
            // itself mentions are never exempt (their facts carry the proof);
            // an unbounded input that occurs only in guards/facts is exempt.
            bool Bounded = false;
            for (auto &C : Cands) if (z3::eq(Encoder.valueAsBV(C.V, C.V->getType()->getIntegerBitWidth()), In)) { Bounded = true; break; }
            if (Bounded) continue;
            if (Narrower::mentionsAny(Encoder.condExpr(Job.TrapCond, Job.TrapOnTrue), {In})) continue;
            ExemptC.push_back(In);
            for (int v = 0; v < 2; ++v) if (auto Im = NS[v].N->imageOf(In)) ExemptC.push_back(*Im);
            if (auto Im = WholeN->imageOf(In)) ExemptC.push_back(*Im);
            Log << "    -> [narrow] exempt input (unbounded, guards/facts/flags over it dropped): " << In.to_string() << "\n";
        }

    }
    auto keep = [&](const z3::expr &E) { return ExemptC.empty() || !Narrower::mentionsAny(E, ExemptC); };
    // Whole mode: candidate conjuncts are rewritten to 32 bits as well (a T3
    // bound carries the product); a candidate whose constant does not fit is
    // unusable at 32 bits and is dropped from every Use set.
    std::map<size_t, std::optional<z3::expr>> CandWv[2];
    auto candWv = [&](size_t i, int v) -> std::optional<z3::expr> {
        auto It = CandWv[v].find(i);
        if (It != CandWv[v].end()) return It->second;
        std::optional<z3::expr> R;
        try { R = NS[v].N->rewrite(mkExpr(Cands[i])); }
        catch (const NarrowRefused &X) { R.reset(); if (v == 1) Log << "    -> [narrow] candidate dropped at 32 bits: {" << Cands[i].Text << "}: " << X.Why << "\n"; }
        CandWv[v][i] = R; return R;
    };
    auto candW = [&](size_t i) { return candWv(i, 1); };
    auto check = [&](const std::vector<size_t> &UseIn, bool Tracked) -> CheckResult {
        CheckResult CR;
        std::vector<size_t> Use;
        for (size_t i : UseIn) if (!Whole || !Cands[i].Bound || candW(i)) Use.push_back(i);   // T3 must be rewritable
        if (Whole && Tracked) { Log << "    -> [narrow] Q_A/Q_B hypothesis set:"; for (size_t i : Use) Log << " {" << Cands[i].Text << "}"; Log << "\n"; }
        if (Whole) {
            z3::context &C = Encoder.context();
            auto mk = [&](int QA) {   // QA: -1 = Q_B, 0 = Q_A' (linearized), 1 = Q_A (exact products)
                z3::solver S(C);
                S.set("timeout", (unsigned)Encoder.timeoutMs());
                if (Tracked) S.set("unsat_core", true);
                if (QA >= 0) {
                    // Q_A: PURE 32-bit query. Inputs are fresh 32-bit consts;
                    // facts and constant-compare hypotheses are rewritten
                    // (exact whenever the inputs fit, which Q_B certifies);
                    // anything the rewriter refuses is simply omitted
                    // (weakening the assumptions keeps UNSAT sound). Version 0
                    // replaces variable products by fresh constants with the
                    // linear facts of §10.44 (relaxation; UNSAT still sound).
                    NarrowSet &V = NS[QA];
                    for (auto &D : V.Defs32) if (keep(D)) S.add(D);
                    for (auto &F : V.Facts32) if (keep(F)) S.add(F);
                    for (size_t i : Use) {
                        auto CE = candWv(i, QA); if (!CE) continue;
                        if (Tracked) S.add(*CE, ("MV:" + std::to_string(i)).c_str()); else S.add(*CE);
                    }
                    for (auto &G : V.Guards32) if (keep(G)) S.add(G);
                    S.add(*V.Trap32);
                    if (QA == 0) for (auto &LF : V.N->linearFacts()) if (keep(LF)) S.add(LF);
                } else {
                    // Q_B: 64-bit inputs exactly (facts, T1/T2 hypotheses,
                    // multiplication-free guards), linked to their 32-bit
                    // images so the operation flags are evaluated on them.
                    for (auto &F : Encoder.factExprs()) if (F.is_bool()) S.add(F);
                    for (size_t i : Use) {
                        if (Cands[i].Bound) continue;
                        if (Tracked) S.add(mkExpr(Cands[i]), ("MV:" + std::to_string(i)).c_str()); else S.add(mkExpr(Cands[i]));
                    }
                    for (auto &G : Guards64NoMul) if (keep(G)) S.add(G);
                    for (auto &L : WholeN->links()) if (keep(L)) S.add(L);
                }
                return S;
            };
            auto run = [&](z3::solver &S, const z3::expr &Extra) {
                S.add(Extra);
                auto T0 = std::chrono::steady_clock::now();
                z3::check_result R = S.check();
                CR.Ms += std::chrono::duration<double, std::milli>(std::chrono::steady_clock::now() - T0).count();
                return R;
            };
            // Q_A' (linearized) first; on SAT/UNKNOWN fall back to exact Q_A.
            auto noFlagK = [&](Narrower &N) { z3::expr R = C.bool_val(true); for (auto &F : N.flags()) if (keep(F)) R = R && !F; return R; };
            auto anyFlagK = [&](Narrower &N) { z3::expr R = C.bool_val(false); for (auto &F : N.flags()) if (keep(F)) R = R || F; return R; };
            z3::solver SA = mk(0);
            z3::check_result RA = run(SA, noFlagK(*NS[0].N));
            if (RA == z3::unsat) Log << "    -> [narrow] Q_A' (linearized products) UNSAT in " << CR.Ms << " ms\n";
            else {
                Log << "    -> [narrow] Q_A' (linearized) " << (RA == z3::unknown ? "UNKNOWN" : "SAT") << " (" << CR.Ms << " ms): exact Q_A\n";
                SA = mk(1);
                RA = run(SA, noFlagK(*WholeN));
            }
            if (Cfg.ProfileMs && CR.Ms >= Cfg.ProfileMs) {
                static unsigned Seq = 0;
                std::string Name = "logs/profile/" + Job.F->getName().str().substr(0, 40) + "_" + std::to_string(Job.Index) + "_QA" + std::to_string(Seq++) + ".smt2";
                std::error_code EC; raw_fd_ostream OS(Name, EC, sys::fs::OF_Text);
                if (!EC) { OS << SA.to_smt2() << "\n"; Log << "    -> [profile] dumped narrow Q_A (" << CR.Ms << " ms, " << (RA == z3::unsat ? "UNSAT" : RA == z3::unknown ? "UNKNOWN" : "SAT") << ") " << Name << "\n"; }
            }
            if (RA != z3::unsat) {
                CR.Unknown = (RA == z3::unknown);
                if (RA == z3::sat) {
                    z3::model M = SA.get_model();
                    Log << "    -> [narrow] Q_A SAT model, inputs:";
                    for (auto &I : WholeN->inputs()) Log << " " << I.to_string() << "=" << M.eval(I, true).to_string();
                    Log << "\n         trap32 = " << M.eval(*NS[1].Trap32, true).to_string() << ", H conjuncts: " << Use.size() << "\n";
                }
                return CR;
            }
            std::string CoreA; if (Tracked) { z3::expr_vector c = SA.unsat_core(); for (unsigned i = 0; i < c.size(); ++i) CoreA += c[i].to_string() + " "; }
            z3::solver SB = mk(-1);
            z3::check_result RB = run(SB, anyFlagK(*WholeN));
            if (RB != z3::unsat) {
                CR.Unknown = (RB == z3::unknown);
                Log << "    -> [narrow] Q_B: some 64-bit value may leave 32 bits under H (" << (RB == z3::unknown ? "UNKNOWN" : "SAT") << ")";
                if (RB == z3::sat) {
                    z3::model M = SB.get_model(); unsigned Shown = 0;
                    for (size_t k = 0; k < WholeN->flags().size() && Shown < 3; ++k) {
                        z3::expr V = M.eval(WholeN->flags()[k], true);
                        if (V.is_true()) { Log << "\n         flag set: " << WholeN->flagTexts()[k]; ++Shown; }
                    }
                    Log << "\n         inputs:"; for (auto &I : WholeN->inputs()) Log << " " << I.to_string() << "=" << M.eval(I, true).to_string();
                    Log << "\n         SB assertions: " << SB.assertions().size() << ", facts: " << Encoder.factExprs().size() << ", H in Q_B:";
                    for (size_t i : Use) if (!Cands[i].Bound) Log << " {" << Cands[i].Text << "=" << M.eval(mkExpr(Cands[i]), true).to_string() << "}";
                }
                Log << "\n"; return CR;
            }
            std::string CoreB; if (Tracked) { z3::expr_vector c = SB.unsat_core(); for (unsigned i = 0; i < c.size(); ++i) CoreB += c[i].to_string() + " "; }
            CR.Unsat = true;
            if (Tracked) {
                std::vector<size_t> KA = coreOf(CoreA, Use), KB = coreOf(CoreB, Use);
                for (size_t i : Use) if (std::find(KA.begin(), KA.end(), i) != KA.end() || std::find(KB.begin(), KB.end(), i) != KB.end()) CR.Core.push_back(i);
            }
            return CR;
        }
        Encoder.push();
        for (size_t i : Use) Encoder.assertRawFact(mkExpr(Cands[i]), Tracked ? "MV:" + std::to_string(i) : std::string());
        auto [Res, L1] = Encoder.checkSatisfiability();
        CR.Ms = L1;
        if (Res.find("UNSAT") != std::string::npos) { CR.Unsat = true; if (Tracked) CR.Core = coreOf(Encoder.getUnsatCore(), Use); }
        else CR.Unknown = Res.find("UNKNOWN") != std::string::npos;
        Encoder.pop();
        return CR;
    };

    // Re-solve, hoistability-first: round 0 uses only candidates that are
    // invariant in the whole function (sizes, globals, arguments) so H can
    // be hoisted to the outermost loop and paid once; round 1 adds the
    // candidates invariant only in some enclosing loop.
    std::vector<size_t> Keep; double Lat = 0.0; unsigned Round = 0;
    for (Round = 0; Round < 2 && Keep.empty(); ++Round) {
        std::vector<size_t> Use;
        for (size_t i = 0; i < Cands.size(); ++i)
            if (Round == 1 || Cands[i].Outer == nullptr) Use.push_back(i);
        if (Use.empty()) continue;
        if (Round == 1) { bool Same = true; for (auto &C : Cands) if (C.Outer) { Same = false; break; } if (Same) break; }
        CheckResult CR = check(Use, true);
        Lat += CR.Ms; Job.LatencyMs += CR.Ms;
        profileQuery(Round == 0 ? "mv0" : "mv1", CR.Unsat ? "UNSAT" : (CR.Unknown ? "UNKNOWN" : "SAT"), CR.Ms);
        if (CR.Unsat) {
            Keep = CR.Core;
            if (Keep.empty()) { Log << "    -> [mv] UNSAT but no hypothesis in core: refusing\n"; return; }
            break;
        }
        if (Round == 1 || Use.size() == Cands.size()) {
            Log << "    -> [mv] still " << (CR.Unknown ? "UNKNOWN" : "SAT") << " under " << Use.size()
                << " hypothesis candidate(s): not versionable\n";
            return;
        }
    }
    if (Keep.empty()) { Log << "    -> [mv] no usable hypothesis: not versionable\n"; return; }
    if (NarrowMode && !Whole && !Encoder.narrowSideConds().empty()) {
        // Q1 (HANDOFF §10.37, mul-only fallback): under H, every narrowed
        // multiplication's operands must be < 2^K on trap-reaching executions.
        Encoder.push();
        for (size_t i : Keep) Encoder.assertRawFact(mkExpr(Cands[i]), std::string());
        z3::expr All = Encoder.narrowSideConds()[0];
        for (size_t k = 1; k < Encoder.narrowSideConds().size(); ++k) All = All && Encoder.narrowSideConds()[k];
        Encoder.assertRawFact(!All, std::string());
        auto [RS, LS] = Encoder.checkSatisfiability();
        Job.LatencyMs += LS;
        Encoder.pop();
        if (RS.find("UNSAT") == std::string::npos) {
            Log << "    -> [narrow] side condition (mul operands < 2^" << Cfg.NarrowBits << " under H) not certified ("
                << (RS.find("UNKNOWN") != std::string::npos ? "UNKNOWN" : "SAT") << "): refusing\n";
            return;
        }
        Log << "    -> [narrow] side condition certified for " << Encoder.narrowSideConds().size() << " multiplication(s)\n";
    }
    // Greedy core minimization: Z3 cores are not minimal, and a spurious
    // conjunct (typically an UPPER bound on a length) needlessly shrinks the
    // fast path's domain. Upper bounds first, tightest first.
    {
        std::vector<size_t> Order(Keep);
        std::stable_sort(Order.begin(), Order.end(), [&](size_t a, size_t b) {
            auto isUpper = [&](size_t i) { return Cands[i].P == ICmpInst::ICMP_SLE || Cands[i].P == ICmpInst::ICMP_ULE; };
            bool ua = isUpper(a), ub = isUpper(b);
            if (ua != ub) return ua;
            if (ua && ub && !Cands[a].Bound && !Cands[b].Bound) return Cands[a].C.ult(Cands[b].C);
            return false;
        });
        for (size_t Drop : Order) {
            if (Keep.size() <= 1) break;
            std::vector<size_t> Try; for (size_t i : Keep) if (i != Drop) Try.push_back(i);
            CheckResult CR = check(Try, false);
            Job.LatencyMs += CR.Ms;
            Log << "    -> [mv] minimize: without {" << Cands[Drop].Text << "} -> "
                << (CR.Unsat ? "UNSAT, dropped" : (CR.Unknown ? "UNKNOWN, kept" : "SAT, kept")) << " (" << CR.Ms << " ms)\n";
            if (CR.Unsat) Keep = Try;
        }
    }
    // Loosening: an upper bound in the core may be tighter than needed; try
    // the looser candidates on the same value (ascending) and adopt the
    // loosest that still certifies.
    for (size_t idx = 0; idx < Keep.size(); ++idx) {
        size_t Cur = Keep[idx];
        if (Cands[Cur].Bound) continue;
        if (Cands[Cur].P != ICmpInst::ICMP_SLE && Cands[Cur].P != ICmpInst::ICMP_ULE) continue;
        std::vector<size_t> Looser;
        for (size_t j = 0; j < Cands.size(); ++j)
            if (j != Cur && !Cands[j].Bound && Cands[j].V == Cands[Cur].V && Cands[j].P == Cands[Cur].P && Cands[j].C.ugt(Cands[Cur].C))
                Looser.push_back(j);
        std::sort(Looser.begin(), Looser.end(), [&](size_t a, size_t b) { return Cands[a].C.ult(Cands[b].C); });
        for (size_t j : Looser) {
            std::vector<size_t> Try(Keep); Try[idx] = j;
            CheckResult CR = check(Try, false);
            Job.LatencyMs += CR.Ms;
            profileQuery("loosen", CR.Unsat ? "UNSAT" : (CR.Unknown ? "UNKNOWN" : "SAT"), CR.Ms);
            Log << "    -> [mv] loosen: {" << Cands[Cur].Text << "} -> {" << Cands[j].Text << "}: "
                << (CR.Unsat ? "UNSAT, adopted" : "kept tight") << " (" << CR.Ms << " ms)\n";
            if (!CR.Unsat) break;
            Keep[idx] = j; Cur = j;
        }
    }
    // Vacuity of H: context + H alone must be satisfiable.
    Encoder.pop();                      // drop the trap condition
    Encoder.push();
    for (size_t i : Keep) Encoder.assertRawFact(mkExpr(Cands[i]), std::string());
    auto [HRes, HLat] = Encoder.checkSatisfiability();
    Job.LatencyMs += HLat;
    Encoder.pop();
    if (HRes.find("UNSAT") != std::string::npos) {
        Log << "    -> [mv] hypothesis contradicts the context: refusing (H vacuous): {";
        for (size_t k = 0; k < Keep.size(); ++k) Log << (k ? ", " : "") << Cands[Keep[k]].Text;
        Log << "}\n";
        return;
    }
    // Hoist level: innermost of the conjuncts' outer-invariance levels.
    Loop *Hoist = nullptr; bool HoistFn = true;
    for (size_t i : Keep) {
        if (Cands[i].Outer == nullptr) continue;
        HoistFn = false;
        if (!Hoist || Cands[i].Outer->contains(Hoist) == false) {
            // choose the DEEPEST (most nested) level among conjunct levels
            if (!Hoist || Hoist->contains(Cands[i].Outer)) Hoist = Cands[i].Outer;
        }
    }
    if (HoistFn) { Hoist = L; while (Hoist->getParentLoop()) Hoist = Hoist->getParentLoop(); }
    for (size_t i : Keep) {
        TrapJob::MVConjunct MC;
        MC.V = Cands[i].V; MC.Pred = Cands[i].P;
        SmallString<32> CS; Cands[i].C.toString(CS, 10, false); MC.ConstStr = std::string(CS);
        MC.Text = Cands[i].Text;
        MC.Bound = Cands[i].Bound;
        Job.MVHyp.push_back(MC);
    }
    Job.MVLoop = Hoist;
    Job.MVEliminate = true;
    Log << "    -> [mv] DEAD UNDER HYPOTHESIS H = {";
    for (size_t k = 0; k < Job.MVHyp.size(); ++k) Log << (k ? ", " : "") << Job.MVHyp[k].Text;
    Log << "} (" << Keep.size() << " of " << Cands.size() << " candidates in core, round " << Round
        << "; re-solve " << Lat << " ms; trap loop depth " << L->getLoopDepth()
        << ", hoist to depth " << Hoist->getLoopDepth() << ")\n";
}

} // namespace odessy
