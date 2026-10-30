// VerdictCache.cpp -- see VerdictCache.h (HANDOFF §13.5).
#include "VerdictCache.h"
#include "TrapJob.h"
#include "OdessyVersion.h"   // generated: ODESSY_SOURCE_HASH

#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/Config/llvm-config.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include <sstream>
#include <functional>
#include <regex>
#include <z3.h>

using namespace llvm;

namespace odessy {

namespace {

// Metadata by content. DI* nodes (debug info) are elided; distinct and
// cyclic nodes (llvm.loop self references) get first-visit numbers.
struct MDPrinter {
    const Module &M;
    DenseMap<const Metadata *, unsigned> Seen;
    explicit MDPrinter(const Module &M) : M(M) {}
    void print(const Metadata *MD, raw_ostream &OS) {
        if (!MD) { OS << "null"; return; }
        if (isa<DINode>(MD) || isa<DILocation>(MD)) { OS << "DI"; return; }
        if (auto *S = dyn_cast<MDString>(MD)) { OS << '"'; OS.write_escaped(S->getString()); OS << '"'; return; }
        if (auto *C = dyn_cast<ConstantAsMetadata>(MD)) { C->getValue()->printAsOperand(OS, true, &M); return; }
        if (auto *V = dyn_cast<ValueAsMetadata>(MD)) { OS << "V"; V->getValue()->getType()->print(OS); return; }
        if (auto *N = dyn_cast<MDNode>(MD)) {
            auto It = Seen.find(N);
            if (It != Seen.end()) { OS << "^" << It->second; return; }
            unsigned Id = Seen.size(); Seen[N] = Id;
            OS << (N->isDistinct() ? "distinct{" : "{");
            for (const MDOperand &Op : N->operands()) { print(Op.get(), OS); OS << ','; }
            OS << '}';
            return;
        }
        OS << "?";
    }
};

} // namespace

// SHA-256 (FIPS 180-4), self-contained: opt does not export LLVM's
// SHA256 symbols to plugins on macOS.
std::string sha256Hex(const std::string &S) {
    static const uint32_t K[64] = {
        0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
        0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
        0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
        0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
        0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
        0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
        0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
        0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2};
    uint32_t H[8] = {0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19};
    std::string M = S;
    uint64_t Bits = (uint64_t)S.size() * 8;
    M += (char)0x80;
    while (M.size() % 64 != 56) M += (char)0;
    for (int i = 7; i >= 0; --i) M += (char)((Bits >> (8 * i)) & 0xff);
    auto R = [](uint32_t X, int N) { return (X >> N) | (X << (32 - N)); };
    for (size_t Off = 0; Off < M.size(); Off += 64) {
        uint32_t W[64];
        for (int i = 0; i < 16; ++i)
            W[i] = (uint32_t)(uint8_t)M[Off + 4*i] << 24 | (uint32_t)(uint8_t)M[Off + 4*i + 1] << 16 |
                   (uint32_t)(uint8_t)M[Off + 4*i + 2] << 8 | (uint32_t)(uint8_t)M[Off + 4*i + 3];
        for (int i = 16; i < 64; ++i) {
            uint32_t S0 = R(W[i-15], 7) ^ R(W[i-15], 18) ^ (W[i-15] >> 3);
            uint32_t S1 = R(W[i-2], 17) ^ R(W[i-2], 19) ^ (W[i-2] >> 10);
            W[i] = W[i-16] + S0 + W[i-7] + S1;
        }
        uint32_t a = H[0], b = H[1], c = H[2], d = H[3], e = H[4], f = H[5], g = H[6], h = H[7];
        for (int i = 0; i < 64; ++i) {
            uint32_t T1 = h + (R(e, 6) ^ R(e, 11) ^ R(e, 25)) + ((e & f) ^ (~e & g)) + K[i] + W[i];
            uint32_t T2 = (R(a, 2) ^ R(a, 13) ^ R(a, 22)) + ((a & b) ^ (a & c) ^ (b & c));
            h = g; g = f; f = e; e = d + T1; d = c; c = b; b = a; a = T1 + T2;
        }
        H[0] += a; H[1] += b; H[2] += c; H[3] += d; H[4] += e; H[5] += f; H[6] += g; H[7] += h;
    }
    static const char *Hex = "0123456789abcdef";
    std::string Out;
    for (uint32_t X : H) for (int i = 28; i >= 0; i -= 4) Out += Hex[(X >> i) & 15];
    return Out;
}

std::string canonicalForm(Function &F) {
    Module &M = *F.getParent();
    std::string Out;
    raw_string_ostream OS(Out);

    // ---- configuration and target
    unsigned Z3Maj, Z3Min, Z3Bld, Z3Rev;
    Z3_get_version(&Z3Maj, &Z3Min, &Z3Bld, &Z3Rev);
    OS << "odessy-cache v1\nencoder " << ODESSY_SOURCE_HASH << "\nllvm " << LLVM_VERSION_STRING
       << "\nz3 " << Z3Maj << '.' << Z3Min << '.' << Z3Bld << '.' << Z3Rev
       << "\nknobs " << CacheKnobs << "\ntriple " << M.getTargetTriple().str()
       << "\nlayout " << M.getDataLayoutStr() << "\n";

    // ---- the function, through a clone (F itself is never touched)
    ValueToValueMapTy VMap;
    Function *C = CloneFunction(&F, VMap);
    C->setName("odessy.canon");           // module may suffix it; replaced below
    C->setSubprogram(nullptr);
    SmallVector<StringRef, 32> KindNames;
    F.getContext().getMDKindNames(KindNames);
    for (Argument &A : C->args()) A.setName("");
    SmallVector<Instruction *, 8> DbgCalls;
    MDPrinter MP(M);
    std::string MDText;
    raw_string_ostream MDS(MDText);
    unsigned Idx = 0;
    for (BasicBlock &BB : *C) {
        BB.setName("");
        for (Instruction &I : BB) {
            if (isa<DbgInfoIntrinsic>(&I)) { DbgCalls.push_back(&I); continue; }
            I.setName("");
            I.dropDbgRecords();
            I.setDebugLoc(DebugLoc());
            SmallVector<std::pair<unsigned, MDNode *>, 4> MDs;
            I.getAllMetadata(MDs);
            for (auto &[Kind, N] : MDs) {
                if (Kind == LLVMContext::MD_dbg) continue;
                MDS << "md " << Idx << ' ' << (Kind < KindNames.size() ? KindNames[Kind] : StringRef("?")) << ' ';
                MP.print(N, MDS);
                MDS << '\n';
            }
            I.dropUnknownNonDebugMetadata({});   // all non-debug kinds: printed above
            ++Idx;
        }
    }
    for (Instruction *I : DbgCalls) I->eraseFromParent();
    // function-level metadata (other than the subprogram)
    {
        SmallVector<std::pair<unsigned, MDNode *>, 4> MDs;
        C->getAllMetadata(MDs);
        for (auto &[Kind, N] : MDs) { MDS << "fmd " << Kind << ' '; MP.print(N, MDS); MDS << '\n'; }
        C->clearMetadata();
    }

    std::string Body;
    raw_string_ostream BS(Body);
    C->print(BS);
    // The clone's own name and attribute-group numbers (#N) are module
    // artefacts: replace the name, and print attribute groups by content
    // (fnattrs / callattrs below). Group references only end a define line
    // ("... #0 {") or a call line (metadata already dropped), so only those
    // positions are rewritten -- never text inside an instruction.
    {
        std::string Name = "@" + C->getName().str() + "(";
        size_t At = Body.find(Name);
        if (At != std::string::npos) Body.replace(At, Name.size(), "@F(");
        static const std::regex GroupAtEnd(R"( #[0-9]+( \{)?$)");
        std::string Clean; size_t Pos = 0;
        while (Pos < Body.size()) {
            size_t NL = Body.find('\n', Pos);
            std::string Line = Body.substr(Pos, NL == std::string::npos ? std::string::npos : NL - Pos);
            Clean += std::regex_replace(Line, GroupAtEnd, "$1") + "\n";
            if (NL == std::string::npos) break;
            Pos = NL + 1;
        }
        Body = Clean;
    }
    OS << Body << MDText;
    OS << "fnattrs " << F.getAttributes().getAsString(AttributeList::FunctionIndex) << "\n";
    unsigned CI = 0;
    for (Instruction &I : instructions(*C))
        if (auto *CB = dyn_cast<CallBase>(&I))
            OS << "callattrs " << CI++ << ' ' << CB->getAttributes().getAsString(AttributeList::FunctionIndex) << "\n";

    // ---- what F sees outside itself: callees and referenced globals
    SetVector<const GlobalValue *> Refs;
    SmallPtrSet<const Constant *, 16> SeenC;
    std::function<void(const Value *)> Collect = [&](const Value *V) {
        if (auto *G = dyn_cast<GlobalValue>(V)) { Refs.insert(G); return; }
        if (auto *K = dyn_cast<Constant>(V))
            if (SeenC.insert(K).second)
                for (const Use &U : K->operands()) Collect(U.get());
    };
    for (Instruction &I : instructions(F))
        for (const Use &U : I.operands()) Collect(U.get());
    for (const GlobalValue *G : Refs) {
        if (auto *Fn = dyn_cast<Function>(G)) {
            OS << "callee @" << Fn->getName() << ' ';
            Fn->getFunctionType()->print(OS);
            OS << ' ' << Fn->getAttributes().getAsString(AttributeList::FunctionIndex);
            for (unsigned A = 0; A < Fn->arg_size(); ++A) OS << " | " << Fn->getAttributes().getParamAttrs(A).getAsString();
            OS << " ret " << Fn->getAttributes().getRetAttrs().getAsString() << " linkage " << (unsigned)Fn->getLinkage() << "\n";
        } else if (auto *GV = dyn_cast<GlobalVariable>(G)) {
            OS << "global @" << GV->getName() << ' ';
            GV->getValueType()->print(OS);
            OS << (GV->isConstant() ? " const" : " var") << " linkage " << (unsigned)GV->getLinkage()
               << " align " << GV->getAlign().valueOrOne().value() << ' ' << GV->getAttributes().getAsString();
            if (GV->isConstant() && GV->hasInitializer()) {
                std::string Init; raw_string_ostream IS(Init);
                GV->getInitializer()->printAsOperand(IS, true, &M);
                OS << " init " << (Init.size() > 4096 ? sha256Hex(Init) : Init);
            }
            OS << "\n";
        } else {
            OS << "gv @" << G->getName() << "\n";
        }
    }

    C->eraseFromParent();
    return Out;
}

bool cacheLookup(const std::string &Key, const std::string &Canon, std::string &Payload) {
    if (CacheDir.empty()) return false;
    SmallString<256> P(CacheDir);
    sys::path::append(P, Key.substr(0, 2), Key);
    auto Buf = MemoryBuffer::getFile(P);
    if (!Buf) return false;
    StringRef S = (*Buf)->getBuffer();
    size_t Sep = S.find(StringRef("\n\0", 2));
    if (Sep == StringRef::npos) return false;              // corrupt
    if (S.substr(0, Sep) != Canon) return false;            // collision: never apply
    Payload = S.substr(Sep + 2).str();
    return true;
}

void cacheStore(const std::string &Key, const std::string &Canon, const std::string &Payload) {
    if (CacheDir.empty()) return;
    SmallString<256> D(CacheDir);
    sys::path::append(D, Key.substr(0, 2));
    if (sys::fs::create_directories(D)) return;
    SmallString<256> P(D);
    sys::path::append(P, Key);
    SmallString<256> Tmp;
    int FD;
    if (sys::fs::createUniqueFile(Twine(P) + ".tmp-%%%%%%%%", FD, Tmp)) return;
    {
        raw_fd_ostream OS(FD, /*shouldClose=*/true);
        OS << Canon;
        OS.write("\n\0", 2);
        OS << Payload;
        if (OS.has_error()) { OS.clear_error(); sys::fs::remove(Tmp); return; }
    }
    if (sys::fs::rename(Tmp, P)) sys::fs::remove(Tmp);
}

namespace {
// Canonical positions: arguments, then instructions, then blocks, in
// function order (identical canonical forms => identical positions).
struct Positions {
    DenseMap<const Value *, std::string> Of;
    std::vector<Value *> Arg, Inst;
    std::vector<BasicBlock *> Block;
    explicit Positions(Function &F) {
        for (Argument &A : F.args()) { Of[&A] = "a" + std::to_string(Arg.size()); Arg.push_back(&A); }
        for (BasicBlock &BB : F) {
            Of[&BB] = "b" + std::to_string(Block.size()); Block.push_back(&BB);
            for (Instruction &I : BB) { Of[&I] = "i" + std::to_string(Inst.size()); Inst.push_back(&I); }
        }
    }
    Value *at(const std::string &P) const {
        if (P.size() < 2) return nullptr;
        size_t N = std::stoul(P.substr(1));
        if (P[0] == 'a') return N < Arg.size() ? Arg[N] : nullptr;
        if (P[0] == 'i') return N < Inst.size() ? Inst[N] : nullptr;
        if (P[0] == 'b') return N < Block.size() ? Block[N] : nullptr;
        return nullptr;
    }
};
} // namespace

std::string recordDecisions(const FunctionCtx &FC, const std::vector<TrapJob> &Jobs) {
    Positions P(*FC.F);
    std::ostringstream OS;
    OS << "v1 " << FC.JobIndices.size() << "\n";
    for (size_t ji : FC.JobIndices) {
        const TrapJob &J = Jobs[ji];
        auto TC = P.Of.find(J.TrapCall), BR = P.Of.find(J.Br);
        if (TC == P.Of.end() || BR == P.Of.end()) return "resolve";
        std::string Loop = "-";
        if (J.MVLoop) {
            auto H = P.Of.find(J.MVLoop->getHeader());
            if (H == P.Of.end()) return "resolve";
            Loop = H->second;
        }
        OS << "J " << TC->second << ' ' << BR->second << ' ' << J.Eliminate << ' ' << J.MVEliminate << ' '
           << Loop << ' ' << J.MVHyp.size() << "\n";
        for (const TrapJob::MVConjunct &C : J.MVHyp) {
            if (C.Bound) return "resolve";                 // symbolic T3 bound: not stored (v1)
            auto V = P.Of.find(C.V);
            if (V == P.Of.end() || C.ConstStr.empty() || C.ConstStr.find(' ') != std::string::npos) return "resolve";
            OS << "C " << V->second << ' ' << C.Pred << ' ' << C.ConstStr << "\n";
        }
    }
    return OS.str();
}

bool replayDecisions(const std::string &Payload, const FunctionCtx &FC, std::vector<TrapJob> &Jobs) {
    if (Payload.rfind("v1 ", 0) != 0) return false;
    Positions P(*FC.F);
    std::istringstream IS(Payload);
    std::string Tag; size_t N = 0;
    IS >> Tag >> N;
    if (!IS || N != FC.JobIndices.size()) return false;
    struct Dec { bool E, MV; Loop *L; std::vector<TrapJob::MVConjunct> H; };
    std::vector<Dec> Ds;
    for (size_t k = 0; k < N; ++k) {
        const TrapJob &J = Jobs[FC.JobIndices[k]];
        std::string Tc, Br, Lp; int E = 0, MV = 0; size_t NC = 0;
        IS >> Tag >> Tc >> Br >> E >> MV >> Lp >> NC;
        if (!IS || Tag != "J" || P.at(Tc) != J.TrapCall || P.at(Br) != J.Br) return false;
        Dec D{E != 0, MV != 0, nullptr, {}};
        if (Lp != "-") {
            auto *H = dyn_cast_or_null<BasicBlock>(P.at(Lp));
            if (!H || !FC.LI) return false;
            D.L = FC.LI->getLoopFor(H);
            if (!D.L || D.L->getHeader() != H) return false;
        }
        for (size_t c = 0; c < NC; ++c) {
            std::string V, K; unsigned Pred = 0;
            IS >> Tag >> V >> Pred >> K;
            if (!IS || Tag != "C" || !P.at(V) || !P.at(V)->getType()->isIntegerTy()) return false;
            TrapJob::MVConjunct C;
            C.V = P.at(V); C.Pred = Pred; C.ConstStr = K; C.Text = "(cached)";
            D.H.push_back(C);
        }
        Ds.push_back(std::move(D));
    }
    for (size_t k = 0; k < N; ++k) {
        TrapJob &J = Jobs[FC.JobIndices[k]];
        J.Cached = true; J.Eliminate = Ds[k].E; J.MVEliminate = Ds[k].MV; J.MVLoop = Ds[k].L; J.MVHyp = Ds[k].H;
        J.LogText += "    -> [cache] verdict replayed\n";
    }
    return true;
}

} // namespace odessy
