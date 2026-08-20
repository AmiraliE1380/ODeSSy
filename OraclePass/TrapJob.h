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
    // FRAME (oracle-pass<frame>, HANDOFF §8): validated cross-BB load
    // pairs (L1, L2) -- same pointer SSA value, L1 dominates L2, and the
    // Stage-1 MemorySSA walk proved no intervening def clobbers L1's
    // location. Stage 2 asserts val(L1) == val(L2) context-side as
    // FRAME:k. Harvested serially in Stage 1; Stage 2 only reads.
    std::vector<std::pair<llvm::Value *, llvm::Value *>> FramePairs;

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
