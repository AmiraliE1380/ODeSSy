// =====================================================================
// OraclePass.cpp -- ODeSSy orchestration (Level-2 parallel redesign).
//
// The pass is now a MODULE pass composed of three stages:
//
//   Stage 1 (serial, main thread)   TrapDiscovery: per-function
//       analyses (DT/LI, + LVI/SE in heavy), trap anchoring, dominating
//       guards + llvm.assume, backward slice. Produces one TrapJob per
//       trap site; the job list spans the WHOLE module, so one function
//       with 400 traps and ten with 2 load-balance perfectly (this is
//       the "super-analysis level": the scheduling unit is the trap,
//       not the function).
//   Stage 2 (parallel, worker pool) TrapSolver: each worker owns a
//       private Z3 context; RPO encode + (heavy) boundary facts +
//       solve. The IR is READ-ONLY here. Heavy-tier LVI/SCEV queries
//       are serialized in discovery order through FactGate: thread-safe
//       AND deterministic (verdicts are THREADS-independent).
//   Stage 3 (serial, main thread)   kills in discovery order, log
//       assembly in discovery order, per-function stats.
//
// Determinism contract: for a given input module, THREADS=N and
// THREADS=1 produce identical verdicts, identical output IR, and
// byte-identical logs modulo the measured latency numbers (which were
// never deterministic, even serially). `diff` of the output .ll across
// THREADS values is the acceptance test.
//
// Analyze-then-kill note: verdicts are computed on pristine IR and the
// branch folds are applied afterwards (old behavior interleaved them).
// Both orders are sound; the new order's contexts are never weaker
// (an eliminated trap's guard condition is provably true, so keeping
// it as context for later traps is sound and possibly stronger), so
// trap-elimination counts can only match or exceed the old pass's.
//
// threads=1 (the default) is the serial reference; DebugOracle
// wiretaps (raw errs() from encode internals) are only meaningful at
// threads=1.
// =====================================================================
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/IR/IRBuilder.h"
#include <map>
#include <algorithm>
#include "Scheduler.h"
#include "TrapDiscovery.h"
#include "TrapJob.h"
#include "TrapSolver.h"
#include "Z3Encoder.h"

#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/raw_ostream.h"

#include <cctype>
#include <chrono>
#include <string>
#include <thread>
#include <vector>

using namespace llvm;

// --- THE DEBUG FLAG --- (set ODESSY_DEBUG=1 in the environment; dumps the
// SMT-LIB query and the countermodel of every SAT verdict, threads=1 only)
bool DebugOracle = std::getenv("ODESSY_DEBUG") != nullptr;

namespace {

// Turn a module identifier (usually the input .ll path, e.g.
// "evaluation/zlib/deflate_integer_O3.ll") into a safe, stable log
// filename stem ("deflate_integer_O3"). Deterministic: the same input
// always maps to the same log file, so one benchmark == one log.
static std::string logStemForModule(const Module &M) {
    StringRef Id = M.getModuleIdentifier();

    // Strip directory and the final extension.
    StringRef Base = sys::path::stem(sys::path::filename(Id));

    std::string Stem;
    if (Base.empty() || Base == "<stdin>") {
        Stem = "module";
    } else {
        // Replace anything that isn't [A-Za-z0-9._-] with '_' so the
        // name is always a valid single path component.
        for (char c : Base) {
            Stem.push_back((std::isalnum(static_cast<unsigned char>(c)) ||
                            c == '.' || c == '_' || c == '-') ? c : '_');
        }
    }
    return Stem;
}

static double msSince(std::chrono::steady_clock::time_point T0) {
    return std::chrono::duration<double, std::milli>(
               std::chrono::steady_clock::now() - T0).count();
}

struct OraclePass : public PassInfoMixin<OraclePass> {

