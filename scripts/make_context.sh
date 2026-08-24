#!/usr/bin/env bash
# =============================================================================
# make_context.sh -- concatenate every source/script file into ONE context
# file (CONTEXT_ODESSY.md) with a per-file explanation header, so a fresh
# AI session (or collaborator) can load the whole system in one read.
# Run from repo root:  bash scripts/make_context.sh   ->  docs/CONTEXT_ODESSY.md
# =============================================================================
set -u
# self-locate: repo root is one level above scripts/
cd "$(dirname "${BASH_SOURCE[0]}")/.." || exit 1
OUT="docs/CONTEXT_ODESSY.md"

desc() {
  case "$1" in
    OraclePass/OraclePass.cpp)    echo "Module pass: 3-stage orchestration (serial discovery / parallel solve / serial kill), pass-string parser (vacuity;heavy;ldeq;timeout;threads;traps=a:b), Stage-3 branch folding with the Folded double-fold guard, per-function log assembly (THREADS-invariant)." ;;
    OraclePass/TrapDiscovery.h)   echo "Stage-1 interface. Hunter accepts llvm.ubsantrap/llvm.trap plus traps= named callees behind a divergence gate." ;;
    OraclePass/TrapDiscovery.cpp) echo "Hunter + Anchor v2 (one TrapJob PER INCOMING EDGE of a trap block; partial elimination of shared error blocks), Phase-0 dominating guards, Phase-0.5 llvm.assume, Phase-1 backward slice with boundary rules (loop-header phis/loads/GEPs/alien calls become free variables)." ;;
    OraclePass/TrapJob.h)         echo "The seam between pipeline stages: one fully-described trap site; thread-safety by construction (happens-before), Job.Index = global determinism key." ;;
    OraclePass/TrapSolver.h)      echo "Per-trap worker interface + SolverConfig (tier, timeout, ldeq)." ;;
    OraclePass/TrapSolver.cpp)    echo "Worker: RPO encode phase, heavy-tier fact phase (under the FactGate ticket), solve phase with tracked assertions, unsat cores, and the vacuity audit (context-alone re-check; contradictory context => refuse elimination)." ;;
    OraclePass/Z3Encoder.h)       echo "IR->Z3 translator state: memoized CFG reachability (hash-consed, O(E)), LDEQ same-BB load unification, FreeVars boundary list, public fact-plumbing bridges (assertRange/assertKnownBits/valueAsBV/apintToBV/assertRawFact)." ;;
    OraclePass/Z3Encoder.cpp)     echo "The encoder: instructions, i1 Bool/BV sort coercion, edge conditions, block reachability, overflow-intrinsic family, shifts; APInt->BV via decimal string (i128-safe)." ;;
    OraclePass/FactEncoder.h)     echo "Heavy-tier policy module interface: RM/RA/KB/LVI/SCEV/SCEVSYM fact sources over the free-variable boundary." ;;
    OraclePass/FactEncoder.cpp)   echo "Fact sources incl. SCEVSYM (symbolic trip counts: umin exact, symbolic-max BTC fallback for multi-exit loops, EXACT udiv translation, stride-s gate behind SCEV's nuw). All facts context-side, audit-labeled for cores. NEXT FRONTIER lives here: the FRAME fact source (heap-invariant super-analysis)." ;;
    OraclePass/Scheduler.h)       echo "FactGate ticket turnstile: serializes LVI/SCEV queries in discovery order => thread-safe AND deterministic; runJobs worker pool." ;;
    OraclePass/Scheduler.cpp)     echo "FactGate/runJobs implementation." ;;
    scripts/run_tests.sh)                 echo "Regression gate. Expected PASS=17/FAIL=6 (heavy/ldeq/stride tests under the light gate BY DESIGN; the two *_sat tripwires must PASS)." ;;
    scripts/swift_triage.sh)              echo "Swift static triage: emit-ir -> parse gate -> trap census -> oracle verdicts table (traps/anchored/unsat/sat/vacuous/ldeq)." ;;
    scripts/rust_triage.sh)               echo "Rust triage. panic=abort is LOAD-BEARING (unwind emits invoke, invisible to the CallInst hunter). traps=panic." ;;
    scripts/julia_triage.sh)              echo "Julia triage via code_llvm module dumps; shape probe prints first bounds sites; traps=bounds_error:boundserror (':' because opt eats commas)." ;;
    scripts/run_swift_perf.sh)            echo "The O3-sandwich perf harness: swiftc -O -emit-ir -> opt config -> opt O3 -> llc(-relocation-model=pic, probe-stack strip) -> link. base/base2x round-trip controls, output-equivalence soundness gate, shuffled reps, median-primary. EXTRA_SRCS for multi-file (CryptoSwift)." ;;
    scripts/run_zlib_perf.sh)             echo "C compile+runtime benchmark v5: specs none/signed/unsigned/both/anf, base/base2x/oracle, JOBS x THREADS parallel oracle stage, tmpfs corpora, shuffled reps; raw runs in CSV (median via make_perf_report.py)." ;;
    scripts/run_zlib.sh)                  echo "Isolated dev harness: zlib/deflate only, analysis+transform tables per (spec x opt), TIER=light|heavy." ;;
    scripts/run_zlib_signed.sh)           echo "Older signed-only zlib dev loop (superseded by run_zlib.sh)." ;;
    scripts/run_lz4_perf.sh)              echo "lz4 driver-based perf harness (LZ4_compress_HC over tmpfs corpus), TIMEOUT_MS=300 knob." ;;
    scripts/run_zstd_audit.sh)            echo "zstd whole-library elimination audit per TU x spec x {light,ldeq}; totals block = the 13.2% number; xxhash vacuous cluster documented in PAPER_FACTS." ;;
    scripts/run_matrix.sh)                echo "Sanitizer x benchmark opportunity matrix (C), median-of-N protocol." ;;
    scripts/run_matrix_native.sh)         echo "Native-language (Swift/Rust/Julia) opportunity matrix -- the checked-vs-unchecked ceilings." ;;
    scripts/run_timeout_sweep.sh)         echo "Per-query timeout sweep (the 52->50@100ms / cliff@1-3ms result)." ;;
    tools/make_perf_report.py)          echo "Median-primary report over perf CSVs (recomputes any statistic from the raw runs_s column)." ;;
    tools/make_matrix_report.py)        echo "Matrix report: median-primary + outlier audit + union columns (all-sanitizers, ANF)." ;;
    tools/plot_smt_latencies.py)        echo "SMT latency distributions by verdict class (SAT/UNSAT/UNKNOWN), log-x histograms + stats CSV." ;;
    tools/plot_matrics.py)              echo "Matrix visualization plots." ;;
    tools/gather_stats.py)              echo "Log aggregation helper." ;;
    tools/strip_traps.py)               echo "Trap-stripping utility for controls." ;;
    tools/patch_zlib_perf_anf.py)       echo "One-shot patcher that added the anf spec to run_zlib_perf.sh (historical)." ;;
    scripts/benchmark_commands.sh)        echo "Scratch: assorted benchmark invocations (historical)." ;;
    scripts/clone_missing_benchmarks.sh)  echo "Clones benchmark repos beside the ODeSSy checkout." ;;
    tools/test_z3.cpp)                  echo "Z3 linkage smoke test (historical)." ;;
    *)                            echo "(no description recorded)" ;;
  esac
}

{
  echo "# ODeSSy — full source context ($(git rev-parse --short HEAD 2>/dev/null || echo nogit), generated $(date +%F))"
  echo ""
  echo "Read order: README.md -> PAPER_FACTS.md -> HANDOFF.md -> this file."
  echo "Pass architecture: OraclePass.cpp (orchestration) -> TrapDiscovery (Stage 1)"
  echo "-> TrapSolver + Z3Encoder + FactEncoder (Stage 2) -> kill (Stage 3)."
  echo ""
} > "$OUT"

FILES=$(git ls-files '*.cpp' '*.h' '*.py' '*.sh' 2>/dev/null || \
        find OraclePass . -maxdepth 1 -name '*.cpp' -o -name '*.h' -o -name '*.py' -o -name '*.sh')
for f in $FILES; do
  [ -f "$f" ] || continue
  {
    echo ""
    echo "════════════════════════════════════════════════════════════════════"
    echo "## FILE: $f"
    echo "## $(desc "$f")"
    echo "════════════════════════════════════════════════════════════════════"
    echo '```'
    cat "$f"
    echo '```'
  } >> "$OUT"
done
echo "wrote $OUT ($(wc -l < "$OUT") lines, $(wc -c < "$OUT") bytes)"
