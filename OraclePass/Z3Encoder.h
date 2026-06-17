#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include <z3++.h>
#include <unordered_map>
#include <string>
#include <utility>

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
};