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
