#!/usr/bin/env bash
# =============================================================================
# run_lz4_perf.sh -- lz4 RUNTIME-RECOVERY experiment (zlib perf v5 protocol).
#
# Second runtime target from the robust matrix: lz4 ANF ceiling +3.2-3.4%
# consistent across median/min/avg, 282 traps, only ~2 hot TUs.
#
# Design: the TIMED KERNEL is a tiny driver (below, compiled UNSANITIZED
# -O2, the minigzip role) calling LZ4_compress_HC over the corpus; the
# LIBRARY TUs (lz4.c, lz4hc.c -- where the hot loops and traps live) go
# through the pipeline per config:
#   base   : clang -O3                          -> .o
#   base2x : clang -O3 -> opt default<O3>       -> .o   (fair control)
#   oracle : clang -O3 -> oracle+simplifycfg+adce+verify -> opt default<O3> -> .o
# Protocol: shuffled interleaved reps, min+avg+raw CSV (median offline),
# tmpfs corpus, $PIN on timed runs. THIS IS A TIMING RUN: stabilize first
# (governor performance + no_turbo).
#
# Knobs : RUNS=40 CORPUS_MB=64 HC_LEVEL=9 ITERS=3 SPECS="none anf"
#         JOBS/THREADS for the oracle stage; LZ4=/path (default beside repo)
# Out   : evaluation/perf_lz4.csv  (make_perf_report.py compatible:
#         python3 make_perf_report.py evaluation/perf_lz4.csv evaluation/perf_lz4_report.csv)
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
LZ4="${LZ4:-$PL_ROOT/lz4}"
RUNS=${RUNS:-40}
CORPUS_MB=${CORPUS_MB:-64}
HC_LEVEL=${HC_LEVEL:-9}
ITERS=${ITERS:-3}
SPECS=${SPECS:-"none anf"}
THREADS=${THREADS:-8}
TIMEOUT_MS=${TIMEOUT_MS:-300}
COOLDOWN=${COOLDOWN:-45}
W="$ROOT/perf_lz4_test"; rm -rf "$W"; mkdir -p "$W" "$ROOT/evaluation" logs/compilations
CSV="$ROOT/evaluation/perf_lz4.csv"
SRCS="lz4 lz4hc"
INLINE_FLAGS=(-finline-functions -mllvm -inline-threshold=100000
  -mllvm -inlinehint-threshold=100000 -mllvm -inlinecold-threshold=100000)

if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else PIN=""; fi
fi
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }
san_flags() {
  case "$1" in
    none) echo "" ;;
    # lz4's all-non-firing (robust matrix): unsigned FIRED on lz4, so it
    # is excluded; implicit survived and is included.
    anf)  echo "-fsanitize=signed-integer-overflow,integer-divide-by-zero,shift,bounds,implicit-conversion -fsanitize-trap=signed-integer-overflow,integer-divide-by-zero,shift,bounds,implicit-conversion" ;;
    signed) echo "-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow" ;;
    *) echo "__BAD__" ;;
  esac
}

cd "$ROOT" || exit 1
( cd build && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }

# ---- driver (unsanitized; identical binary role to minigzip) ----
cat > "$W/lz4_driver.c" <<'CEOF'
#include "lz4hc.h"
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char **argv) {
    if (argc < 4) { fprintf(stderr, "usage: driver file level iters\n"); return 2; }
    FILE *f = fopen(argv[1], "rb");
    if (!f) return 2;
    fseek(f, 0, SEEK_END); long n = ftell(f); fseek(f, 0, SEEK_SET);
    char *src = malloc(n);
    if (fread(src, 1, n, f) != (size_t)n) return 2;
    fclose(f);
    int level = atoi(argv[2]), iters = atoi(argv[3]);
    const long CHUNK = 4 << 20;
    char *dst = malloc(LZ4_compressBound(CHUNK));
    long long total = 0;
    for (int it = 0; it < iters; ++it)
        for (long off = 0; off < n; off += CHUNK) {
            long len = (n - off < CHUNK) ? n - off : CHUNK;
            total += LZ4_compress_HC(src + off, dst, (int)len,
                                     LZ4_compressBound(CHUNK), level);
        }
    printf("%lld\n", total);
    return 0;
}
CEOF

