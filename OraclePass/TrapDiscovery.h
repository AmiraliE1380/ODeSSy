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
