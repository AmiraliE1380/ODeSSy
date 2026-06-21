#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Constants.h"
#include "Z3Encoder.h"
#include <chrono>
#include <queue>
#include <set>


using namespace llvm;

// --- THE DEBUG FLAG ---
// cl::opt<bool> DebugOracle("oracle-debug", cl::desc("Enable Z3 Oracle Debugging"), cl::init(false));
bool DebugOracle = false; // Changed from cl::opt


namespace {
struct OraclePass : public PassInfoMixin<OraclePass> {
    
    // Store the filename globally for this pass instance
    std::string LogFilename;

    // CONSTRUCTOR: Runs exactly ONCE when the plugin is loaded
    OraclePass() {
        auto now = std::chrono::system_clock::now();
        std::time_t now_c = std::chrono::system_clock::to_time_t(now);
        LogFilename = "logs/compilations/oracle_pass_" + std::to_string(now_c) + ".txt";
    }

PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        // --- START PASS TIMER ---
        auto function_start_time = std::chrono::high_resolution_clock::now();

        // Setup the internal log file (Append mode) using the persistent filename
        std::error_code EC;
        raw_fd_ostream Log(LogFilename, EC, sys::fs::OF_Append);

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

        // Fetch the Loop Analysis for the current function
        LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);
        // Fetch the Dominator Tree for the CFG Detective
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

            // Figure out which branch edge leads to the trap
            Value *OvfCondition = Br->getCondition();
            bool TrapOnTrue = (Br->getSuccessor(0) == &BB);

            Log << "  -> Found UB Trap. Starting Backward Slice...\n";
            errs() << "  -> Found UB Trap. Starting Backward Slice...\n";

            // 3. The Slicer & Solver
            Z3Encoder Encoder;
            trap_attempts++;
            
            auto [Eliminated, Latency] = tryEliminateTrap(OvfCondition, TrapOnTrue, Encoder, LI, DT, Log);
            TotalLatency += Latency;
            
            // Only count actual SMT executions
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

        // --- END PASS TIMER ---
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
// Phase 1 DFS: Find all paths from Current to Target and push their conditions to the Worklist
    bool findPathsDFS(BasicBlock *Current, BasicBlock *Target, BasicBlock *PhiBB, std::vector<Value*> &CurrentConds, std::set<Value*> &VisitedConds, std::queue<Value*> &Worklist, std::set<BasicBlock*> &PathVis, raw_fd_ostream &Log, int depth = 0) {
        // Safety switch: Prevent path explosion in massive CFGs
        if (depth > 50) return false; 

        if (Current == Target) {
            // We reached the target! Push all branch conditions we saw on this path to the worklist
            for (Value *C : CurrentConds) {
                if (VisitedConds.insert(C).second) Worklist.push(C);
            }
            return true;
        }

        // --- THE BOUNDARY WALL FIX ---
        // If we reach the Phi block itself, we've walked past the target. Stop!
        if (Current == PhiBB) return false;
        // -----------------------------

        PathVis.insert(Current);
        bool foundPath = false;

        auto *Term = Current->getTerminator();
        if (auto *Br = dyn_cast<BranchInst>(Term)) {
            if (Br->isConditional()) {
                CurrentConds.push_back(Br->getCondition());
                // Explore both True (0) and False (1) edges
                for (unsigned i = 0; i < 2; ++i) {
                    BasicBlock *Succ = Br->getSuccessor(i);
                    if (PathVis.find(Succ) == PathVis.end()) {
                        if (findPathsDFS(Succ, Target, PhiBB, CurrentConds, VisitedConds, Worklist, PathVis, Log, depth + 1)) {
                            foundPath = true;
                        }
                    }
                }
                CurrentConds.pop_back(); // Backtrack
            } else {
                // Unconditional branch, just keep walking
                BasicBlock *Succ = Br->getSuccessor(0);
                if (PathVis.find(Succ) == PathVis.end()) {
                    if (findPathsDFS(Succ, Target, PhiBB, CurrentConds, VisitedConds, Worklist, PathVis, Log, depth + 1)) {
                        foundPath = true;
                    }
                }
            }
        } else if (auto *Sw = dyn_cast<SwitchInst>(Term)) {
            // Push the variable being switched on so Phase 2 encodes it
            CurrentConds.push_back(Sw->getCondition());
            
            // 1. Explore Default Dest
            if (PathVis.find(Sw->getDefaultDest()) == PathVis.end()) {
                if (findPathsDFS(Sw->getDefaultDest(), Target, PhiBB, CurrentConds, VisitedConds, Worklist, PathVis, Log, depth + 1)) {
                    foundPath = true;
                }
            }
            
            // 2. Explore all Case Dests
            for (auto Case : Sw->cases()) {
                if (PathVis.find(Case.getCaseSuccessor()) == PathVis.end()) {
                    if (findPathsDFS(Case.getCaseSuccessor(), Target, PhiBB, CurrentConds, VisitedConds, Worklist, PathVis, Log, depth + 1)) {
                        foundPath = true;
                    }
                }
            }
            
            CurrentConds.pop_back(); // Backtrack
        }

        PathVis.erase(Current); // Backtrack
        return foundPath;
    }

