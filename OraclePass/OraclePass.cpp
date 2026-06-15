#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "Z3Encoder.h"
#include <queue>
#include <set>

using namespace llvm;

namespace {
struct OraclePass : public PassInfoMixin<OraclePass> {
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        errs() << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";
        double TotalLatency = 0.0;
        int TrapsEliminated = 0;
        int smt_queries = 0;

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

            errs() << "  -> Found UB Trap. Starting Backward Slice...\n";

            // 3. The Slicer & Solver
            Z3Encoder Encoder;
            auto [Eliminated, Latency] = tryEliminateTrap(OvfCondition, TrapOnTrue, Encoder);
            TotalLatency += Latency;
            smt_queries++;

            if (Eliminated) {
                // 4. The Kill: We don't delete the block manually. We just hardcode the branch 
                // to always go the SAFE way. LLVM's built-in SimplifyCFG pass will cleanly 
                // delete the dead trap block for us later.
                Br->setCondition(ConstantInt::get(Type::getInt1Ty(F.getContext()), TrapOnTrue ? 0 : 1));
                errs() << "  => SUCCESS: Trap mathematically neutralized!\n";
                TrapsEliminated++;
            }
        }

        errs() << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
        errs() << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
        errs() << "  => Total SMT Queries: " << smt_queries << "\n";
        errs() << "  => Average SMT Query Latency: " << (smt_queries > 0 ? TotalLatency / smt_queries : 0) << " ms\n";
        
        // If we eliminated traps, we modified the CFG. Tell LLVM to invalidate old analyses.
        return TrapsEliminated > 0 ? PreservedAnalyses::none() : PreservedAnalyses::all();
    }

private:
    std::pair<bool, double> tryEliminateTrap(Value *TargetCond, bool TrapOnTrue, Z3Encoder &Encoder) {
        std::queue<Value*> Worklist; // The "Bag of variables"
        std::set<Value*> Visited;    // Prevents infinite loops in our traversal

        Worklist.push(TargetCond);
        Visited.insert(TargetCond);

        while (!Worklist.empty()) {
            Value *V = Worklist.front();
            Worklist.pop();

            Instruction *Inst = dyn_cast<Instruction>(V);
            if (!Inst) continue; // Constants and Arguments are handled by getOrCreateZ3Expr

            // Abort on loops/phis/memory as requested
            if (isa<PHINode>(Inst) || isa<LoadInst>(Inst)) {
                errs() << "    -> [Abort] Hit Phi/Memory boundary: " << *Inst << "\n";
                return {false, 0.0};
            }

            // Hand to encoder. If encoder returns false, it means it doesn't recognize the instruction yet.
            if (!Encoder.encodeInstruction(Inst)) {
                errs() << "    -> [Abort] Unsupported Instruction: " << *Inst << "\n";
                return {false, 0.0};
            }

            // Slice backwards: Add all operands (dependencies) to the bag
            for (Use &U : Inst->operands()) {
                Value *Operand = U.get();
                if (Visited.find(Operand) == Visited.end()) {
                    Visited.insert(Operand);
                    Worklist.push(Operand);
                }
            }
        }

        // We successfully built the slice! Assert that the trap ACTUALLY triggers.
        Encoder.assertCondition(TargetCond, TrapOnTrue);

        // Ask Z3 if this universe is mathematically possible
        auto [ResultString, QueryLatency] = Encoder.checkSatisfiability();
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