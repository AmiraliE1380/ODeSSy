#!/usr/bin/env bash
# =============================================================================
# run_guard_ablation.sh -- RQ2 guard-synthesis ablation, phase 1 (HANDOFF §10.66).
# Which component of guard synthesis pays: the synthesized guard, or ODeSSy's
# proofs inside the guarded copy?
#
# Arms (every arm ends in the same -O3 sandwich as the runtime campaign):
#   mv       ODeSSy synthesizes the guard, clones, removes proven fast-copy checks
#   keep     ODeSSy synthesizes the same guard and clones, but leaves every
#            fast-copy check in place (mv-keep): -O3 must remove them itself
#   irce_od  LLVM IRCE versions the loop, then ODeSSy without guard synthesis
#   irce_o3  LLVM IRCE versions the loop, then -O3 only
#   (base = -O3 alone comes with every harness run)
#
# Part S (static, x86): every check tagged and followed through each arm by
#   run_guard_competitors.sh, on IR emitted on this machine for all 17 kernels.
# Part R (runtime): Swift base64, Swift crc32, Rust matmul -- the kernels whose
#   speedup comes from guard synthesis and whose pass output can be built.
#   Julia rows are phase 2 (proxy copies built from Part S's per-check results).
#
# Usage (inside tmux, on the timing node):
#   bash scripts/run_guard_ablation.sh 2>&1 | tee guard_ablation.log
# Knobs: ONLY=S|R (one part)  REPS=30  S=<date tag, default mmdd>
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
S="${S:-$(date +%m%d)}"; REPS="${REPS:-30}"; ONLY="${ONLY:-}"
PIN="numactl --cpunodebind=0 --membind=0"; command -v numactl >/dev/null || PIN=""
PROD='heavy;frame;ind;mv;narrow;timeout=10000;threads=1'
NOMV='heavy;frame;ind;timeout=10000;threads=1'
OUTR="results/perf/guard_ablation_$S"; OUTS="results/static/guard_ablation_$S"
IR="$OUTS/ir"; mkdir -p "$OUTR" "$OUTS" "$IR"
log() { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; }
save() { git add -A "$OUTR" "$OUTS" evaluation 2>/dev/null; git reset -q "$IR" 2>/dev/null; git commit -q -m "guard ablation $S: $1" 2>/dev/null || true; }
git config user.email >/dev/null || git config user.email "ebrahimzadeh.amirali@gmail.com"
git config user.name  >/dev/null || git config user.name  "Amirali Ebrahimzadeh"

log "ENV"
[ -z "$PIN" ] || [ "$(cat /sys/devices/system/cpu/intel_pstate/no_turbo 2>/dev/null)" = 1 ] || { echo "FATAL: turbo is ON"; exit 1; }
( cd build && ninja >/dev/null ) || { echo "FATAL: pass build failed"; exit 1; }
git rev-parse HEAD | tee "$OUTS/commit.txt"

# ------------------------------------------------------------ Part S: static
if [ -z "$ONLY" ] || [ "$ONLY" = S ]; then
  log "S: emit x86 IR for the 17 kernels"
  for k in adler32 base64 crc32 lz77 md5 nbody sha1 sha256 utf8; do
    swiftc -O -wmo -emit-ir "native_bench/$k.swift" -o "$IR/$k.ll" || { echo "FATAL: swiftc $k"; exit 1; }
  done
  RFLAGS="-O -C overflow-checks=on -C panic=abort -C debuginfo=0 -C codegen-units=1"
  for k in lz77 matmul; do
    mkdir -p "$IR/rust"
    rustc $RFLAGS --emit=llvm-ir -o "$IR/rust/$k.ll" "native_bench/${k}_bench.rs" || { echo "FATAL: rustc $k"; exit 1; }
  done
  mkdir -p "$IR/julia"
  for k in jl_filt_dsp jl_gemm_base jl_poly lz77 matmul sha256; do
    bash scripts/julia_triage.sh "native_bench/$k.jl" >/dev/null 2>&1
    cp "logs/julia_triage/$k.ll" "$IR/julia/$k.ll" || { echo "FATAL: julia IR $k"; exit 1; }
  done
  log "S: five pipelines on the tagged checks"
  OUT="$OUTS" bash scripts/run_guard_competitors.sh "$IR"/*.ll "$IR"/rust/*.ll "$IR"/julia/*.ll
  save "static"
fi

# ----------------------------------------------------------- Part R: runtime
if [ -z "$ONLY" ] || [ "$ONLY" = R ]; then
  sw() {  # kernel runargs arm passes
    log "R: $1 [$3]"
    $PIN env KERNEL="native_bench/$1.swift" RUNARGS="$2" REPS="$REPS" ORACLE_PASSES="$4" \
      bash scripts/run_swift_perf.sh 2>&1 | tee "$OUTR/$1_$3.log"
    save "$1 $3"; sleep 90
  }
  for k in base64 crc32; do
    case $k in base64) A="3225 perf_test/sha_input.bin";; crc32) A="3703 perf_test/sha_input.bin";; esac
    sw $k "$A" mv      "oracle-pass<$PROD>"
    sw $k "$A" keep    "oracle-pass<$PROD;mv-keep>"
    sw $k "$A" irce_od "function(irce),oracle-pass<$NOMV>"
    sw $k "$A" irce_o3 "function(irce)"
  done
  # Rust: two arms per harness run (oracle, oracle2)
  log "R: rust matmul [mv | keep]"
  $PIN env KERNEL=native_bench/matmul_bench.rs RUNARGS=4 REPS="$REPS" \
    ORACLE_PASSES="oracle-pass<$PROD;traps=panic>" ORACLE_PASSES2="oracle-pass<$PROD;mv-keep;traps=panic>" \
    bash scripts/run_rust_perf.sh 2>&1 | tee "$OUTR/rs_matmul_mv_keep.log"
  save "rust matmul mv keep"; sleep 90
  log "R: rust matmul [irce_od | irce_o3]"
  $PIN env KERNEL=native_bench/matmul_bench.rs RUNARGS=4 REPS="$REPS" \
    ORACLE_PASSES="function(irce),oracle-pass<$NOMV;traps=panic>" ORACLE_PASSES2="function(irce)" \
    bash scripts/run_rust_perf.sh 2>&1 | tee "$OUTR/rs_matmul_irce.log"
  save "rust matmul irce"
fi
log "GUARD ABLATION $S DONE"