    // When true, every UNSAT is audited: guards alone must be SAT.
    // Costs one extra solver query per UNSAT (not per trap) -- enable in
    // dev/audit runs, disable for performance benchmarking.
    bool VacuityCheck = false;
    // Precision tier. false = LIGHT: today's encoder, and it must stay
    // byte-for-byte identical to pre-tier behavior (the tier split doubles
    // as the analysis-facts ablation). true = HEAVY: light PLUS LLVM
    // analysis facts (LVI / KnownBits / SCEV / !range) asserted at the
    // over-approximation boundaries (HANDOFF §9).
    bool HeavyMode = false;
    unsigned QueryTimeoutMs = 10000;
    // Level-2 knob: workers for the per-trap solve stage. 1 (default)
    // == serial reference behavior; 0 == one worker per hardware thread.
    unsigned Threads = 1;
    // LDEQ knob (oracle-pass<ldeq>): same-BB no-clobber load unification
    // in the encoder. Default OFF (light tier stays byte-identical; the
    // knob is its own ablation). Composes with everything.
    bool LoadEq = false;
    // Trap-callee list (oracle-pass<traps=a,b,...>): callee-name
    // substrings the Hunter additionally accepts as trap sites, behind
    // the divergence gate (see TrapDiscovery.cpp). Empty (default) =>
    // intrinsic-only Hunter, byte-identical to all prior behavior.
    std::vector<std::string> TrapCallees;
    // FRAME knob (oracle-pass<frame>; HANDOFF §8): cross-BB load
    // unification via a Stage-1 MemorySSA frame walk. Default OFF (every
    // other configuration stays byte-identical; the knob is its own
    // ablation). Composes with everything; MemorySSA is requested only
    // when on.
    bool FrameMode = false;
    // MV knob (oracle-pass<mv>, optional mv-sane=<k>; HANDOFF §10.22):
    // solver-guided loop multi-versioning. Default OFF; every other
    // configuration stays byte-identical.
    bool MultiVersion = false;
    unsigned MVSaneExp = 62;

    OraclePass() = default;
    OraclePass(bool Vacuity, bool Heavy, unsigned TimeoutMs, unsigned NThreads,
               bool LdEq, std::vector<std::string> Traps = {},
               bool Frame = false, bool MV = false, unsigned MVSane = 62)
        : VacuityCheck(Vacuity), HeavyMode(Heavy), QueryTimeoutMs(TimeoutMs),
          Threads(NThreads), LoadEq(LdEq), TrapCallees(std::move(Traps)),
          FrameMode(Frame), MultiVersion(MV), MVSaneExp(MVSane) {}

    PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {
        auto &FAM =
            MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

        // --- Resolve the per-benchmark log file (same scheme as before:
        // module-derived, deterministic, truncated once per opt run) ---
        std::string LogFilename =
            "logs/compilations/" + logStemForModule(M) + ".txt";
        std::error_code EC;
        raw_fd_ostream LogFile(LogFilename, EC, sys::fs::OF_None);
        if (EC) {
            errs() << "[Error] Could not open log file: " << EC.message() << "\n";
            return PreservedAnalyses::all();
        }

        unsigned NThreads =
            Threads ? Threads : std::thread::hardware_concurrency();
        if (NThreads == 0) NThreads = 1;

        odessy::SolverConfig Cfg;
        Cfg.VacuityCheck = VacuityCheck;
        Cfg.HeavyMode = HeavyMode;
        Cfg.QueryTimeoutMs = QueryTimeoutMs;
        Cfg.LoadEq = LoadEq;
        Cfg.FrameMode = FrameMode;
        Cfg.MultiVersion = MultiVersion;
        Cfg.MVSaneExp = MVSaneExp;

        // =============================================================
        // STAGE 1: serial discovery (main thread; IR read-only)
        // =============================================================
        std::vector<odessy::TrapJob> Jobs;
        std::vector<odessy::FunctionCtx> FCs;
        DenseMap<Function *, size_t> CtxOf;

        for (Function &F : M) {
            if (F.isDeclaration()) continue;
            auto T0 = std::chrono::steady_clock::now();

            odessy::FunctionCtx FC;
            FC.F = &F;
            FC.DT = &FAM.getResult<DominatorTreeAnalysis>(F);
            FC.LI = &FAM.getResult<LoopAnalysis>(F);
            // CONCURRENCY: DominatorTree::dominates() lazily rebuilds its
            // DFS numbering after enough slow queries -- a hidden WRITE.
            // Force the numbering NOW, on the main thread, so every
            // worker-side dominates() takes the const fast path.
            FC.DT->updateDFSNumbers();
            // HEAVY tier only: point-sensitive ranges for boundary facts.
            // Never requested in light tier => light stays byte-identical.
            if (HeavyMode) {
                FC.LVI = &FAM.getResult<LazyValueAnalysis>(F);
                FC.SE = &FAM.getResult<ScalarEvolutionAnalysis>(F);
            }
            // FRAME only: MemorySSA for the Stage-1 frame walk. The
            // walker caches internally, but every query happens HERE,
            // serially, before any worker exists -- no FactGate needed
            // regardless of threads= (HANDOFF §8.7 step 2).
            MemorySSA *MSSA = nullptr;
            if (FrameMode)
                MSSA = &FAM.getResult<MemorySSAAnalysis>(F).getMSSA();

            size_t Before = Jobs.size();
            odessy::discoverTraps(F, *FC.DT, *FC.LI, Jobs, TrapCallees, MSSA);
            for (size_t i = Before; i < Jobs.size(); ++i)
                FC.JobIndices.push_back(i);

            FC.DiscoveryMs = msSince(T0);
            CtxOf[&F] = FCs.size();
            FCs.push_back(std::move(FC));
        }

        errs() << "[ODeSSy] " << Jobs.size() << " trap site(s) across "
               << FCs.size() << " function(s); threads=" << NThreads
               << (HeavyMode ? " [tier: heavy]" : "")
               << (LoadEq ? " [ldeq]" : "")
               << (FrameMode ? " [frame]" : "")
               << (MultiVersion ? " [mv]" : "");
        if (!TrapCallees.empty()) {
            errs() << " [traps=";
            for (size_t i = 0; i < TrapCallees.size(); ++i)
                errs() << (i ? "," : "") << TrapCallees[i];
            errs() << "]";
        }
        errs() << "\n";

        // =============================================================
        // STAGE 2: parallel solve (workers; IR read-only; verdicts only)
        // =============================================================
        odessy::FactGate Gate;
        auto WorkerBody = [&](size_t i) {
            odessy::TrapJob &J = Jobs[i];
            auto T0 = std::chrono::steady_clock::now();
            bool GatePassed = false;
            try {
                if (J.SliceOK) {
                    const odessy::FunctionCtx &FC = FCs[CtxOf.lookup(J.F)];
                    odessy::TrapSolver S(Cfg, FC, J);
                    bool Proceed = S.encodePhase();
                    if (HeavyMode) {
                        // Every heavy job passes the gate exactly once, in
                        // discovery order, even when the encode aborted
                        // (pass-through keeps the turnstile advancing).
                        Gate.acquire(J.Index);
                        if (Proceed) Proceed = S.factPhase();
                        Gate.release(J.Index);
                        GatePassed = true;
                    }
                    if (Proceed) S.solvePhase();
                }
            } catch (...) {
                // Phases fence their own exceptions; anything reaching
                // here is constructor-level (e.g. Z3 context OOM).
                // Degrade to "keep the trap" -- never unwind a worker.
                raw_string_ostream OS(J.LogText);
                OS << "    -> [Skip] worker-level exception -- trap kept\n";
            }
            if (HeavyMode && !GatePassed) {
                Gate.acquire(J.Index);   // dead/failed job: pass-through
                Gate.release(J.Index);
            }
            J.WorkerMs = msSince(T0);
        };
        odessy::runJobs(NThreads, Jobs.size(), WorkerBody);

        // =============================================================
        // STAGE 3a: THE KILL (serial, discovery order -- the only IR
        // mutation in the whole pass)
        // =============================================================
        int ModuleEliminated = 0;
        SmallPtrSet<BranchInst *, 16> Folded;
        for (odessy::TrapJob &J : Jobs) {
            if (!J.Eliminate) continue;
            raw_string_ostream OS(J.LogText);
            if (!Folded.insert(J.Br).second) {
                // Pathological: both successors of one branch proved dead
                // (would mean the branch itself is unreachable). First
                // verdict wins; refuse a contradictory second fold.
                OS << "    -> [Skip] anchor branch already folded by an earlier elimination -- keeping\n";
                J.Eliminate = false;
                continue;
            }
            J.Br->setCondition(ConstantInt::get(
                Type::getInt1Ty(J.F->getContext()), J.TrapOnTrue ? 0 : 1));
            OS << "  => SUCCESS: Trap mathematically neutralized!\n";
            ++ModuleEliminated;
        }

        // =============================================================
        // STAGE 3a': MULTI-VERSIONING (serial; oracle-pass<mv>; HANDOFF
        // §10.22). Jobs that stayed SAT but are DEAD UNDER HYPOTHESIS H
        // are grouped by the loop H hoists to; each group's loop is
        // cloned once, the preheader branches on H_L = AND of the group's
        // conjuncts (all loop-invariant => evaluable there), and the
        // anchor branches are folded ONLY in the clone. The original
        // loop keeps every trap: observational equality is by
        // construction (guard dominates the fast copy; each folded trap
        // was UNSAT under H_L context-side).
        // =============================================================
        int MVEliminated = 0, MVLoops = 0;
        if (MultiVersion) {
            const unsigned Budget = 4;                  // clones per function
            DenseMap<Function *, unsigned> Used;
            // group: (F, hoist loop) -> jobs
            std::map<std::pair<Function *, Loop *>, std::vector<size_t>> Groups;
            for (size_t i = 0; i < Jobs.size(); ++i) {
                odessy::TrapJob &J = Jobs[i];
                if (!J.MVEliminate || J.Eliminate || !J.MVLoop) continue;
                Groups[{J.F, J.MVLoop}].push_back(i);
            }
            // INNERMOST FIRST: an inner loop versioned first is then cloned
            // (already versioned, folds included) inside the outer fast copy,
            // so nested groups compose; each guard sits at its own level.
            std::vector<std::pair<Function *, Loop *>> Order;
            for (auto &G : Groups) Order.push_back(G.first);
            std::sort(Order.begin(), Order.end(), [&](auto &A, auto &B) {
                if (A.first != B.first) return A.first < B.first;
                return A.second->getLoopDepth() > B.second->getLoopDepth();
            });
            SmallPtrSet<Loop *, 8> Versioned;
            for (auto &Key : Order) {
                Function *F = Key.first; Loop *L = Key.second;
                auto &Idx = Groups[Key];
                auto note = [&](const char *Msg) {
                    for (size_t i : Idx) { raw_string_ostream OS(Jobs[i].LogText); OS << Msg; }
                };
                if (Used[F] >= Budget) { note("    -> [mv] SKIP: clone budget exhausted for this function\n"); continue; }
                odessy::FunctionCtx &FC = FCs[CtxOf.lookup(F)];
                DominatorTree *DT = FC.DT; LoopInfo *LI = FC.LI;
                ScalarEvolution *SE = &FAM.getResult<ScalarEvolutionAnalysis>(*F);
                // Shape: loop-simplify form (preheader, single latch, dedicated
                // exits) and LCSSA, so the clone's exit values reach outside
                // uses only through exit phis we can patch.
                if (!L->isLoopSimplifyForm())
                    simplifyLoop(L, DT, LI, SE, nullptr, nullptr, /*PreserveLCSSA=*/false);
                if (!L->isLoopSimplifyForm()) { note("    -> [mv] SKIP: loop not in simplify form\n"); continue; }
                formLCSSARecursively(*L, *DT, LI, SE);
                // H_L: distinct conjuncts of the group.
                std::vector<odessy::TrapJob::MVConjunct> Conj;
                for (size_t i : Idx)
                    for (auto &C : Jobs[i].MVHyp) {
                        bool Dup = false;
                        for (auto &D : Conj) if (D.V == C.V && D.Pred == C.Pred && D.ConstStr == C.ConstStr) { Dup = true; break; }
                        if (!Dup) Conj.push_back(C);
                    }
                BasicBlock *CheckBB = L->getLoopPreheader();
                IRBuilder<> B(CheckBB->getTerminator());
                Value *H = nullptr;
                for (auto &C : Conj) {
                    unsigned W = C.V->getType()->getIntegerBitWidth();
                    APInt K(W, C.ConstStr, 10);
                    Value *Cmp = B.CreateICmp((ICmpInst::Predicate)C.Pred, C.V,
                                              ConstantInt::get(C.V->getType(), K), "mv.h");
                    H = H ? B.CreateAnd(H, Cmp, "mv.h") : Cmp;
                }
                // Split: CheckBB | PH(original preheader), clone before PH.
                BasicBlock *PH = SplitBlock(CheckBB, CheckBB->getTerminator(), DT, LI, nullptr,
                                            L->getHeader()->getName() + ".mv.ph");
                ValueToValueMapTy VMap;
                SmallVector<BasicBlock *, 8> Blocks;
                SmallVector<BasicBlock *, 4> ExitsDup, Exits;
                L->getExitBlocks(ExitsDup);              // one entry PER EXITING EDGE
                { SmallPtrSet<BasicBlock *, 8> Seen;
                  for (BasicBlock *E : ExitsDup) if (Seen.insert(E).second) Exits.push_back(E); }
                Loop *Fast = cloneLoopWithPreheader(PH, CheckBB, L, VMap, ".mv.fast", LI, DT, Blocks);
                remapInstructionsInBlocks(Blocks, VMap);
                // Exit phis: every LCSSA/exit phi with an incoming edge from
                // the original loop gets the mapped incoming from the clone.
                for (BasicBlock *E : Exits)
                    for (PHINode &PN : E->phis()) {
                        unsigned N = PN.getNumIncomingValues();
                        for (unsigned k = 0; k < N; ++k) {
                            BasicBlock *In = PN.getIncomingBlock(k);
                            if (!L->contains(In)) continue;
                            Value *V = PN.getIncomingValue(k);
                            Value *MV = V; if (auto It = VMap.find(V); It != VMap.end()) MV = It->second;
                            auto BIt = VMap.find(In);
                            if (BIt == VMap.end()) continue;
                            PN.addIncoming(MV, cast<BasicBlock>(BIt->second));
                        }
                    }
                // Guard: H ? fast clone : original (checked).
                Instruction *OldTerm = CheckBB->getTerminator();
                BranchInst::Create(Fast->getLoopPreheader(), PH, H, CheckBB);
                OldTerm->eraseFromParent();
                // Fold the group's anchor branches in the CLONE only.
                for (size_t i : Idx) {
                    odessy::TrapJob &J = Jobs[i];
                    auto *CBr = dyn_cast_or_null<BranchInst>(VMap.lookup(J.Br));
                    raw_string_ostream OS(J.LogText);
                    if (!CBr || !CBr->isConditional()) { OS << "    -> [mv] SKIP: anchor not found in clone\n"; continue; }
                    if (!Folded.insert(CBr).second) { OS << "    -> [mv] SKIP: clone anchor already folded\n"; continue; }
                    CBr->setCondition(ConstantInt::get(Type::getInt1Ty(F->getContext()), J.TrapOnTrue ? 0 : 1));
                    OS << "  => SUCCESS (fast copy): trap folded in the H-guarded clone of loop '"
                       << L->getHeader()->getName() << "'\n";
                    ++MVEliminated;
                }
                DT->recalculate(*F);
                Versioned.insert(L); ++Used[F]; ++MVLoops; ++ModuleEliminated;
            }
        }

        // =============================================================
        // STAGE 3b: log assembly (discovery order => THREADS-invariant)
        // =============================================================
        for (odessy::FunctionCtx &FC : FCs) {
            std::string FuncText;
            raw_string_ostream FOS(FuncText);

            FOS << "\n[Z3 Oracle] Analyzing Function: " << FC.F->getName() << "\n";
            if (HeavyMode) {
                FOS << "  [tier: heavy]\n";
            }

            double TotalLatency = 0.0;
            double WorkerWall = 0.0;
            int TrapsEliminated = 0;
            int trap_attempts = 0;
            int smt_queries = 0;

            for (size_t ji : FC.JobIndices) {
                odessy::TrapJob &J = Jobs[ji];
                FOS << J.LogText;
                trap_attempts++;
                TotalLatency += J.LatencyMs;
                if (J.LatencyMs > 0.0) smt_queries++;
                if (J.Eliminate) TrapsEliminated++;
                WorkerWall += J.WorkerMs;
            }

            FOS << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
            if (MultiVersion) {
                int MVFolded = 0;
                for (size_t ji : FC.JobIndices)
                    if (Jobs[ji].LogText.find("SUCCESS (fast copy)") != std::string::npos) MVFolded++;
                FOS << "  => Traps Folded In Fast Copies (mv): " << MVFolded << "\n";
            }
            FOS << "  => Total Trap Attempts: " << trap_attempts << "\n";
            FOS << "  => Total SMT Queries Executed: " << smt_queries << "\n";
            FOS << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
            FOS << "  => Average SMT Query Latency: "
                << (smt_queries > 0 ? TotalLatency / smt_queries : 0) << " ms\n";
            // Discovery + summed per-job worker wall. With threads>1 this
            // is CPU-time-like (jobs overlap), not elapsed time -- the
            // honest elapsed number is the compile-stage wall clock the
            // harness already records.
            FOS << "  => Total DFS & SMT Execution Time: "
                << (FC.DiscoveryMs + WorkerWall) << " ms\n";
            FOS << "--------------------------------------------------\n";

            LogFile << FuncText;
            errs() << FuncText;   // full mirror (superset of the old stderr)
        }

        return ModuleEliminated > 0 ? PreservedAnalyses::none()
                                    : PreservedAnalyses::all();
    }
};

} // namespace

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "OraclePass", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](StringRef Name, ModulePassManager &MPM,
                       ArrayRef<PassBuilder::PipelineElement>) {
                        if (!Name.consume_front("oracle-pass"))
                            return false;
                        bool Vacuity = false;
                        bool Heavy = false;
                        bool TierSeen = false;            // reject <light;heavy>
                        unsigned TimeoutMs = 10000;
                        unsigned Threads = 1;             // Level-2 default: serial
                        bool LdEq = false;                // LDEQ default: off
                        bool Frame = false;               // FRAME default: off
                        bool MV = false; unsigned MVSane = 62;  // MV default: off
                        std::vector<std::string> Traps;   // traps= callees: empty
                        if (!Name.empty()) {              // parse "<a;b;...>"
                            if (!Name.consume_front("<") || !Name.consume_back(">"))
                                return false;
                            SmallVector<StringRef, 4> Parts;
                            Name.split(Parts, ';');
                            for (StringRef P : Parts) {
                                P = P.trim();
                                if (P == "vacuity")
                                    Vacuity = true;
                                else if (P == "ldeq")
                                    LdEq = true;
                                else if (P == "frame")
                                    Frame = true;
                                else if (P == "mv")
                                    MV = true;
                                else if (P.consume_front("mv-sane=")) {
                                    if (P.getAsInteger(10, MVSane) || MVSane < 8 || MVSane > 62)
                                        return false;
                                    MV = true;
                                }
                                else if (P == "light" || P == "heavy") {
                                    if (TierSeen)
                                        return false;   // contradictory tiers
                                    TierSeen = true;
                                    Heavy = (P == "heavy");
                                } else if (P.consume_front("timeout=")) {
                                    if (P.getAsInteger(10, TimeoutMs))
                                        return false;   // malformed number
                                } else if (P.consume_front("traps=")) {
                                    // ':'-separated callee-name substrings.
                                    // NOT ',': opt's own pipeline parser
                                    // splits on top-level commas BEFORE this
                                    // callback runs, so a comma list arrives
                                    // truncated and the pass name fails to
                                    // parse. ',' is still accepted for a
                                    // single-symbol string's future-proofing.
                                    SmallVector<StringRef, 4> Syms;
                                    P.split(Syms, ':');
                                    for (StringRef Part : Syms) {
                                        SmallVector<StringRef, 2> Sub;
                                        Part.split(Sub, ',');
                                        for (StringRef S : Sub) {
                                            S = S.trim();
                                            if (!S.empty()) Traps.push_back(S.str());
                                        }
                                    }
                                    if (Traps.empty())
                                        return false;   // traps= with no names
                                } else if (P.consume_front("threads=")) {
                                    // threads=0 => one worker per HW thread
                                    if (P.getAsInteger(10, Threads))
                                        return false;   // malformed number
                                } else if (!P.empty())
                                    return false;       // unknown parameter
                            }
                        }
                        MPM.addPass(OraclePass(Vacuity, Heavy, TimeoutMs, Threads,
                                               LdEq, std::move(Traps), Frame,
                                               MV, MVSane));
                        return true;
                    }
                );
            }};
}
