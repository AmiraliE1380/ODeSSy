#include "TrapSolver.h"
#include "FactEncoder.h"

#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/ConstantRange.h"
#include "llvm/Analysis/SimplifyQuery.h"

#include <string>

using namespace llvm;

namespace odessy {

TrapSolver::TrapSolver(const SolverConfig &Cfg, const FunctionCtx &FC,
                       TrapJob &Job)
    : Cfg(Cfg), FC(FC), Job(Job), Encoder(Cfg.QueryTimeoutMs),
      Log(Job.LogText) {
    if (Cfg.VacuityCheck || Cfg.MultiVersion)   // MV reads cores too
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

        // PHASE 3.5 (MV only): a SAT verdict may still be dead under a
        // runtime-checkable hypothesis over loop-invariant values.
        if (!IsUnsat && Cfg.MultiVersion &&
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

void TrapSolver::mvPhase() {
    if (!FC.LI) return;
    Loop *L = FC.LI->getLoopFor(Job.PredBB);
    if (!L) { Log << "    -> [mv] trap not inside a loop: not versionable\n"; return; }
    struct Cand { Value *V; ICmpInst::Predicate P; APInt C; std::string Text; Loop *Outer; };
    // Outermost loop (containing L) in which V is still invariant: the
    // level H can be hoisted to. nullptr = invariant in the whole function.
    auto outerInv = [&](Value *V) -> Loop * {
        Loop *Best = L;
        for (Loop *P = L; P; P = P->getParentLoop())
            if (P->isLoopInvariant(V)) Best = P; else break;
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
        return V && V->getType()->isIntegerTy() && L->isLoopInvariant(V);
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
        if (!isInv(V)) continue;
        unsigned W = V->getType()->getIntegerBitWidth();
        if (W < 8) continue;
        unsigned K = std::min<unsigned>(Cfg.MVSaneExp, W - 2);
        APInt Lim = APInt::getOneBitSet(W, K);
        Loop *O = outerInv(V);
        Cands.push_back({V, ICmpInst::ICMP_SGE, APInt(W, 0), nameOf(V) + " >=s 0", O});
        Cands.push_back({V, ICmpInst::ICMP_SLE, Lim, nameOf(V) + " <=s 2^" + std::to_string(K), O});
    }
    if (Cands.empty()) { Log << "    -> [mv] no loop-invariant hypothesis candidates\n"; return; }

    auto mkExpr = [&](const Cand &C) {
        unsigned W = C.V->getType()->getIntegerBitWidth();
        z3::expr V = Encoder.valueAsBV(C.V, W), K = Encoder.apintToBV(C.C);
        switch (C.P) {
        case ICmpInst::ICMP_UGT: return z3::ugt(V, K); case ICmpInst::ICMP_UGE: return z3::uge(V, K);
        case ICmpInst::ICMP_ULT: return z3::ult(V, K); case ICmpInst::ICMP_ULE: return z3::ule(V, K);
        case ICmpInst::ICMP_SGT: return V > K;         case ICmpInst::ICMP_SGE: return V >= K;
        case ICmpInst::ICMP_SLT: return V < K;         default:                 return V <= K;
        }
    };
    // Re-solve, hoistability-first: round 0 uses only candidates that are
    // invariant in the whole function (sizes, globals, arguments) so H can
    // be hoisted to the outermost loop and paid once; round 1 adds the
    // candidates invariant only in some enclosing loop (e.g. an outer
    // induction variable), whose guard is paid per entry of that loop.
    std::vector<size_t> Keep; double Lat = 0.0; unsigned Round = 0;
    for (Round = 0; Round < 2 && Keep.empty(); ++Round) {
        std::vector<size_t> Use;
        for (size_t i = 0; i < Cands.size(); ++i)
            if (Round == 1 || Cands[i].Outer == nullptr) Use.push_back(i);
        if (Use.empty()) continue;
        if (Round == 1 && Use.size() == Cands.size() && Keep.empty()) {
            // round 0 already tried exactly this set
            bool Same = true;
            for (size_t i = 0; i < Cands.size(); ++i) if (Cands[i].Outer) { Same = false; break; }
            if (Same) break;
        }
        Encoder.push();
        for (size_t i : Use)
            Encoder.assertRawFact(mkExpr(Cands[i]), "MV:" + std::to_string(i));
        auto [Res, L1] = Encoder.checkSatisfiability();
        Lat += L1; Job.LatencyMs += L1;
        if (Res.find("UNSAT") != std::string::npos) {
            std::string Core = Encoder.getUnsatCore();
            for (size_t i : Use) {
                std::string Tok = "|MV:" + std::to_string(i) + "|", Tok2 = "MV:" + std::to_string(i) + " ";
                if (Core.find(Tok) != std::string::npos || Core.find(Tok2) != std::string::npos) Keep.push_back(i);
            }
            Encoder.pop();
            if (Keep.empty()) {
                Log << "    -> [mv] UNSAT but no hypothesis in core (" << Core << "): refusing\n";
                return;
            }
            break;
        }
        Encoder.pop();
        if (Round == 1 || Use.size() == Cands.size()) {
            Log << "    -> [mv] still " << (Res.find("UNKNOWN") != std::string::npos ? "UNKNOWN" : "SAT")
                << " under " << Use.size() << " hypothesis candidate(s): not versionable\n";
            return;
        }
    }
    if (Keep.empty()) { Log << "    -> [mv] no usable hypothesis: not versionable\n"; return; }
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
