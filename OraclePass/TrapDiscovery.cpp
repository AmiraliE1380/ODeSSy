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
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/Analysis/MemorySSA.h"
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
// FRAME HARVEST (oracle-pass<frame>; HANDOFF §8.1/§8.7 step 2).
//
// For each integer load L2 inside the job's slice, find the EARLIEST
// (program-order) dominating load L1 of the SAME pointer SSA value and
// ask one question: walking up from L2's defining memory access, what
// clobbers L1's OWN MemoryLocation (address + size + L1's AATags)?
// If the answer is L1's defining access A0 -- or something dominating
// A0, i.e. strictly before L1 -- then NO def between L1 and L2 writes
// the location, so on every execution reaching L2 both loads read the
// value stored at/before that clobber: val(L1) == val(L2). (Soundness
// argument + the D1-D4 refusal ladder this replaces: HANDOFF §8.1;
// the walker internally runs the full AA stack per def -- on Julia IR
// the discharging component is ScopedNoAliasAA over the jnoalias
// scopes -- and owns MemoryPhi recursion, so a clobber on ANY phi arm
// makes it return the phi, which fails the criterion => refuse.)
//
// Querying with L1's location is the load-bearing design point: gemm's
// check-side load L2 is a multiversioned clone with NO metadata, so a
// walk over loc(L2) learns nothing (that is why LLVM itself leaves the
// checks in). loc(L1) carries the frontend's scope assertions, and
// scope facts describe the LOCATION, which the two loads share.
//
// v1 gates (widen only with a written argument): integer-typed simple
// loads; identical pointer SSA value and type; DT.dominates(L1, L2).
// Deterministic by construction: candidate scan is program-order,
// verdicts depend only on IR + MemorySSA (Stage-1 serial).
// ==================================================================
static void harvestFramePairs(TrapJob &Job, DominatorTree &DT,
                              MemorySSA &MSSA, raw_ostream &Log) {
    for (BasicBlock &BB2 : *Job.F) {
        for (Instruction &I2 : BB2) {
            auto *L2 = dyn_cast<LoadInst>(&I2);
            if (!L2 || !Job.Visited.count(L2)) continue;
            if (!L2->isSimple() || !L2->getType()->isIntegerTy()) continue;
            Value *Ptr = L2->getPointerOperand();
            // Earliest dominating same-pointer load = L1.
            LoadInst *L1 = nullptr;
            for (BasicBlock &BB1 : *Job.F) {
                for (Instruction &I1 : BB1) {
                    auto *C = dyn_cast<LoadInst>(&I1);
                    if (!C || C == L2) continue;
                    if (C->getPointerOperand() != Ptr) continue;
                    if (!C->isSimple() || C->getType() != L2->getType())
                        continue;
                    if (!DT.dominates(C, L2)) continue;
                    L1 = C;
                    break;
                }
                if (L1) break;
            }
            if (!L1) continue;
            MemoryUseOrDef *MA1 = MSSA.getMemoryAccess(L1);
            MemoryUseOrDef *MA2 = MSSA.getMemoryAccess(L2);
            if (!MA1 || !MA2) continue;
            MemoryAccess *A0 = MA1->getDefiningAccess();
            MemoryAccess *Clob = MSSA.getWalker()->getClobberingMemoryAccess(
                MA2->getDefiningAccess(), MemoryLocation::get(L1));
            bool Held = (Clob == A0) || MSSA.dominates(Clob, A0);
            std::string S1, S2;
            { raw_string_ostream O1(S1); L1->print(O1); }
            { raw_string_ostream O2(S2); L2->print(O2); }
            if (Held) {
                Job.FramePairs.push_back({L1, L2});
                Log << "    -> Frame[" << (Job.FramePairs.size() - 1)
                    << "] held (cross-BB, no intervening clobber):"
                    << S1 << "  ==" << S2 << "\n";
            } else {
                Log << "    -> Frame refused (clobber between loads):"
                    << S1 << "  vs" << S2 << "\n";
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
                   const std::vector<std::string> &TrapCallees,
                   MemorySSA *MSSA) {
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
            // 4. FRAME harvest (only under oracle-pass<frame>; null MSSA
            // keeps every other configuration byte-identical).
            if (MSSA && Job.SliceOK)
                harvestFramePairs(Job, DT, *MSSA, Log);
        }
    }
}
} // namespace odessy
