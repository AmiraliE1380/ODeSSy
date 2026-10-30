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

namespace llvm { class SCEV; }
#include <atomic>
#include <memory>
#include <mutex>
#include <optional>
#include <string>
#include <vector>
#include "Narrow.h"

namespace odessy {

// oracle-pass<ind-par>: run `ind` in two lanes racing the direct query
// (HANDOFF §13.8 item 2) instead of after it on the job's own solver.
// Off by default: on a saturated pool it is slower (HANDOFF §13.6).
inline bool IndParEnabled = false;

// oracle-pass<mv-noprune>: disable model-guided pruning of guard synthesis's
// minimize / loosen queries (HANDOFF §13.4); for A/B comparison only.
inline bool MvNoPruneEnabled = false;

// oracle-pass<mv-par[=W]>: run guard synthesis's minimize / loosen queries
// concurrently, W at a time, each in its own context (HANDOFF §13.8).
inline bool MvParEnabled = false;
inline unsigned MvParWidth = 4;

// Parallel `ind` (HANDOFF §13.8 item 2). The direct query runs on the
// job's solver while two lane solvers (own z3::contexts, same encoding and
// facts) run every loop level's BASE and STEP. Verdict rule as before:
// dead iff direct UNSAT, or BASE and STEP UNSAT at some level. A terminal
// result interrupts the others (z3::context::interrupt is the one call
// that may cross threads). Per-level status and log fragments are
// collected here and spliced into the log in the sequential order.
struct IndShared {
    std::mutex M;
    std::atomic<bool> Stop{false}, Proved{false};
    unsigned Levels = 0;
    std::vector<bool> Refused;
    std::vector<int> BaseSt, StepSt;        // 0 pending, 1 UNSAT, 2 not UNSAT / skipped
    std::vector<std::string> BaseLog, StepLog;
    z3::context *Ctx[3] = {nullptr, nullptr, nullptr};   // direct, BASE lane, STEP lane
    void interruptAll(int Except) {
        for (int i = 0; i < 3; ++i) if (i != Except && Ctx[i]) Ctx[i]->interrupt();
    }
};

struct SolverConfig {
    bool VacuityCheck = false;
    bool HeavyMode = false;
    // LDEQ: same-BB no-clobber load unification in the encoder
    // (oracle-pass<ldeq>). Off by default: the light tier must stay
    // byte-identical, and LDEQ-on/off doubles as its own ablation.
    bool LoadEq = false;
    // FRAME: cross-BB load unification from Stage 1's MemorySSA walk
    // (oracle-pass<frame>; HANDOFF §8). The solver only CONSUMES
    // Job.FramePairs -- asserts val(L1) == val(L2) context-side as
    // FRAME:k, before the guards, so the vacuity audit covers it and
    // unsat cores attribute proofs to the fact source. Off by default.
    bool FrameMode = false;
    unsigned QueryTimeoutMs = 10000;
    // MV: solver-guided loop multi-versioning (oracle-pass<mv>; HANDOFF
    // §10.22). After a SAT verdict the solver re-checks under hypothesis
    // candidates over LOOP-INVARIANT free values (T1 length-vs-index,
    // T2 sane range); an UNSAT's core is the minimal H under which the
    // trap is dead. Stage 3 versions the loop on H. Off by default.
    bool MultiVersion = false;      // mv-light and mv
    bool MVT3 = false;              // mv only: template T3 (symbolic index bound)
    unsigned MVSaneExp = 62;        // T2: 0 <=s v <=s 2^k
    // F1 profiling (HANDOFF §10.35): queries slower than ProfileMs log Z3
    // statistics and dump their SMT-LIB to logs/profile/. 0 = off.
    unsigned ProfileMs = 0;
    // F1 step 2 (HANDOFF §10.37): Stage 2b narrow-mul retry for mv candidates.
    bool Narrow = false;
    unsigned NarrowBits = 16;
    // Item 1 (HANDOFF §10.46): inductive body encoding, and the ablation
    // switch that disables the four PHIINV rules (hi/lo/hx/rel).
    bool Inductive = false;
    bool NoPhiInv = false;
    // poison-loads (HANDOFF §12): drop the default assumption that loaded
    // values are never poison (LLVM lets memory bytes hold poison).
    bool PoisonLoads = false;
};

class TrapSolver {
public:
    // Narrow: 0 exact, 1 whole-query 64->32 with overflow flags (§10.38),
    // 2 mul-only 16-bit-operand rewrite (§10.37 fallback).
    // LogTo: buffer for the log lines (default Job.LogText); the parallel
    // narrow retry logs each pass separately and splices them in order.
    TrapSolver(const SolverConfig &Cfg, const FunctionCtx &FC, TrapJob &Job,
               unsigned Narrow = 0, std::string *LogTo = nullptr);