    bool collectPhiConditions(PHINode *Phi, DominatorTree &DT, std::set<Value*> &Visited, std::queue<Value*> &Worklist, raw_fd_ostream &Log) {
        BasicBlock *PhiBB = Phi->getParent();
        DomTreeNode *Node = DT.getNode(PhiBB);
        if (!Node || !Node->getIDom()) return false;
        
        BasicBlock *IDomBB = Node->getIDom()->getBlock();

        // Trace from IDom down to each incoming block
        for (unsigned i = 0; i < Phi->getNumIncomingValues(); ++i) {
            BasicBlock *TargetBB = Phi->getIncomingBlock(i);
            Value *IncVal = Phi->getIncomingValue(i);

            // Add the incoming value (the math/variable) to the worklist
            if (Visited.insert(IncVal).second) Worklist.push(IncVal);

            std::vector<Value*> CurrentConds;
            std::set<BasicBlock*> PathVis;
            
            if (!findPathsDFS(IDomBB, TargetBB, PhiBB, CurrentConds, Visited, Worklist, PathVis, Log)) {                Log << "    -> [Abort] CFG Crawler failed to find valid path from IDom to incoming block.\n";
                errs() << "    -> [Abort] CFG Crawler failed to find valid path from IDom to incoming block.\n";
                return false;
            }
        }
        return true;
    }

    
private:
std::pair<bool, double> tryEliminateTrap(Value *TargetCond, bool TrapOnTrue, Z3Encoder &Encoder, LoopInfo &LI, DominatorTree &DT, raw_fd_ostream &Log) {        std::queue<Value*> Worklist; 
        std::set<Value*> Visited;    

        Worklist.push(TargetCond);
        Visited.insert(TargetCond);

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
                
                // Is this basic block the header of a loop?
                if (L && L->getHeader() == PhiBB) {
                    if (DebugOracle) {
                        errs() << "    [DEBUG] Over-approximating Loop Header Phi: " << *Inst << "\n";
                    }
                    continue; // Stop slicing backwards, treat as a free variable!
                } else {
                    // Slicer Phase 1: Fire the CFG Crawler
                    if (!collectPhiConditions(Phi, DT, Visited, Worklist, Log)) {
                        return {false, 0.0};
                    }
                    continue; // Successfully crawled the entire N-Way Phi!
                }
            }

            // --- THE BOUNDARY LOGIC ---
            if (isa<LoadInst>(Inst) || isa<GetElementPtrInst>(Inst)) {
                // Stop slicing backwards here, treat as free variable boundary!
                if (DebugOracle) {
                    errs() << "    [DEBUG] Over-approximating Boundary: " << Inst->getOpcodeName() << "\n";
                }
                continue; 
            }
            if (auto *Call = dyn_cast<CallInst>(Inst)) {
                bool IsMathIntrinsic = false;
                if (Function *F = Call->getCalledFunction()) {
                    StringRef Name = F->getName();
                    if (Name.starts_with("llvm.sadd.with.overflow") || Name.starts_with("llvm.ssub.with.overflow")) {
                        IsMathIntrinsic = true; // Let it slice through our known math!
                    }
                }
                
                if (!IsMathIntrinsic) {
                    if (DebugOracle) {
                        errs() << "    [DEBUG] Over-approximating Alien Call\n";
                    }
                    continue; // Stop slicing backwards for alien calls
                }
            }
            // ----------------------------------
            
            // Slice backwards: Add all operands (dependencies) to the bag
            for (Use &U : Inst->operands()) {
                Value *Operand = U.get();
                if (Visited.find(Operand) == Visited.end()) {
                    Visited.insert(Operand);
                    Worklist.push(Operand);
                }
            }
        }

        // PHASE 2: FORWARD ENCODE
        Function *F = cast<Instruction>(TargetCond)->getFunction();
        for (BasicBlock &BB : *F) {
            for (Instruction &Inst : BB) {
                if (Visited.find(&Inst) != Visited.end()) {
                    // Pass &LI here!
                    if (!Encoder.encodeInstruction(&Inst, &DT, &LI)) {
                        Log << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                        errs() << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                        return {false, 0.0};
                    }
                }
            }
        }

        Encoder.assertCondition(TargetCond, TrapOnTrue);
        auto [ResultString, QueryLatency] = Encoder.checkSatisfiability();
        
        // ALWAYS write the result to the internal log file
        Log << "    -> " << ResultString << "\n";
        
        bool IsUnsat = (ResultString.find("UNSAT") != std::string::npos);

        // Only print to the terminal if Debug is ON, OR if we successfully proved it UNSAT
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