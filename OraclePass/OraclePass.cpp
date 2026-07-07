#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/CFG.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "Z3Encoder.h"
#include "llvm/Support/Path.h"
#include <chrono>
#include <queue>
#include <set>
#include <vector>
#include <utility>
#include <string>
#include <cctype>


using namespace llvm;

// --- THE DEBUG FLAG ---
bool DebugOracle = false;


namespace {

// Turn a module identifier (usually the input .ll path, e.g.
// "evaluation/zlib/deflate_integer_O3.ll") into a safe, stable log
// filename stem ("deflate_integer_O3"). Deterministic: the same input
// always maps to the same log file, so one benchmark == one log.
static std::string logStemForModule(const Module &M) {
    StringRef Id = M.getModuleIdentifier();

    // Strip directory and the final extension.
    StringRef Base = sys::path::stem(sys::path::filename(Id));

    std::string Stem;
    if (Base.empty() || Base == "<stdin>") {
        Stem = "module";
    } else {
        // Replace anything that isn't [A-Za-z0-9._-] with '_' so the
        // name is always a valid single path component.
        for (char c : Base) {
            Stem.push_back((std::isalnum(static_cast<unsigned char>(c)) ||
                            c == '.' || c == '_' || c == '-') ? c : '_');
        }
    }
    return Stem;
}

struct OraclePass : public PassInfoMixin<OraclePass> {

    // Computed lazily on the first function of a given module, then reused
    // for every remaining function in that same opt invocation.
    std::string LogFilename;
    bool LogInitialized = false;

    OraclePass() = default;

PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        auto function_start_time = std::chrono::high_resolution_clock::now();

        // --- Resolve the per-benchmark log file exactly once per module ---
        // Filename is derived from the module (input .ll), NOT from a
        // wall-clock timestamp. Consequences:
        //   * one benchmark  -> one log file (all its functions share it)
        //   * rerunning opt  -> overwrites the same file (idempotent),
        //                       instead of leaving timestamped duplicates
        //   * no same-second collision race between parallel opt runs
        // The first function TRUNCATES the file; later functions APPEND.
        sys::fs::OpenFlags OpenMode = sys::fs::OF_Append;
        if (!LogInitialized) {
            LogFilename = "logs/compilations/" +
                          logStemForModule(*F.getParent()) + ".txt";
            OpenMode = sys::fs::OF_None; // truncate on first open this run
            LogInitialized = true;
        }

        std::error_code EC;
        raw_fd_ostream Log(LogFilename, EC, OpenMode);

        if (EC) {
            errs() << "[Error] Could not open log file: " << EC.message() << "\n";
            return PreservedAnalyses::all();
        }

        Log << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";
        errs() << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";

        double TotalLatency = 0.0;
        int TrapsEliminated = 0;
        int trap_attempts = 0;
        int smt_queries = 0; 

        LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);
        DominatorTree &DT = FAM.getResult<DominatorTreeAnalysis>(F);