    // PHASE 2. False => aborted (unsupported instruction / exception):
    // keep the trap, skip the query.
    bool encodePhase();

    // PHASE 2.5, heavy tier only (no-op in light). REQUIRES the
    // caller to hold this job's FactGate ticket. False => aborted.
    bool factPhase();

    // PHASE 3. Fills Job.Eliminate / Job.Queried / Job.LatencyMs.
    void solvePhase();

    // Parallel `ind`: Lane 1 runs BASE, Lane 2 runs STEP, over every loop
    // level; a lane writes nothing to the TrapJob. attachLanes is called on
    // the job's own solver before factPhase.
    void setLane(unsigned L) { Lane = L; }
    void attachLanes(TrapSolver *B, TrapSolver *S) { LaneB = B; LaneS = S; }
    void laneRun(IndShared &Sh);

private:
    // PHASE 3.5 (MV only, after a SAT verdict, solver still holding the
    // context|trap scope): hypothesis mining + re-solve. Fills Job.MVHyp
    // and Job.MVEliminate. See HANDOFF §10.22.
    void mvPhase();
    // T3 (HANDOFF §10.29): symbolic index bound, computed under the gate.
    void prepareT3();
    void profileQuery(const char *Tag, const std::string &Res, double Ms);
    // Item 1 (HANDOFF §10.46/10.49): two-obligation inductive query.
    // Returns true iff BASE and STEP are both UNSAT (and non-vacuous).
    bool indPhase();
    // Instantiate the primed copy of L's body (RPO), link every integer
    // header phi (state t == copy's latch value). Returns #links; fills
    // N/Skipped. Leaves primed mode OFF.
    // LinksOut != nullptr: return the link equalities instead of asserting them.
    unsigned buildPrimedCopy(llvm::Loop *L, llvm::BasicBlock *Latch, const std::string &Tag, unsigned &N, unsigned &Skipped, const std::string &LabelPrefix, std::vector<z3::expr> *LinksOut = nullptr);

    // One loop level of indPhase. Solver: context | guards on entry/exit.
    bool indAtLoop(llvm::Loop *L, unsigned Depth);
    // The two halves of indAtLoop; each leaves the solver as it found it.
    bool indEdges(llvm::Loop *L, llvm::BasicBlock *&Latch, llvm::BasicBlock *&Entry);
    std::string indBase(llvm::Loop *L, unsigned Depth, llvm::BasicBlock *Entry);
    std::string indStep(llvm::Loop *L, unsigned Depth, llvm::BasicBlock *Latch);
    // FRAME facts + guards (the context | guards part of solvePhase).
    void assertContext();
    void addLat(double Ms) { if (Lane) LaneLat += Ms; else Job.LatencyMs += Ms; }
    // Under the FactGate (end of factPhase): build each loop level's copy
    // and capture its scalar-evolution facts, so indAtLoop can run outside
    // the gate, in parallel, without touching the analyses.
    void prepareInd();
    z3::expr scevToBV(const llvm::SCEV *S, bool &OK, unsigned W);
    const SolverConfig &Cfg;
    const FunctionCtx &FC;
    TrapJob &Job;
    Z3Encoder Encoder;
    // Captured `ind` facts (prepareInd). Declared AFTER Encoder: members are
    // destroyed in reverse order, so these z3::exprs must go before the
    // context that owns them.
    std::map<unsigned, std::vector<std::pair<z3::expr, std::string>>> IndFacts;
    unsigned NarrowMode = 0;
    std::vector<z3::expr> Defs64, Guards64NoMul;
    // Whole-query narrowing state, one set per rewriter: [0] linearized
    // (Q_A' first), [1] exact products (fallback).
    struct NarrowSet { std::unique_ptr<Narrower> N; std::vector<z3::expr> Defs32, Guards32, Facts32; std::optional<z3::expr> Trap32; };
    NarrowSet NS[2];
    std::unique_ptr<Narrower> WholeN;   // = NS[1].N (flags/links/inputs for Q_B and diagnostics)
    std::string *LogBuf;            // Job.LogText or the caller's buffer
    llvm::raw_string_ostream Log;   // appends to *LogBuf
    unsigned Lane = 0;
    TrapSolver *LaneB = nullptr, *LaneS = nullptr;
    double LaneLat = 0;
    // Counterexamples for model-guided pruning: the BASIC query's model
    // (captured before ind touches the solver) plus mvPhase's SAT models.
    std::vector<z3::model> MvModels;
};

} // namespace odessy
