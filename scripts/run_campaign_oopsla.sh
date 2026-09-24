#!/usr/bin/env bash
# =============================================================================
# run_campaign_oopsla.sh -- the OOPSLA 2027 R1 server campaign (HANDOFF §10.56).
#
# ONE knob string and ONE budget for every row of the performance table:
#   PROD = oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=1>
# (no `vacuity` in timed runs; `ldeq` dropped per §10.55; Rust appends
# traps=panic). Every workload is the one the August campaign used, so rows
# are comparable with the recorded x86 numbers.
#
# Protocol, as in run_finals2_0818.sh: serial, socket-0 pinned, turbo off,
# 90 s cool-down between jobs, a 1-rep smoke gate before burning hours.
# ORDER = PRIORITY: if the node dies mid-run, the most important rows exist.
#
# Results are committed LOCALLY on the server (no credentials there) and
# fetched from the Mac over ssh.
#
# Usage (inside tmux):   bash scripts/run_campaign_oopsla.sh 2>&1 | tee campaign.log
#   ONLY='base64|lz77'   run only jobs whose name matches the regex
#   REPS=30              repetitions per timed config (August used 30)
# =============================================================================
set -u
cd /mydata/ODeSSy || { echo "FATAL: /mydata/ODeSSy missing"; exit 1; }
export GIT_TERMINAL_PROMPT=0
PIN="numactl --cpunodebind=0 --membind=0"
S="${S:-$(date +%m%d)}"
REPS="${REPS:-30}"
ONLY="${ONLY:-}"
PROD='oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=1>'
PROD_RS='oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=1;traps=panic>'
AUG='oracle-pass<heavy;ldeq;frame;timeout=300;threads=8>'   # the August config, for the anchor only
OUT="results/perf/campaign_$S"; mkdir -p "$OUT"

log()  { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; echo; }
want() { [ -z "$ONLY" ] || [[ "$1" =~ $ONLY ]]; }
want_opt() { [ -n "$ONLY" ] && [[ "$1" =~ $ONLY ]]; }   # opt-in jobs: never part of a plain run
save() { git add -A "$OUT" evaluation 2>/dev/null; git commit -q -m "server campaign $S: $1" 2>/dev/null || true; }
cool() { sleep 90; }
T0=$(date +%s)
elapsed() { echo "  [elapsed since start: $(( ($(date +%s) - T0) / 60 )) min]"; }

# identity for the local commits (home is local on this node, no ~/.gitconfig)
git config user.name  >/dev/null || git config user.name  "Amirali Ebrahimzadeh"
git config user.email >/dev/null || git config user.email "ebrahimzadeh.amirali@gmail.com"