        for (BasicBlock &BB : F) {
            // 1. The Hunter: Find the ubsantrap call
            CallInst *TrapCall = nullptr;
            for (Instruction &Inst : BB) {
                if (auto *CI = dyn_cast<CallInst>(&Inst)) {
                    if (Function *Callee = CI->getCalledFunction()) {
                        if (Callee->getName().contains("ubsantrap") || Callee->getName() == "llvm.trap") {
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

            Value *OvfCondition = Br->getCondition();
            bool TrapOnTrue = (Br->getSuccessor(0) == &BB);

            Log << "  -> Found UB Trap. Starting Backward Slice...\n";
            errs() << "  -> Found UB Trap. Starting Backward Slice...\n";

            // 3. The Slicer & Solver
            Z3Encoder Encoder;
            trap_attempts++;
            
            auto [Eliminated, Latency] = tryEliminateTrap(OvfCondition, TrapOnTrue, PredBB, Encoder, LI, DT, Log);
            TotalLatency += Latency;
            
            if (Latency > 0.0) {
                smt_queries++;
            }

            if (Eliminated) {
                // 4. The Kill
                Br->setCondition(ConstantInt::get(Type::getInt1Ty(F.getContext()), TrapOnTrue ? 0 : 1));
                Log << "  => SUCCESS: Trap mathematically neutralized!\n";
                errs() << "  => SUCCESS: Trap mathematically neutralized!\n";
                TrapsEliminated++;
            }
        }

        Log << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
        Log << "  => Total Trap Attempts: " << trap_attempts << "\n";
        Log << "  => Total SMT Queries Executed: " << smt_queries << "\n";
        Log << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
        Log << "  => Average SMT Query Latency: " << (smt_queries > 0 ? TotalLatency / smt_queries : 0) << " ms\n";

        auto function_end_time = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> function_duration = function_end_time - function_start_time;
        
        Log << "  => Total DFS & SMT Execution Time: " << function_duration.count() << " ms\n";
        Log << "--------------------------------------------------\n";

        errs() << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
        errs() << "  => Total Trap Attempts: " << trap_attempts << "\n";
        errs() << "  => Total SMT Queries Executed: " << smt_queries << "\n";
        errs() << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
        errs() << "  => Average SMT Query Latency: " << (smt_queries > 0 ? TotalLatency / smt_queries : 0) << " ms\n";
        errs() << "  => Total DFS & SMT Execution Time: " << function_duration.count() << " ms\n";

        return TrapsEliminated > 0 ? PreservedAnalyses::none() : PreservedAnalyses::all();
    }


private:
    // ==================================================================
    // PHASE 1: LINEAR BACKWARD REGION WALK (no path enumeration)
    // ==================================================================
    bool collectPhiConditions(PHINode *Phi, DominatorTree &DT, std::set<Value*> &Visited, std::queue<Value*> &Worklist, raw_fd_ostream &Log) {
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

    
private:
std::pair<bool, double> tryEliminateTrap(Value *TargetCond, bool TrapOnTrue, BasicBlock *PredBB, Z3Encoder &Encoder, LoopInfo &LI, DominatorTree &DT, raw_fd_ostream &Log) {
        std::queue<Value*> Worklist; 
        std::set<Value*> Visited;    

        Worklist.push(TargetCond);
        Visited.insert(TargetCond);

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
        // ==============================================================
        std::vector<std::pair<Value*, bool>> Guards;
        for (DomTreeNode *N = DT.getNode(PredBB); N && N->getIDom(); N = N->getIDom()) {
            BasicBlock *D = N->getIDom()->getBlock();
            auto *DBr = dyn_cast<BranchInst>(D->getTerminator());
            if (!DBr || !DBr->isConditional()) continue;
            if (DBr->getSuccessor(0) == DBr->getSuccessor(1)) continue;

            Value *GCond = nullptr;
            bool GVal = true;
            if (DT.dominates(BasicBlockEdge(D, DBr->getSuccessor(0)), PredBB)) {
                GCond = DBr->getCondition(); GVal = true;
            } else if (DT.dominates(BasicBlockEdge(D, DBr->getSuccessor(1)), PredBB)) {
                GCond = DBr->getCondition(); GVal = false;
            }

            if (GCond) {
                Guards.push_back({GCond, GVal});
                // Slice the guard too, so its defining math is encoded.
                if (Visited.insert(GCond).second) Worklist.push(GCond);
            }
        }
        Log << "    -> Collected " << Guards.size() << " dominating context guard(s).\n";

        // PHASE 1: BACKWARD SLICE
        while (!Worklist.empty()) {
            Value *V = Worklist.front();
            Worklist.pop();

            Instruction *Inst = dyn_cast<Instruction>(V);
            if (!Inst) continue; 

            // --- THE NEW PHI / MEMORY LOGIC ---
            if (auto *Phi = dyn_cast<PHINode>(Inst)) {
                BasicBlock *PhiBB = Phi->getParent();
                Loop *L = LI.getLoopFor(PhiBB);
                
                if (L && L->getHeader() == PhiBB) {
                    if (DebugOracle) {
                        errs() << "    [DEBUG] Over-approximating Loop Header Phi: " << *Inst << "\n";
                    }
                    continue; // Stop slicing backwards, treat as a free variable!
                } else {
                    if (!collectPhiConditions(Phi, DT, Visited, Worklist, Log)) {
                        return {false, 0.0};
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
                if (Function *F = Call->getCalledFunction()) {
                    // Slice through the ENTIRE overflow family:
                    // sadd/ssub/smul/uadd/usub/umul.with.overflow
                    if (F->getName().contains(".with.overflow")) {
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

        // PHASE 2: FORWARD ENCODE (Reverse Post-Order so defs are encoded
        // before uses in the acyclic CFG -- prevents branch conditions
        // from silently becoming free variables.)
        Function *F = cast<Instruction>(TargetCond)->getFunction();
        ReversePostOrderTraversal<Function*> RPOT(F);
        for (BasicBlock *BB : RPOT) {
            for (Instruction &Inst : *BB) {
                if (Visited.find(&Inst) != Visited.end()) {
                    if (!Encoder.encodeInstruction(&Inst, &DT, &LI)) {
                        Log << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                        errs() << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                        return {false, 0.0};
                    }
                }
            }
        }

        // PHASE 3: ASSERT CONTEXT + TRAP CONDITION
        for (auto &G : Guards) {
            Encoder.assertCondition(G.first, G.second);
        }
        Encoder.assertCondition(TargetCond, TrapOnTrue);

        auto [ResultString, QueryLatency] = Encoder.checkSatisfiability();
        
        Log << "    -> " << ResultString << "\n";
        
        bool IsUnsat = (ResultString.find("UNSAT") != std::string::npos);

        if (DebugOracle || IsUnsat) {
            errs() << "    -> " << ResultString << "\n";
        }

        return {IsUnsat, QueryLatency};
    }
};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "OraclePass", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](StringRef Name, FunctionPassManager &FPM,
                       ArrayRef<PassBuilder::PipelineElement>) {
                        if (Name == "oracle-pass") {
                            FPM.addPass(OraclePass());
                            return true;
                        }
                        return false;
                    });
            }};
}