# ---- corpus in tmpfs ----
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_lz4perf.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
CORP="$CORPDIR/corpus"
cat "$PL_ROOT"/zlib/*.c "$PL_ROOT"/zlib/*.h "$ROOT"/OraclePass/*.cpp > "$CORP" 2>/dev/null
[ -s "$CORP" ] || { echo "[FATAL] empty corpus seed"; exit 1; }
while [ "$(stat -c%s "$CORP")" -lt $((CORPUS_MB*1024*1024)) ]; do
  cat "$CORP" "$CORP" > "$CORP.t" && mv "$CORP.t" "$CORP"
done
truncate -s "${CORPUS_MB}M" "$CORP"

# ---- PHASE A: build every (spec x config) binary ----
declare -A B_PATH TRAPS_IN TRAPS_FIN ORACLE_S B_BYTES B_TEXT
KEYS=()
echo "==== PHASE A: builds (specs: $SPECS) ===="
clang -O2 -I"$LZ4/lib" -c "$W/lz4_driver.c" -o "$W/driver.o" || exit 1
for spec in $SPECS; do
  FL=$(san_flags "$spec"); [ "$FL" = "__BAD__" ] && { echo "[FATAL] spec $spec"; exit 1; }
  ti=0
  for f in $SRCS; do
    clang -O3 -S -emit-llvm $FL "${INLINE_FLAGS[@]}" -I"$LZ4/lib" \
      "$LZ4/lib/$f.c" -o "$W/${spec}.${f}.ll" || exit 1
    n=$(grep -c 'call void @llvm.ubsantrap' "$W/${spec}.${f}.ll"); ti=$((ti+n))
  done
  TRAPS_IN[$spec]=$ti
  CONFIGS="base base2x oracle"; [ "$spec" = "none" ] && CONFIGS="base"
  for cfg in $CONFIGS; do
    k="$spec.$cfg"; ORACLE_S[$k]=0
    case "$cfg" in
      base)   sfx="ll" ;;
      base2x)
        for f in $SRCS; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.b2.ll" || exit 1
        done; sfx="b2.ll" ;;
      oracle)
        t0=$(now)
        for f in $SRCS; do
          opt -load-pass-plugin=build/OraclePass.so \
            -passes="oracle-pass<threads=${THREADS};timeout=${TIMEOUT_MS}>,simplifycfg,adce,verify" \
            -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.or.ll" \
            > "$W/${spec}.${f}.oracle.log" 2>&1 || { echo "[FATAL] oracle $spec/$f"; exit 1; }
          opt -passes='default<O3>' -S "$W/${spec}.${f}.or.ll" -o "$W/${spec}.${f}.or2.ll" || exit 1
        done
        ORACLE_S[$k]=$(elapsed "$t0" "$(now)"); sfx="or2.ll" ;;
    esac
    tf=0; OBJS=()
    for f in $SRCS; do
      fin="$W/${spec}.${f}.${sfx}"
      n=$(grep -c 'call void @llvm.ubsantrap' "$fin"); tf=$((tf+n))
      llc -O3 -relocation-model=pic -filetype=obj "$fin" -o "$W/${k}.${f}.o" || exit 1
      OBJS+=("$W/${k}.${f}.o")
    done
    BIN="$W/bin.${k}"
    clang "${OBJS[@]}" "$W/driver.o" -o "$BIN" || exit 1
    TRAPS_FIN[$k]=$tf; B_PATH[$k]="$BIN"
    B_BYTES[$k]=$(stat -c%s "$BIN")
    B_TEXT[$k]=$(size "$BIN" 2>/dev/null | awk 'NR==2{print $1}')
    KEYS+=("$k")
    printf '  built %-14s traps %4s->%-4s smt %ss\n' "$k" "${TRAPS_IN[$spec]}" "$tf" "${ORACLE_S[$k]}"
  done
done

echo "==== cooldown ${COOLDOWN}s ===="; sleep "$COOLDOWN"

# ---- PHASE B: warmup + shuffled interleaved timing ----
echo "==== timing: $RUNS reps x ${#KEYS[@]} binaries  [pin: ${PIN:-none}] ===="
declare -A RUNTIMES
for k in "${KEYS[@]}"; do $PIN "${B_PATH[$k]}" "$CORP" "$HC_LEVEL" "$ITERS" >/dev/null 2>&1 || echo "  [WARN] $k warmup rc=$?"; done
for rep in $(seq "$RUNS"); do
  while IFS= read -r k; do
    t0=$(now); $PIN "${B_PATH[$k]}" "$CORP" "$HC_LEVEL" "$ITERS" >/dev/null 2>&1; rc=$?; t1=$(now)
    [ "$rc" -ge 128 ] && { echo "  [TRAP] $k rep $rep rc=$rc"; continue; }
    RUNTIMES[$k]="${RUNTIMES[$k]:-}$(elapsed "$t0" "$t1");"
  done < <(printf '%s\n' "${KEYS[@]}" | shuf)
  [ $((rep % 5)) -eq 0 ] && echo "  rep $rep/$RUNS ($(date +%H:%M:%S))"
done

# ---- PHASE C: CSV (make_perf_report.py compatible) ----
# Append-aware: multiple invocations (one per CORPUS_MB) build one
# multi-size table, mirroring the zlib 8/64/256 protocol.
[ -f "$CSV" ] || echo "spec,config,size_mb,traps_in,traps_final,bin_bytes,text_bytes,clang_s,oracle_s,o3_s,backend_link_s,total_compile_s,min_run_s,avg_run_s,runs_s" > "$CSV"
for k in "${KEYS[@]}"; do
  spec="${k%.*}"; cfg="${k#*.}"
  rj="${RUNTIMES[$k]%;}"
  mn=$(echo "$rj" | tr ';' '\n' | awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
  av=$(echo "$rj" | tr ';' '\n' | awk '{t+=$1} END{printf "%.3f", t/NR}')
  echo "$spec,$cfg,$CORPUS_MB,${TRAPS_IN[$spec]},${TRAPS_FIN[$k]},${B_BYTES[$k]},${B_TEXT[$k]:-},0,${ORACLE_S[$k]},0,0,0,$mn,$av,\"$rj\"" >> "$CSV"
  printf '%-14s traps %4s->%-4s min %ss avg %ss\n' "$k" "${TRAPS_IN[$spec]}" "${TRAPS_FIN[$k]}" "$mn" "$av"
done
echo ""
echo "CSV: $CSV   (report: python3 make_perf_report.py $CSV evaluation/perf_lz4_report.csv)"
