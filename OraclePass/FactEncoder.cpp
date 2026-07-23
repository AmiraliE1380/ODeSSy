#include "FactEncoder.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Argument.h"
#include "llvm/IR/ConstantRange.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Metadata.h"
#include "llvm/Support/KnownBits.h"

using namespace llvm;

FactEncoder::FactEncoder(Z3Encoder &Enc, LazyValueInfo *LVI, ScalarEvolution *SE,
                         DominatorTree &DT, const DataLayout &DL, bool Audit,
                         raw_ostream &Log)
    : Encoder(Enc), LVI(LVI), SE(SE), DT(DT), DL(DL), Audit(Audit), Log(Log) {}

std::string FactEncoder::mkLabel(const char *Src) const {
    return std::string(Src) + ":" + std::to_string(NumFacts);
}

// Short printable form of a boundary value for the log ("i32 %x").
static std::string valueStr(Value *V) {
    std::string S; raw_string_ostream OS(S);
    V->printAsOperand(OS, /*PrintType=*/true);
    return S;
}

static std::string rangeStr(const ConstantRange &CR) {
    std::string S; raw_string_ostream OS(S);
    CR.print(OS);
    return S;
}

unsigned FactEncoder::encodeBoundaryFacts(BasicBlock *PredBB) {
    // NOTE: iterate by index -- assertRange/assertKnownBits only look up
    // existing exprs so FreeVars cannot grow mid-walk, but stay defensive.
    const auto &Boundaries = Encoder.getFreeVariables();
    for (size_t i = 0; i < Boundaries.size(); ++i) {
        Value *V = Boundaries[i];
        // Pointers / vectors / aliens are modeled as width-64 stand-ins;
        // a "range" over the stand-in is not a fact about the real value.
        if (!V->getType()->isIntegerTy()) continue;
        tryRangeMetadata(V);
        tryKnownBits(V);
        tryLVI(V, PredBB);
        trySCEV(V);
    }
    return NumFacts;
}

bool FactEncoder::tryRangeMetadata(Value *V) {
    auto *I = dyn_cast<Instruction>(V);
    if (!I) return false;
    if (!isa<LoadInst>(I) && !isa<CallInst>(I)) return false;
    MDNode *MD = I->getMetadata(LLVMContext::MD_range);
    if (!MD) return false;
    // Union of the metadata's [lo,hi) pairs. Violation => poison (LangRef),
    // same soundness argument as nsw.
    ConstantRange CR = getConstantRangeFromMetadata(*MD);
    std::string Lbl = mkLabel("RM");
    if (!Encoder.assertRange(V, CR, Audit ? Lbl : std::string()))
        return false;
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " in " << rangeStr(CR) << " (!range)\n";
    ++NumFacts;
    return true;
}

bool FactEncoder::tryKnownBits(Value *V) {
    KnownBits KB = computeKnownBits(V, DL);
    if (KB.isUnknown()) return false;
    std::string Lbl = mkLabel("KB");
    if (!Encoder.assertKnownBits(V, KB, Audit ? Lbl : std::string()))
        return false;
    std::string S; raw_string_ostream OS(S);
    OS << "zero=0x"; KB.Zero.print(OS, /*isSigned=*/false);
    OS << " one=0x"; KB.One.print(OS, /*isSigned=*/false);
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " known bits " << S << "\n";
    ++NumFacts;
    return true;
}

bool FactEncoder::tryLVI(Value *V, BasicBlock *PredBB) {
    if (!LVI) return false;
    // POINT fact: only valid if V's definition dominates the query point
    // (PredBB's terminator). Arguments dominate everything; any other
    // non-instruction (global, constexpr) has no LVI story -- skip.
    if (auto *I = dyn_cast<Instruction>(V)) {
        if (!DT.dominates(I, PredBB)) return false;
    } else if (!isa<Argument>(V)) {
        return false;
    }
    // UndefAllowed=false: the conservative range (holds even for undef).
    ConstantRange CR =
        LVI->getConstantRange(V, PredBB->getTerminator(), /*UndefAllowed=*/false);
    std::string Lbl = mkLabel("LVI");
    if (!Encoder.assertRange(V, CR, Audit ? Lbl : std::string()))
        return false;
    Log << "    -> Fact[" << Lbl << "] " << valueStr(V)
        << " in " << rangeStr(CR) << " (LVI @ " << PredBB->getName() << ")\n";
    ++NumFacts;
    return true;
}

bool FactEncoder::trySCEV(Value *V) {
    if (!SE) return false;
    // SCEV's payoff is the one boundary class nothing else can see:
    // loop-header phis (induction variables). Non-header phis are encoded
    // as ite chains, never free -- so any free phi IS a header phi.
    auto *Phi = dyn_cast<PHINode>(V);
    if (!Phi) return false;
    if (!SE->isSCEVable(Phi->getType())) return false;
    const SCEV *S = SE->getSCEV(Phi);
    if (isa<SCEVCouldNotCompute>(S)) return false;   // paranoia
    if (isa<SCEVUnknown>(S)) return false;           // no structure => full range
    // VALUE facts over the phi's whole evolution (every iteration), so no
    // dominance gate needed. Both interpretations asserted -- unsigned and
    // signed ranges come from different SCEV reasoning and either may be
    // the informative one. assertRange skips full sets on its own.
    bool Added = false;
    ConstantRange UR = SE->getUnsignedRange(S);
    std::string L1 = mkLabel("SCEV");
    if (Encoder.assertRange(V, UR, Audit ? L1 : std::string())) {
        Log << "    -> Fact[" << L1 << "] " << valueStr(V)
            << " in " << rangeStr(UR) << " (SCEV unsigned)\n";
        ++NumFacts; Added = true;
    }
    ConstantRange SR = SE->getSignedRange(S);
    std::string L2 = mkLabel("SCEV");
    if (Encoder.assertRange(V, SR, Audit ? L2 : std::string())) {
        Log << "    -> Fact[" << L2 << "] " << valueStr(V)
            << " in " << rangeStr(SR) << " (SCEV signed)\n";
        ++NumFacts; Added = true;
    }
    return Added;
}