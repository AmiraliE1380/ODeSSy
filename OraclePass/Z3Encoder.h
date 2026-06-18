#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Analysis/LoopInfo.h"
#include <z3++.h>
#include <unordered_map>
#include <string>
#include <utility>
#include <set>      
#include <vector>   

extern bool DebugOracle;

// --- NEW EDGE TRACKER ---
// --- NEW EDGE TRACKER ---
struct EdgeConstraint {
    llvm::Value *Cond;
    enum EdgeType { BranchTrue, BranchFalse, SwitchCase, SwitchDefault };
    EdgeType Type;              // <-- Now it has a proper type!
    llvm::ConstantInt *CaseVal; // Used if Type == SwitchCase
    llvm::SwitchInst *SwInst;   // Used if Type == SwitchDefault
};

class Z3Encoder {
    z3::context Ctx;
    z3::solver Solver;
    std::unordered_map<llvm::Value*, z3::expr> ValueMap;

public:
    Z3Encoder();
    z3::expr getOrCreateZ3Expr(llvm::Value *Val);
    bool encodeInstruction(llvm::Instruction *Inst, llvm::DominatorTree *DT = nullptr, llvm::LoopInfo *LI = nullptr);    void assertCondition(llvm::Value *Cond, bool IsTrue);
    std::pair<std::string, double> checkSatisfiability(); 

private:
    // --- UPDATED SIGNATURE ---
    bool buildPathCondDFS(llvm::BasicBlock *Current, llvm::BasicBlock *Target, llvm::BasicBlock *PhiBB, std::vector<EdgeConstraint> &CurrentPath, std::vector<z3::expr> &ValidPaths, std::set<llvm::BasicBlock*> &PathVis, int depth = 0);
};