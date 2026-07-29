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
// Strictly READ-ONLY over the IR. Runs before any worker thread exists,
// so it may freely use lazily-mutating DT queries (BasicBlockEdge
// dominance) and Value printing.
//
// Discovery order == basic-block order == the old serial pass's order;
// Job.Index is the global determinism key for Stage 2's FactGate and
// Stage 3's kill/log ordering.
// =====================================================================
#include "TrapJob.h"

#include <vector>

namespace llvm {
class DominatorTree;
class Function;
class LoopInfo;
} // namespace llvm

namespace odessy {

void discoverTraps(llvm::Function &F, llvm::DominatorTree &DT,
                   llvm::LoopInfo &LI, std::vector<TrapJob> &Jobs);

} // namespace odessy
