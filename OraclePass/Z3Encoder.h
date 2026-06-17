#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include <z3++.h>
#include <unordered_map>
#include <string>
#include <utility>
#include <set>      
#include <vector>   

class Z3Encoder {
    z3::context Ctx;
    z3::solver Solver;
    std::unordered_map<llvm::Value*, z3::expr> ValueMap;

public:
    Z3Encoder();
    z3::expr getOrCreateZ3Expr(llvm::Value *Val);
    
    // Changed to return bool so the Pass knows if we hit a roadblock
    bool encodeInstruction(llvm::Instruction *Inst, llvm::DominatorTree *DT = nullptr);

    void assertCondition(llvm::Value *Cond, bool IsTrue);
    std::pair<std::string, double> checkSatisfiability(); 

private:
    bool buildPathCondDFS(llvm::BasicBlock *Current, llvm::BasicBlock *Target, llvm::BasicBlock *PhiBB, std::vector<std::pair<llvm::Value*, bool>> &CurrentPath, std::vector<z3::expr> &ValidPaths, std::set<llvm::BasicBlock*> &PathVis, int depth = 0);
    
};