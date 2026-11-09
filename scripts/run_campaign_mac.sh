#!/usr/bin/env bash
# =============================================================================
# run_campaign_mac.sh -- the M-series counterpart of the x86 campaign 1107
# (PAPER_FACTS §11.28): the same rows, the same PROD configuration
# (heavy;frame;ind;mv;narrow;timeout=10000;threads=1), each ceiling measured
# in the same run. Unattended: start once, plugged in, under caffeinate.
#
# Order = priority (the most important rows exist even if the night is short):
#   Swift kernels and CryptoSwift (CEILING=1: speedup and ceiling in one run),
#   Rust (unchecked twin built by the harness), Julia arms (ceilings built in),
#   zstd (CEILING=1), zlib last (long; its `none` spec is the ceiling).
# Every job's output check (byte-identical outputs) is the harness's own.
# Results: results/perf/mac_campaign_<S>/, committed and pushed at the end.
#
# Usage:  caffeinate -dimsu bash scripts/run_campaign_mac.sh > /tmp/mac_campaign.log 2>&1 &
#   S=<tag> (default mmdd)  REPS=30  ONLY=<regex of job names>  NOCOMMIT=1 (smoke tests)
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
S="${S:-$(date +%m%d)}"; REPS="${REPS:-30}"; ONLY="${ONLY:-}"
OUT="results/perf/mac_campaign_$S"; mkdir -p "$OUT"
PROD='oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=1>'
PROD_RS='oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=1;traps=panic>'
want() { [ -z "$ONLY" ] || [[ "$1" =~ $ONLY ]]; }
log()  { echo; echo "=== [$(date '+%F %H:%M:%S')] $* ==="; }
cool() { sleep 60; }
T0=$(date +%s)

log "ENV"
uname -a; sysctl -n machdep.cpu.brand_string 2>/dev/null
git rev-parse HEAD | tee "$OUT/commit.txt"
( cd build && ninja >/dev/null ) || { echo "FATAL: pass build failed"; exit 1; }
bash scripts/run_tests.sh 2>&1 | grep -E "PASS=" | tee "$OUT/tests.txt"
grep -q "PASS=30 FAIL=12" "$OUT/tests.txt" || { echo "FATAL: tests changed"; exit 1; }

mkdir -p perf_test
[ -s perf_test/sha_input.bin ]  || head -c 1048576 /dev/urandom > perf_test/sha_input.bin
[ -s perf_test/utf8_input.txt ] || python3 -c "open('perf_test/utf8_input.txt','wb').write(('汉字漢字テキストκείμενο'*40000).encode())"
md5 -q perf_test/sha_input.bin perf_test/utf8_input.txt | tee "$OUT/workloads.md5"

swift() {   # name kernel runargs [extra env...]
  local k=$1 kern=$2 args=$3; shift 3
  want "$k" || return 0
  log "swift $k"
  env KERNEL="$kern" RUNARGS="$args" REPS="$REPS" ORACLE_PASSES="$PROD" CEILING=1 "$@" \
    bash scripts/run_swift_perf.sh > "$OUT/${k}.log" 2>&1
  grep -E "^speedup|^ceiling|gate" "$OUT/${k}.log" | tail -3; cool
}
swift sha256  native_bench/sha256.swift  "600 perf_test/sha_input.bin"
swift base64  native_bench/base64.swift  "3225 perf_test/sha_input.bin"
swift crc32   native_bench/crc32.swift   "3703 perf_test/sha_input.bin"
swift adler32 native_bench/adler32.swift "7100 perf_test/sha_input.bin"
swift utf8    native_bench/utf8.swift    "1500 perf_test/utf8_input.txt"
swift md5     native_bench/md5.swift     "1200 perf_test/sha_input.bin"
swift sha1    native_bench/sha1.swift    "900 perf_test/sha_input.bin"
swift lz77    native_bench/lz77.swift    "2 perf_test/sha_input.bin"
if want cryptoswift; then
  D="$(mktemp -d)"; cp native_bench/cryptoswift_main.swift "$D/main.swift"
  swift cryptoswift "$D/main.swift" "300 perf_test/sha_input.bin" \
    EXTRA_SRCS="$(find ../CryptoSwift/Sources/CryptoSwift -name '*.swift' | tr '\n' ' ')"
fi

for r in "lz77_bench 20" "matmul_bench 4"; do
  set -- $r; k=$1; args=$2
  want "rs_$k" || continue
  log "rust $k"
  env KERNEL="native_bench/$k.rs" RUNARGS="$args" REPS="$REPS" ORACLE_PASSES="$PROD_RS" \
    bash scripts/run_rust_perf.sh > "$OUT/rs_${k}.log" 2>&1
  grep -E "vs base|ceiling" "$OUT/rs_${k}.log" | tail -2; cool
done

for a in gemm_arms lz77_mv_arms matmul_mv_arms sha256_mv_arms; do
  want "jl_$a" || continue
  log "julia jl_$a"
  julia "native_bench/jl_$a.jl" > "$OUT/jl_${a}.log" 2>&1
  tail -4 "$OUT/jl_${a}.log"; cool
done

if want zstd; then
  log "zstd"
  env REPS="$REPS" JOBS=1 CORPUS_MB=512 CEILING=1 ORACLE_PASSES="$PROD" \
    bash scripts/run_zstd_perf.sh > "$OUT/zstd.log" 2>&1
  grep -E "speedup|ceiling" "$OUT/zstd.log" | tail -4; cool
fi
if want zlib; then
  log "zlib"
  env SPECS="none both" RUNS=20 SIZES="8 64 256" TIER=prod TIMEOUT_SECS=14400 \
    bash scripts/run_zlib_perf.sh > "$OUT/zlib.log" 2>&1
  tail -12 "$OUT/zlib.log"
fi

log "MAC CAMPAIGN $S DONE ($(( ($(date +%s) - T0) / 60 )) min)"
[ "${NOCOMMIT:-0}" = 1 ] || git add "$OUT" && [ "${NOCOMMIT:-0}" = 1 ] || git commit -q -m "M-series campaign $S: rows of the speedup table, PROD at 1 thread, ceilings in the same runs

Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>" && git push -q && git log --oneline -1
