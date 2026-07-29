#include "TrapDiscovery.h"

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Analysis/LoopInfo.h"
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

void discoverTraps(Function &F, DominatorTree &DT, LoopInfo &LI,
                   std::vector<TrapJob> &Jobs) {
    for (BasicBlock &BB : F) {
        // 1. The Hunter: Find the ubsantrap call
        CallInst *TrapCall = nullptr;
        for (Instruction &Inst : BB) {
            if (auto *CI = dyn_cast<CallInst>(&Inst)) {
                if (Function *Callee = CI->getCalledFunction()) {
                    if (Callee->getName().contains("ubsantrap") ||
                        Callee->getName() == "llvm.trap") {
                        TrapCall = CI;
                        break;
                    }
                }
            }
        }

        if (!TrapCall) continue;

        // 2. The Anchor: Find the predecessor branch that triggered this trap
        BasicBlock *PredBB = BB.getSinglePredecessor();
        if (!PredBB) continue; // Skip complex merged traps for now

        auto *Br = dyn_cast<BranchInst>(PredBB->getTerminator());
        if (!Br || !Br->isConditional()) continue;

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
    }
}

} // namespace odessy
