#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/LoopInfo.h"
#include "Z3Encoder.h"
#include <queue>
#include <set>

using namespace llvm;

namespace {
struct OraclePass : public PassInfoMixin<OraclePass> {
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        // Setup the internal log file (Append mode)
        std::error_code EC;
        raw_fd_ostream Log("logs/oracle_pass_internal.txt", EC, sys::fs::OF_Append);
        if (EC) {
            errs() << "[Error] Could not open log file: " << EC.message() << "\n";
            return PreservedAnalyses::all();
        }

        Log << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";
        errs() << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";

        double TotalLatency = 0.0;
        int TrapsEliminated = 0;
        int trap_attempts = 0; // FIXED: Renamed to accurately reflect attempts

        // Fetch the Loop Analysis for the current function
        LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);

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
            trap_attempts++; // FIXED: Incrementing attempts before we pass it off

            auto [Eliminated, Latency] = tryEliminateTrap(OvfCondition, TrapOnTrue, Encoder, LI, Log);
            TotalLatency += Latency;

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
        Log << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
        Log << "  => Average SMT Query Latency: " << (trap_attempts > 0 ? TotalLatency / trap_attempts : 0) << " ms\n";

        errs() << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
        errs() << "  => Total Trap Attempts: " << trap_attempts << "\n";
        errs() << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
        errs() << "  => Average SMT Query Latency: " << (trap_attempts > 0 ? TotalLatency / trap_attempts : 0) << " ms\n";
        
        return TrapsEliminated > 0 ? PreservedAnalyses::none() : PreservedAnalyses::all();
    }

private:
    std::pair<bool, double> tryEliminateTrap(Value *TargetCond, bool TrapOnTrue, Z3Encoder &Encoder, LoopInfo &LI, raw_fd_ostream &Log) {
        std::queue<Value*> Worklist; 
        std::set<Value*> Visited;    

        Worklist.push(TargetCond);
        Visited.insert(TargetCond);

        // PHASE 1: BACKWARD SLICE
        while (!Worklist.empty()) {
            Value *V = Worklist.front();
            Worklist.pop();

            Instruction *Inst = dyn_cast<Instruction>(V);
            if (!Inst) continue; 

            // --- THE PHI / MEMORY LOGIC ---
            if (auto *Phi = dyn_cast<PHINode>(Inst)) {
                BasicBlock *PhiBB = Phi->getParent();
                Loop *L = LI.getLoopFor(PhiBB);
                
                // Is this basic block the header of a loop?
                if (L && L->getHeader() == PhiBB) {
                    Log << "    -> [Abort] Hit Loop Header Phi: " << *Inst << "\n";
                    errs() << "    -> [Abort] Hit Loop Header Phi: " << *Inst << "\n";
                    return {false, 0.0};
                } else {
                    Log << "    -> [CFG Detective Next] Hit Non-Loop Phi: " << *Inst << "\n";
                    errs() << "    -> [CFG Detective Next] Hit Non-Loop Phi: " << *Inst << "\n";
                    return {false, 0.0}; 
                }
            }

            if (isa<LoadInst>(Inst)) {
                Log << "    -> [Abort] Hit Memory boundary: " << *Inst << "\n";
                errs() << "    -> [Abort] Hit Memory boundary: " << *Inst << "\n";
                return {false, 0.0};
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
                    if (!Encoder.encodeInstruction(&Inst)) {
                        Log << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                        errs() << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                        return {false, 0.0};
                    }
                }
            }
        }

        Encoder.assertCondition(TargetCond, TrapOnTrue);
        auto [ResultString, QueryLatency] = Encoder.checkSatisfiability();
        
        Log << "    -> " << ResultString << "\n";
        errs() << "    -> " << ResultString << "\n";

        bool IsUnsat = (ResultString.find("UNSAT") != std::string::npos);
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