#pragma once
// =====================================================================
// FactEncoder -- the HEAVY tier's policy module (HANDOFF §9).
//
// Z3Encoder stays a pure IR->Z3 translator; OraclePass owns discovery
// and orchestration. FactEncoder sits between them: it walks the
// over-approximation boundaries of the current query (the free
// variables Z3Encoder created) and asserts everything LLVM's own
// lightweight analyses already know about each one:
//
//   RM  : !range metadata on loads/calls       (value fact)
//   RA  : 'range' attribute on call returns    (value fact)
//         and function parameters
//   KB  : computeKnownBits bit masks           (value fact)
//   LVI : LazyValueInfo constant range at the  (point fact -- def must
//         trap's branch point                   dominate PredBB)
//   SCEV: loop-header phi ranges               (step 6, one more method)
//
// Facts are asserted CONTEXT-SIDE (before the push()/trap boundary), so
// the vacuity audit doubles as the alarm for a wrong fact import, and in
// audit mode each fact is tracked with a label ("RM:3", "KB:7", "LVI:12")
// so unsat cores attribute proofs to their fact source.
//
// Soundness: value facts carry the same poison-semantics caveat as the
// nsw/nuw import (violation => poison => UB once branched on, so defined
// executions satisfy the fact). LVI facts are only valid at a program
// point, hence the dominance gate. A fact NEVER moves a boundary: the
// variable stays free-plus-constrained, never sliced through.
// =====================================================================
#include "Z3Encoder.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Support/raw_ostream.h"
#include <string>

namespace llvm {
class LazyValueInfo;
class DataLayout;
class ScalarEvolution;
}

class FactEncoder {
    Z3Encoder &Encoder;
    llvm::LazyValueInfo *LVI;      // null => LVI fact source disabled
    llvm::ScalarEvolution *SE;     // null => SCEV fact source disabled
    llvm::DominatorTree &DT;
    const llvm::DataLayout &DL;
    bool Audit;                    // true => tracked assertions with labels
    llvm::raw_ostream &Log;
    unsigned NumFacts = 0;

public:
    FactEncoder(Z3Encoder &Enc, llvm::LazyValueInfo *LVI,
                llvm::ScalarEvolution *SE,
                llvm::DominatorTree &DT, const llvm::DataLayout &DL,
                bool Audit, llvm::raw_ostream &Log);

    // Walk every boundary (free) value and assert its facts.
    // Returns the number of fact assertions added to the solver.
    unsigned encodeBoundaryFacts(llvm::BasicBlock *PredBB);

private:
    bool tryRangeMetadata(llvm::Value *V);
    bool tryRangeAttr(llvm::Value *V);
    bool tryKnownBits(llvm::Value *V);
    bool tryLVI(llvm::Value *V, llvm::BasicBlock *PredBB);
    bool trySCEV(llvm::Value *V);
    // "RM:<n>" etc.; n = running fact counter, so labels are unique.
    std::string mkLabel(const char *Src) const;
};