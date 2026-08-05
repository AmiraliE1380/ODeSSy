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
