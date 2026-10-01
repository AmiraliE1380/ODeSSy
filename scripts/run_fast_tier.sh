#!/usr/bin/env bash
# =============================================================================
# run_fast_tier.sh -- runtime of the Fast configuration (HANDOFF §10.70).
# Fast = Thorough without inductive encoding, at 10 ms per query on 10 threads:
#   oracle-pass<heavy;frame;mv;narrow;timeout=10;threads=10>
# Kernels: those where Fast keeps every Thorough proof in tab:compile
# (adler32, sha1, md5, Rust matmul). Same harnesses, workloads, REPS and
# sandwich as the runtime campaign; only ORACLE_PASSES differs. The harness
# prints how many checks each build removes, so a timing-dependent change in
# Fast's proofs (10 ms budget) is visible in the log.
# Usage (tmux, timing node): bash scripts/run_fast_tier.sh 2>&1 | tee fast_tier.log
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
S="${S:-$(date +%m%d)}"; REPS="${REPS:-30}"
FAST='heavy;frame;mv;narrow;timeout=10;threads=10'
OUT="results/perf/fast_tier_$S"; mkdir -p "$OUT"
PIN="numactl --cpunodebind=0 --membind=0"
log()  { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; }
save() { git add -A "$OUT" 2>/dev/null; git commit -q -m "fast tier $S: $1" 2>/dev/null || true; }
git config user.email >/dev/null || git config user.email "ebrahimzadeh.amirali@gmail.com"
git config user.name  >/dev/null || git config user.name  "Amirali Ebrahimzadeh"

log "ENV"
command -v numactl >/dev/null || { echo "FATAL: numactl missing"; exit 1; }
[ "$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)" = 1 ] || { echo "FATAL: turbo is ON"; exit 1; }
[ "$(command -v opt)" = /opt/llvm/bin/opt ] || { echo "FATAL: opt is not /opt/llvm/bin/opt (PATH?)"; exit 1; }
swiftc --version 2>&1 | grep -q "Swift version 6.3.3" || { echo "FATAL: swiftc is not 6.3.3 (PATH?)"; exit 1; }
rustc --version | grep -q "1.97" || { echo "FATAL: rustc is not 1.97 (restore ~/.cargo, ~/.rustup)"; exit 1; }
[ -s perf_test/sha_input.bin ] || { echo "FATAL: perf_test/sha_input.bin missing (is /mydata mounted?)"; exit 1; }
( cd build && ninja >/dev/null ) || { echo "FATAL: pass build failed"; exit 1; }
git rev-parse HEAD | tee "$OUT/commit.txt"

for spec in "adler32|7100 perf_test/sha_input.bin" "sha1|900 perf_test/sha_input.bin" \
            "md5|1200 perf_test/sha_input.bin"; do
  k=${spec%%|*}; a=${spec#*|}
  log "$k [fast]"
  $PIN env KERNEL="native_bench/$k.swift" RUNARGS="$a" REPS="$REPS" ORACLE_PASSES="oracle-pass<$FAST>" \
    bash scripts/run_swift_perf.sh 2>&1 | tee "$OUT/${k}_fast.log"
  save "$k"; sleep 90
done
log "rust matmul [fast]"
$PIN env KERNEL=native_bench/matmul_bench.rs RUNARGS=4 REPS="$REPS" ORACLE_PASSES="oracle-pass<$FAST;traps=panic>" \
  bash scripts/run_rust_perf.sh 2>&1 | tee "$OUT/rs_matmul_fast.log"
save "rust matmul"
log "FAST TIER $S DONE"
