#!/usr/bin/env bash
# =============================================================================
# run_fast_tier_all.sh -- Fast configuration on every benchmark (Nov 12 2026).
# Stage 1 (static): Fast proofs per module on every benchmark of the runtime
#   table (run_compile_cost.sh, CONFIGS="o3 fast").
# Stage 2 (runtime): the runtime harnesses under Fast for every non-Julia
#   benchmark where stage 1 found at least one Fast proof. Julia rows are
#   hand-transformed copies and are not built here; their verdicts are in
#   stage 1. Short benchmarks first; results are committed after each one.
# Fast = oracle-pass<heavy;frame;mv;narrow;timeout=10;threads=10>
# Usage (tmux, timing node): bash scripts/run_fast_tier_all.sh 2>&1 | tee /mydata/fast_all.log
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
S="${S:-$(date +%m%d)}"; REPS="${REPS:-30}"; COOL="${COOL:-90}"
FAST='heavy;frame;mv;narrow;timeout=10;threads=10'
ST="results/static/compile_cost_fast_$S"; OUT="results/perf/fast_tier_all_$S"; mkdir -p "$OUT"
PIN="numactl --cpunodebind=0 --membind=0"
log()  { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; }
save() { git add -A "$OUT" "$ST/modules.csv" "$ST/table.txt" "$ST/logs" 2>/dev/null; git commit -q -m "fast tier all $S: $1" 2>/dev/null || true; }

log "ENV"
[ "$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)" = 1 ] || { echo "FATAL: turbo is ON"; exit 1; }
[ "$(command -v opt)" = /opt/llvm/bin/opt ] || { echo "FATAL: opt is not /opt/llvm/bin/opt (PATH?)"; exit 1; }
( cd build && ninja >/dev/null ) || { echo "FATAL: pass build failed"; exit 1; }
git rev-parse HEAD | tee "$OUT/commit.txt"

log "STAGE 1: Fast verdicts (static)"
CONFIGS="o3 fast" FAST_REPS="${FAST_REPS:-3}" OUT="$ST" bash scripts/run_compile_cost.sh 2>&1 | tee "$OUT/stage1.log"
python3 - "$ST/modules.csv" <<'PY' | tee "$OUT/fast_proofs.txt"
import csv, sys, collections
p = collections.OrderedDict(); c = collections.Counter()
for r in csv.DictReader(open(sys.argv[1])):
    p[r["bench"]] = p.get(r["bench"], 0) + int(r["fast_proofs"] or 0); c[r["bench"]] += int(r["checks"] or 0)
for b, n in p.items(): print(b, n, c[b])
PY
save "stage 1 verdicts"
has() { awk -v b="$1" '$1==b && $2>0 {f=1} END{exit !f}' "$OUT/fast_proofs.txt"; }

log "STAGE 2: runtime under Fast"
swift() { # name kernel runargs [extra env...]
  local k=$1 kern=$2 args=$3; shift 3
  log "$k [fast]"
  $PIN env KERNEL="$kern" RUNARGS="$args" REPS="$REPS" ORACLE_PASSES="oracle-pass<$FAST>" "$@" \
    bash scripts/run_swift_perf.sh 2>&1 | tee "$OUT/${k}_fast.log"
  save "$k"; sleep "$COOL"
}
for spec in "sha256|600 perf_test/sha_input.bin" "base64|3225 perf_test/sha_input.bin" \
            "lz77|2 perf_test/sha_input.bin" "crc32|3703 perf_test/sha_input.bin" \
            "adler32|7100 perf_test/sha_input.bin" "sha1|900 perf_test/sha_input.bin" \
            "md5|1200 perf_test/sha_input.bin" "utf8|1500 perf_test/utf8_input.txt"; do
  k=${spec%%|*}; a=${spec#*|}
  has "$k" && swift "$k" "native_bench/$k.swift" "$a"
done
for r in "lz77_bench 20" "matmul_bench 4"; do
  set -- $r; k=$1; a=$2
  has "rs_$k" || continue
  log "rust $k [fast]"
  $PIN env KERNEL="native_bench/$k.rs" RUNARGS="$a" REPS="$REPS" ORACLE_PASSES="oracle-pass<$FAST;traps=panic>" \
    bash scripts/run_rust_perf.sh 2>&1 | tee "$OUT/rs_${k}_fast.log"
  save "rs_$k"; sleep "$COOL"
done
if has zstd; then
  log "zstd [fast]"
  $PIN env REPS="$REPS" JOBS=1 CORPUS_MB=512 ORACLE_PASSES="oracle-pass<$FAST>" \
    bash scripts/run_zstd_perf.sh 2>&1 | tee "$OUT/zstd_fast.log"
  save zstd; sleep "$COOL"
fi
if has cryptoswift; then
  mkdir -p /tmp/csdrv && cp native_bench/cryptoswift_main.swift /tmp/csdrv/main.swift
  swift cryptoswift /tmp/csdrv/main.swift "300 perf_test/sha_input.bin" \
    EXTRA_SRCS="$(find /mydata/CryptoSwift/Sources/CryptoSwift -name '*.swift' | tr '\n' ' ')"
fi
if has zlib; then
  log "zlib [fast]"
  $PIN env SPECS="none both anf" RUNS=20 SIZES="8 64 256" TIER=fast TIMEOUT_SECS=14400 \
    bash scripts/run_zlib_perf.sh 2>&1 | tee "$OUT/zlib_fast.log"
  save zlib
fi
log "FAST TIER ALL $S DONE"
