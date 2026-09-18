#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Analysis/LoopInfo.h"
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
    // ---- Inductive body encoding (item 1, HANDOFF §10.46/10.48) ----
    // Primed mode: a SECOND instantiation of the loop PrimedLoop's body.
    // Instructions inside the loop map through PrimedMap; the loop's header
    // phis become fresh symbols "<name>~<tag>" (the state at lap t-1);
    // everything outside the loop shares ValueMap (loop-invariant terms).
    // Loads inside the loop are fresh in the copy (no memory carried).
    llvm::Loop *PrimedLoop = nullptr;
    std::string PrimeTag;
    std::unordered_map<llvm::Value*, z3::expr> PrimedMap;
    std::vector<std::pair<llvm::PHINode*, z3::expr>> PrimedHeaderPhis;

    // --- MEMOIZED CFG ENCODING (replaces exponential path enumeration) ---
    // ReachCache[(Root, BB)] = ONE Z3 formula meaning "control reaches BB
    // starting from Root". Because z3::expr terms are hash-consed DAGs,
    // shared path prefixes are physically stored exactly once, so the
    // formula stays O(E) in size even when the number of syntactic paths
    // is exponential. Keyed on (Root, BB) so Phis sharing an IDom region
    // reuse each other's work within the same trap query.
    std::map<std::tuple<llvm::BasicBlock*, llvm::BasicBlock*, llvm::BasicBlock*, std::string>, z3::expr> ReachCache;

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
    // F1 profiling (HANDOFF §10.35): Z3 statistics of the last check and the
    // current assertion set in SMT-LIB 2 text.
    std::string getStatistics();
    std::string toSMT2();          // includes check-sat-assuming over tracked labels
    // F1 step 2b (HANDOFF §10.38): assertion classes for the narrowing rewriter.
    std::vector<z3::expr> snapshotAssertions() {
        std::vector<z3::expr> V; z3::expr_vector A = Solver.assertions();
        for (unsigned i = 0; i < A.size(); ++i) V.push_back(A[i]);
        return V;
    }
    const std::vector<z3::expr> &factExprs() const { return FactExprs; }
    z3::context &context() { return Ctx; }
    // Primed instantiation controls (item 1).
    void beginPrimed(llvm::Loop *L, const std::string &Tag) { PrimedLoop = L; PrimeTag = Tag; }
    void endPrimed() { PrimedLoop = nullptr; PrimeTag.clear(); }
    // Forget the copy (its definitions live in a popped scope): call
    // after the STEP scope is popped, before another loop level.
    void resetPrimed() { endPrimed(); PrimedMap.clear(); PrimedHeaderPhis.clear(); PrimedFreeVars.clear(); }
    // In-loop values that became FRESH symbols in the copy (header phis,
    // loads, calls...): the copy's boundaries, for FactEncoder.
    std::vector<llvm::Value*> PrimedFreeVars;
    const std::vector<llvm::Value*> &primedFreeVars() const { return PrimedFreeVars; }
    bool inPrimed() const { return PrimedLoop != nullptr; }
    // The primed copy of V (must have been encoded in primed mode, or be a
    // header phi / outside value); creates it on demand like getOrCreateZ3Expr.
    z3::expr primedExpr(llvm::Value *V) {
        llvm::Loop *Save = PrimedLoop; std::string T = PrimeTag;
        z3::expr E = getOrCreateZ3Expr(V);
        PrimedLoop = Save; PrimeTag = T; return E;
    }
    const std::vector<std::pair<llvm::PHINode*, z3::expr>> &primedHeaderPhis() const { return PrimedHeaderPhis; }
    z3::expr condExpr(llvm::Value *Cond, bool IsTrue) { z3::expr c = asBool(getOrCreateZ3Expr(Cond)); return IsTrue ? c : !c; }
    unsigned timeoutMs() const { return TimeoutMsStored; }
    std::vector<std::string> TrackedLabels;   // answer literals of tracked assertions (scope-aware)
    std::vector<size_t> TrackedScopes;        // TrackedLabels.size() at each push
    std::vector<z3::expr> FactExprs;          // every fact asserted via addFact
    unsigned TimeoutMsStored = 10000;
    unsigned NarrowMulWidth = 0;              // 0 = exact multiplication
    unsigned NarrowOpBits = 16;               // operand width of the narrowed multiplier
    std::vector<z3::expr> NarrowSideConds;
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
    // F1 step 2 (HANDOFF §10.37): encode `mul iW` (W = NarrowMulWidth) as
    // zext(lo32(a)) * zext(lo32(b)) and record small(a,b) side conditions.
    void enableNarrowMul(unsigned W = 64, unsigned OperandBits = 16) { NarrowMulWidth = W; NarrowOpBits = OperandBits; }
    const std::vector<z3::expr> &narrowSideConds() const { return NarrowSideConds; }
    // Multiply two W-bit exprs; in narrow mode (W == NarrowMulWidth) use the
    // 32-bit-operand form and record the side condition.
    z3::expr mulMaybeNarrow(const z3::expr &A, const z3::expr &B);
    unsigned getNumLoadEquivs() const { return NumLoadEquivs; }
    // --- SCEV-SYM mechanism hooks (policy lives in FactEncoder) ---
    // Public bridges so FactEncoder can BUILD facts about SSA values and
    // constants in THIS encoder's context, then assert them tracked.
    // valueAsBV totalizes exactly like the private asBV path.
    z3::expr valueAsBV(llvm::Value *V, unsigned W) {
        return asBV(getOrCreateZ3Expr(V), W);
    }
    z3::expr apintToBV(const llvm::APInt &A) { return bvConst(A); }
    // Assert an arbitrary already-built fact expression. Label empty =>
    // plain assert; nonempty => tracked (eligible for unsat cores).
    void assertRawFact(const z3::expr &F, const std::string &Label) {
        addFact(F, Label);
    }
    // Item 1 (HANDOFF §10.46): public bridges for the inductive phase.
    // reachWithinLap: "control reaches BB from Header within one lap"
    // (back edges are not walked; alien edges are free booleans).
    z3::expr reachWithinLap(llvm::BasicBlock *BB, llvm::BasicBlock *Header, llvm::DominatorTree *DT) {
        return getBlockReachCond(BB, Header, nullptr, DT);
    }
    z3::expr edgeCond(llvm::BasicBlock *Pred, llvm::BasicBlock *Succ) { return getEdgeCond(Pred, Succ); }
    z3::expr asBoolPublic(const z3::expr &E) { return asBool(E); }
    z3::expr asBVPublic(const z3::expr &E, unsigned W) { return asBV(E, W); }

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
    void defineValue(llvm::Value *V, const z3::expr &E);   // ValueMap or PrimedMap
    void addFact(const z3::expr &Fact, const std::string &Label);
    // --- i1 sort-coercion helpers ---
    
    // i1 lives a double life: icmp results / bool constants are Z3 Bools,
    // but trunc-to-i1 and BV math produce 1-bit BVs. These make every
    // Bool<->BV bridge total instead of throwing z3::exception.
    z3::expr asBool(z3::expr e);
    z3::expr asBV(z3::expr e, unsigned w);
};