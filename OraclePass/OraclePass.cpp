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

// --- THE DEBUG FLAG ---
bool DebugOracle = false;

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

    OraclePass() = default;
    OraclePass(bool Vacuity, bool Heavy, unsigned TimeoutMs, unsigned NThreads,
               bool LdEq, std::vector<std::string> Traps = {},
               bool Frame = false)
        : VacuityCheck(Vacuity), HeavyMode(Heavy), QueryTimeoutMs(TimeoutMs),
          Threads(NThreads), LoadEq(LdEq), TrapCallees(std::move(Traps)),
          FrameMode(Frame) {}

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
               << (FrameMode ? " [frame]" : "");
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
                                               LdEq, std::move(Traps), Frame));
                        return true;
                    }
                );
            }};
}