# ---------------------------------------------------------------- environment
log "ENV"
command -v numactl >/dev/null || { echo "FATAL: numactl missing"; exit 1; }
case "$(command -v clang)" in */swift-toolchain/*) ;; *) echo "FATAL: clang is not the Swift toolchain's"; exit 1;; esac
[ "$(command -v opt)" = /opt/llvm/bin/opt ] || { echo "FATAL: opt is not /opt/llvm/bin/opt"; exit 1; }
[ "$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)" = 1 ] || { echo "FATAL: turbo is ON"; exit 1; }
bash scripts/check_env.sh | tee "$OUT/check_env.txt"
grep -q '^DIFF' "$OUT/check_env.txt" && { echo "FATAL: environment DIFF (see above)"; exit 1; }
git rev-parse HEAD | tee "$OUT/commit.txt"

# ------------------------------------------------------------------ workloads
# Created ONCE and never regenerated mid-campaign; checksummed and copied to
# /proj so every row of this campaign used the identical bytes.
log "WORKLOADS"
mkdir -p perf_test
[ -s perf_test/sha_input.bin ]  || head -c 1048576 /dev/urandom > perf_test/sha_input.bin
[ -s perf_test/utf8_input.txt ] || python3 -c "open('perf_test/utf8_input.txt','wb').write(('汉字漢字テキストκείμενο'*40000).encode())"
md5sum perf_test/sha_input.bin perf_test/utf8_input.txt | tee "$OUT/workloads.md5"
cp -n perf_test/sha_input.bin perf_test/utf8_input.txt /proj/odessy-PG0/odessy-preserve/ 2>/dev/null || true

swift() {   # name  kernel  runargs  passes  tag  [extra env...]
  local k=$1 kern=$2 args=$3 passes=$4 tag=$5; shift 5
  [ "${FORCE:-0}" = 1 ] || want "$k" || return 0   # FORCE: caller already filtered (opt-in jobs)
  log "$k [$tag]  runargs='$args'"
  $PIN env KERNEL="$kern" RUNARGS="$args" REPS="$REPS" ORACLE_PASSES="$passes" "$@" \
    bash scripts/run_swift_perf.sh 2>&1 | tee "$OUT/${k}_${tag}.log"
  save "$k $tag"; elapsed; cool
}

# ---------------------------------------------------------------- smoke gate
log "SMOKE: sha256 REPS=1 under PROD must pass the byte-identity gate"
$PIN env KERNEL=native_bench/sha256.swift RUNARGS="600 perf_test/sha_input.bin" REPS=1 \
  ORACLE_PASSES="$PROD" bash scripts/run_swift_perf.sh 2>&1 | tee "$OUT/smoke_sha256.log"
grep -q 'byte-identical' "$OUT/smoke_sha256.log" || { echo "FATAL: smoke gate failed -- STOP"; exit 1; }

# ------------------------------------------------------- 1. instrument anchor
# The August configuration on the August kernel. Must land near the recorded
# +8.8% (PAPER_FACTS §8). This separates "the machine changed" from "the knobs
# changed" before any PROD number is read.
swift sha256 native_bench/sha256.swift "600 perf_test/sha_input.bin" "$AUG" anchor-august

# ------------------------------------------------ 2. Swift kernels under PROD
swift sha256  native_bench/sha256.swift  "600 perf_test/sha_input.bin"   "$PROD" prod
swift base64  native_bench/base64.swift  "3225 perf_test/sha_input.bin"  "$PROD" prod
swift lz77    native_bench/lz77.swift    "2 perf_test/sha_input.bin"     "$PROD" prod
swift crc32   native_bench/crc32.swift   "3703 perf_test/sha_input.bin"  "$PROD" prod
swift adler32 native_bench/adler32.swift "7100 perf_test/sha_input.bin"  "$PROD" prod
swift sha1    native_bench/sha1.swift    "900 perf_test/sha_input.bin"   "$PROD" prod
swift md5     native_bench/md5.swift     "1200 perf_test/sha_input.bin"  "$PROD" prod
swift utf8    native_bench/utf8.swift    "1500 perf_test/utf8_input.txt" "$PROD" prod

# ------------------------------------- 3. Julia designated arms (no pass: JIT)
for a in gemm_arms lz77_mv_arms matmul_mv_arms sha256_arms sha256_mv_arms; do
  want "jl_$a" || continue
  log "julia jl_$a"
  $PIN julia "native_bench/jl_$a.jl" 2>&1 | tee "$OUT/jl_${a}.log"
  save "jl_$a"; elapsed; cool
done

# ------------------------------------------------------------ 4. CryptoSwift
if want cryptoswift; then
  mkdir -p /tmp/csdrv && cp native_bench/cryptoswift_main.swift /tmp/csdrv/main.swift
  swift cryptoswift /tmp/csdrv/main.swift "300 perf_test/sha_input.bin" "$PROD" prod \
    EXTRA_SRCS="$(find /mydata/CryptoSwift/Sources/CryptoSwift -name '*.swift' | tr '\n' ' ')"
fi

# ------------------------------------------------------------------- 5. Rust
for r in "lz77_bench 20" "matmul_bench 4"; do
  set -- $r; k=$1; args=$2
  want "rs_$k" || continue
  log "rust $k  runargs='$args'"
  $PIN env KERNEL="native_bench/$k.rs" RUNARGS="$args" REPS="$REPS" ORACLE_PASSES="$PROD_RS" \
    bash scripts/run_rust_perf.sh 2>&1 | tee "$OUT/rs_${k}.log"
  save "rs_$k"; elapsed; cool
done

# ------------------------------------------------------------------- 6. zstd
# JOBS=1: per-TU oracle runs are serial so no solver query races another for
# the CPU at the 10 s budget (verdicts must not depend on scheduling).
if want zstd; then
  log "zstd (signed spec, whole library)"
  $PIN env REPS="$REPS" JOBS=1 CORPUS_MB=512 ORACLE_PASSES="$PROD" \
    bash scripts/run_zstd_perf.sh 2>&1 | tee "$OUT/zstd.log"
  save "zstd"; elapsed; cool
fi

# ----------------------------------------------- 7. zlib and lz4 (long, last)
if want zlib; then
  log "zlib TIER=prod"
  # TIMEOUT_SECS is the harness's wall-clock cap per compile; 600 s killed
  # trees.c under PROD (serial, 10 s per query, all retries). Compile time is
  # not what zlib measures, so lift the cap.
  $PIN env SPECS="none both anf" RUNS=20 SIZES="8 64 256" TIER=prod TIMEOUT_SECS="${ZLIB_TIMEOUT_SECS:-14400}" \
    bash scripts/run_zlib_perf.sh 2>&1 | tee "$OUT/zlib.log"
  save "zlib"; elapsed; cool
fi
if want lz4; then
  log "lz4 (PROD; the harness previously ran the LIGHT tier -- new data, not a reproduction)"
  $PIN env RUNS=40 ORACLE_PASSES="$PROD,simplifycfg,adce,verify" \
    bash scripts/run_lz4_perf.sh 2>&1 | tee "$OUT/lz4.log"
  save "lz4"; elapsed
fi

# ------------------------------------ 8. regression diagnosis (OPT-IN ONLY)
# Swift lz77 (0.830x) and CryptoSwift (0.928x) regressed under PROD on Sep 24.
# Rerun each with one mechanism removed to attribute the slowdown:
#   nomv  = PROD without loop versioning (mv;narrow): does versioning cause it?
#   noind = PROD without induction: do the extra induction proofs cause it?
# Run with e.g.  ONLY='abl_' bash scripts/run_campaign_oopsla.sh
NOMV='oracle-pass<heavy;frame;ind;timeout=10000;threads=1>'
NOIND='oracle-pass<heavy;frame;mv;narrow;timeout=10000;threads=1>'
for v in nomv noind; do
  P="$NOMV"; [ $v = noind ] && P="$NOIND"
  want_opt "abl_lz77_$v" && FORCE=1 swift lz77 native_bench/lz77.swift "2 perf_test/sha_input.bin" "$P" "abl-$v"
  if want_opt "abl_cryptoswift_$v"; then
    mkdir -p /tmp/csdrv && cp native_bench/cryptoswift_main.swift /tmp/csdrv/main.swift
    FORCE=1 swift cryptoswift /tmp/csdrv/main.swift "300 perf_test/sha_input.bin" "$P" "abl-$v" \
      EXTRA_SRCS="$(find /mydata/CryptoSwift/Sources/CryptoSwift -name '*.swift' | tr '\n' ' ')"
  fi
done

# ---------------------- 9. in-pipeline ceilings + PROD replicate (OPT-IN ONLY)
# CEILING=1 adds an -Ounchecked build through the SAME sandwich as base, so the
# ceiling shares the speedup's denominator. The August ceilings used plain
# `swiftc -O`, which differs from the harness baseline by 0.97x-1.24x
# (Sep 24), so they cannot be divided into in-harness speedups. Each job also
# re-times base/base2x/oracle: an independent replicate of the PROD row.
# Run with  ONLY='ceil_' bash scripts/run_campaign_oopsla.sh
for spec in "sha256:600 perf_test/sha_input.bin" "base64:3225 perf_test/sha_input.bin" \
            "lz77:2 perf_test/sha_input.bin" "crc32:3703 perf_test/sha_input.bin" \
            "adler32:7100 perf_test/sha_input.bin" "sha1:900 perf_test/sha_input.bin" \
            "md5:1200 perf_test/sha_input.bin" "utf8:1500 perf_test/utf8_input.txt"; do
  k=${spec%%:*}; args=${spec#*:}
  want_opt "ceil_$k" && FORCE=1 swift "$k" "native_bench/$k.swift" "$args" "$PROD" ceil CEILING=1
done
if want_opt ceil_cryptoswift; then
  mkdir -p /tmp/csdrv && cp native_bench/cryptoswift_main.swift /tmp/csdrv/main.swift
  FORCE=1 swift cryptoswift /tmp/csdrv/main.swift "300 perf_test/sha_input.bin" "$PROD" ceil CEILING=1 \
    EXTRA_SRCS="$(find /mydata/CryptoSwift/Sources/CryptoSwift -name '*.swift' | tr '\n' ' ')"
fi

log "CAMPAIGN $S DONE"; elapsed
