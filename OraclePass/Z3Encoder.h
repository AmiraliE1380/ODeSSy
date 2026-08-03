#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/ConstantRange.h"
#include "llvm/Support/KnownBits.h"
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

    // --- LOAD-EQUALITY (LDEQ) -- opt-in via oracle-pass<ldeq> ---
    // Two loads of the SAME pointer SSA value, in the SAME basic block,
    // with NO possibly-memory-writing instruction between them, must
    // observe the same memory and therefore the same value -- this is
    // GVN/CSE's own theorem applied at encoding time instead of
    // transform time. When it fires, the later load maps to the SAME
    // Z3 expression as the earlier one (one boundary variable instead
    // of two), which is exactly what symbolic-bound proofs need when
    // the optimizer failed to CSE a reloaded array length.
    // Scope fence (v1): same-BB only. Cross-block equivalence needs a
    // path-clobber argument (MemorySSA) -- deferred, documented in
    // HANDOFF. OFF by default so the light tier stays byte-identical.
    bool LoadEqEnabled = false;
    unsigned NumLoadEquivs = 0;
    std::map<llvm::Value*, std::vector<llvm::LoadInst*>> LoadsByPtr;
    // Every Value that became a FREE variable, in creation order. These
    // are exactly the over-approximation boundaries of the current query
    // -- the set the HEAVY tier walks to assert analysis facts (§9).
    std::vector<llvm::Value*> FreeVars;

public:
    explicit Z3Encoder(unsigned TimeoutMs = 10000);
    z3::expr getOrCreateZ3Expr(llvm::Value *Val);
    bool encodeInstruction(llvm::Instruction *Inst, llvm::DominatorTree *DT = nullptr, llvm::LoopInfo *LI = nullptr);
    void assertCondition(llvm::Value *Cond, bool IsTrue);
    std::pair<std::string, double> checkSatisfiability();

    void push();
    void pop();

    void enableUnsatCores();
    void assertConditionTracked(llvm::Value *Cond, bool IsTrue, const std::string &Label);
    std::string getUnsatCore();
    // --- HEAVY-tier fact plumbing (mechanism only; policy = FactEncoder) ---
    // The boundary set: every Value that was given a free variable.
    const std::vector<llvm::Value*> &getFreeVariables() const { return FreeVars; }
    // Assert V ∈ CR via the four extreme bounds (uge/ule/sge/sle) -- sound
    // for wrapped ranges too, where the bounds are simply weaker (§9).
    // Empty Label => plain assert; nonempty => tracked (audit cores).
    // Returns false when the range carries no usable information.
    bool assertRange(llvm::Value *V, const llvm::ConstantRange &CR,
                     const std::string &Label = "");
    // Assert V's known-bit masks: (V & Zero)==0 and (V & One)==One.
    // Returns false when nothing is known (or masks conflict).
    bool assertKnownBits(llvm::Value *V, const llvm::KnownBits &KB,
                         const std::string &Label = "");
    // --- LDEQ knob + stats (see field comment above) ---
    void enableLoadEquivalence() { LoadEqEnabled = true; }
    unsigned getNumLoadEquivs() const { return NumLoadEquivs; }

private:
    // Encodes the branch/switch constraint attached to a single CFG edge
    // Pred -> Succ (br cond / !cond, switch == case, switch default, or a
    // fresh free boolean for alien terminators like invoke/indirectbr).
    z3::expr getEdgeCond(llvm::BasicBlock *Pred, llvm::BasicBlock *Succ);

    // Memoized reachability condition from Root down to BB, never walking
    // through PhiBB (the "boundary wall"). O(V+E) total across a region.
    z3::expr getBlockReachCond(llvm::BasicBlock *BB, llvm::BasicBlock *Root,
                               llvm::BasicBlock *PhiBB, llvm::DominatorTree *DT);

    // LDEQ search: returns an earlier load provably observing the same
    // memory as L (same pointer SSA value, same type, same BB, no
    // may-write instruction between), else nullptr. Records L in
    // LoadsByPtr either way. No-op (nullptr) unless LoadEqEnabled.
    llvm::LoadInst *findEquivalentLoad(llvm::LoadInst *L);

    // APInt -> BV constant of identical width (i128-safe via decimal
    // string; NEVER casts through unsigned -- the constant-truncation
    // invariant from §4 applies to fact constants too).
    z3::expr bvConst(const llvm::APInt &A);
    void addFact(const z3::expr &Fact, const std::string &Label);
    // --- i1 sort-coercion helpers ---
    
    // i1 lives a double life: icmp results / bool constants are Z3 Bools,
    // but trunc-to-i1 and BV math produce 1-bit BVs. These make every
    // Bool<->BV bridge total instead of throwing z3::exception.
    z3::expr asBool(z3::expr e);
    z3::expr asBV(z3::expr e, unsigned w);
};