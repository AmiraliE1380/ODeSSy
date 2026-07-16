#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Analysis/LoopInfo.h"
#include <z3++.h>
#include <unordered_map>
#include <map>
#include <string>
#include <utility>
#include <set>
#include <vector>
#include <tuple>

extern bool DebugOracle;

class Z3Encoder {
    z3::context Ctx;
    z3::solver Solver;
    std::unordered_map<llvm::Value*, z3::expr> ValueMap;

    // --- MEMOIZED CFG ENCODING (replaces exponential path enumeration) ---
    // ReachCache[(Root, BB)] = ONE Z3 formula meaning "control reaches BB
    // starting from Root". Because z3::expr terms are hash-consed DAGs,
    // shared path prefixes are physically stored exactly once, so the
    // formula stays O(E) in size even when the number of syntactic paths
    // is exponential. Keyed on (Root, BB) so Phis sharing an IDom region
    // reuse each other's work within the same trap query.
    std::map<std::tuple<llvm::BasicBlock*, llvm::BasicBlock*, llvm::BasicBlock*>, z3::expr> ReachCache;

    // Recursion-stack marker used to detect and skip back edges (this
    // reproduces the old simple-path / acyclic semantics without ever
    // re-visiting a block).
    std::set<llvm::BasicBlock*> InProgress;

public:
    Z3Encoder();
    z3::expr getOrCreateZ3Expr(llvm::Value *Val);
    bool encodeInstruction(llvm::Instruction *Inst, llvm::DominatorTree *DT = nullptr, llvm::LoopInfo *LI = nullptr);
    void assertCondition(llvm::Value *Cond, bool IsTrue);
    std::pair<std::string, double> checkSatisfiability();

    void push();
    void pop();

private:
    // Encodes the branch/switch constraint attached to a single CFG edge
    // Pred -> Succ (br cond / !cond, switch == case, switch default, or a
    // fresh free boolean for alien terminators like invoke/indirectbr).
    z3::expr getEdgeCond(llvm::BasicBlock *Pred, llvm::BasicBlock *Succ);

    // Memoized reachability condition from Root down to BB, never walking
    // through PhiBB (the "boundary wall"). O(V+E) total across a region.
    z3::expr getBlockReachCond(llvm::BasicBlock *BB, llvm::BasicBlock *Root,
                               llvm::BasicBlock *PhiBB, llvm::DominatorTree *DT);

    // --- i1 sort-coercion helpers ---
    // i1 lives a double life: icmp results / bool constants are Z3 Bools,
    // but trunc-to-i1 and BV math produce 1-bit BVs. These make every
    // Bool<->BV bridge total instead of throwing z3::exception.
    z3::expr asBool(z3::expr e);
    z3::expr asBV(z3::expr e, unsigned w);
};