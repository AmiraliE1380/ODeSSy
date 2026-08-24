#!/usr/bin/env bash
# =============================================================================
# run_zlib_perf.sh -- v5: COMPILE + RUNTIME benchmark, multi-size + shuffled,
#                    PARALLEL oracle stage (Level-1 + Level-2), MIN-based.
#
# v5 changes (noise-control release, CloudLab c220g2):
#   * MIN-BASED: min_run_s emitted next to avg_run_s (min = primary index;
#     noise only ever ADDS time). make_perf_report.py is min-primary too.
#   * SIZES default "8 64 256" -- 512 dropped (fires the known intentional
#     unsigned wraparound trap, rc=132, corrupting protocol timing; keep one
#     manual 512 run archived as the dynamic spec-mismatch finding only).
#   * PIN: timed+warmup runs go through $PIN (default: numactl socket-0
#     cpu+mem binding when numactl exists; PIN="" disables). Kills
#     cross-socket memory luck and scheduler wander.
#   * Corpora live in /dev/shm when available (no disk I/O in timing).
#   * Parallelism defaults sized from nproc: THREADS=8, JOBS=nproc/THREADS
#     (c220g2: 5x8=40). Timing phase is strictly serial regardless.
#
# Specs   : none | signed | unsigned | both   (sanitizer configuration)
# Configs : base   = clang -O3                                  -> binary
#           base2x = clang -O3 -> opt default<O3>               -> binary
#           oracle = clang -O3 -> oracle+simplifycfg+adce+verify
#                             -> opt default<O3>                -> binary
# Sizes   : corpus of SIZES MB (default "8 64 512") -- cold-path eliminations
#           should show SHRINKING %-speedup as size grows (fixed savings /
#           growing hot-loop denominator); a flat % means a warm path changed.
#
# v4 change:
#   * LEVEL-2 PARALLELISM: oracle-pass is now a module pass with an internal
#     per-trap worker pool, selected by the threads=N pass parameter (THREADS
#     knob below). Composes with Level-1 (JOBS concurrent opt processes);
#     keep JOBS*THREADS <= cores. THREADS=1 (default) == v3 behavior, and
#     verdicts/output IR are THREADS-invariant by construction.
#
# v3 changes:
#   * LEVEL-1 PARALLELISM: the oracle stage runs its per-TU `opt` invocations
#     as up to JOBS concurrent PROCESSES (default: CPU count; JOBS=1 == old
#     serial behavior). TUs are fully independent (separate .ll in/out files
#     and per-module logs) => no collisions. ORACLE_S is the stage
#     WALL-CLOCK; with JOBS>1 (or THREADS>1) the derived per-trap ms is
#     wall-clock based ("latency with parallelism"). After the wave, every
#     expected output is checked; missing/empty => FATAL with a pointer to
#     its oracle.log.
#   * AVG-BASED REPORTING: the min statistic is dropped; the CSV carries
#     avg_run_s plus the full raw run list (runs_s), so any other statistic
#     can be recomputed offline from the raw column if ever needed.
#
# v2 protocol (unchanged): phase separation + cooldown; shuffled interleaved
# reps; binary file+.text size records.
#
# Output: evaluation/perf_zlib.csv (TIER=heavy: evaluation/perf_zlib_heavy.csv)
# Knobs : RUNS=10 SIZES="8 64 256" LEVEL=9 TIMEOUT_SECS=600 COOLDOWN=60
#         TIER=light|heavy  ZLIB=/path/to/zlib  JOBS=N  THREADS=N
#         PIN="numactl ..."|"taskset -c 2-9"|""   (timed-run wrapper)
# NOTE  : vacuity check intentionally OFF here (plain 'oracle-pass').
# NOTE  : requires GNU userland (timeout, stat -c, shuf, GNU size) and
#         bash >= 4 -- on macOS: brew coreutils gnubin on PATH + brew bash;
#         and remember arm64 runtime numbers are NOT comparable to x86 tables.
# =============================================================================
set -u
# Self-locating: repo root = this script's directory; benchmarks live beside
# the repo. All overridable via environment (ROOT / PL_ROOT / ZLIB).
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
ZLIB="${ZLIB:-$PL_ROOT/zlib}"
RUNS=${RUNS:-10}
read -r -a SIZE_ARR <<< "${SIZES:-8 64 256}"
LEVEL=${LEVEL:-9}
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
COOLDOWN=${COOLDOWN:-60}
NPROC=$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4)
# Level-2: worker threads INSIDE each opt process (per-trap pool).
# Level-1 x Level-2 sized to the machine: JOBS*THREADS == nproc.
THREADS=${THREADS:-8}
JOBS=${JOBS:-$(( NPROC / THREADS > 0 ? NPROC / THREADS : 1 ))}
# PIN wraps ONLY warmup + timed runs (never the parallel compile stage):
# one socket, local memory. Override PIN="taskset -c 2-9" or PIN="" to disable.
if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else
    PIN=""
  fi
fi
TIER=${TIER:-light}
case "$TIER" in
  light) ORACLE_PASSES="oracle-pass<threads=${THREADS}>,simplifycfg,adce,verify" ;;
  heavy) ORACLE_PASSES="oracle-pass<heavy;threads=${THREADS}>,simplifycfg,adce,verify" ;;
  *) echo "[FATAL] unknown TIER '$TIER' (light|heavy)"; exit 1 ;;
esac
CSV="$ROOT/evaluation/perf_zlib.csv"
[ "$TIER" = "heavy" ] && CSV="$ROOT/evaluation/perf_zlib_heavy.csv"
W="$ROOT/perf_test"

INLINE_FLAGS=(-finline-functions
  -mllvm -inline-threshold=100000
  -mllvm -inlinehint-threshold=100000
  -mllvm -inlinecold-threshold=100000)
ZDEFS=(-DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1)
SRCS=(adler32 compress crc32 deflate gzclose gzlib gzread gzwrite infback \
      inffast inflate inftrees trees uncompr zutil)

set_san() {
  case "$1" in
    none)     SANF=() ;;
    signed)   SANF=(-fsanitize=signed-integer-overflow
                    -fsanitize-trap=signed-integer-overflow) ;;
    unsigned) SANF=(-fsanitize=unsigned-integer-overflow
                    -fsanitize-trap=unsigned-integer-overflow) ;;
    both)     SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow) ;;
    # anf = zlib's all-non-firing union (robust matrix): everything that
    # can actually SHIP on zlib -- the deployable config ODeSSy attacks.
    anf)      SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds) ;;
  esac
}
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }

cd "$ROOT" || exit 1
echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }
rm -rf "$W"; mkdir -p "$W"
echo "==== oracle-stage parallelism: JOBS=$JOBS x THREADS=$THREADS ===="

echo "==== minigzip driver (unsanitized, shared by every build) ===="
MG="$ZLIB/test/minigzip.c"; [ -f "$MG" ] || MG="$ZLIB/minigzip.c"
[ -f "$MG" ] || { echo "[FATAL] minigzip.c not found"; exit 1; }
clang -O2 "${ZDEFS[@]}" -I"$ZLIB" -c "$MG" -o "$W/minigzip.o" || exit 1

# =============================================================================
# PHASE A: build every (spec x config) binary; record compile metrics + sizes.
# =============================================================================
declare -A CLANG_S TRAPS_IN                                  # per spec
declare -A B_PATH B_BYTES B_TEXT TRAPS_FIN ORACLE_S O3_S BACKEND_S TOTAL_S  # per spec.cfg
KEYS2=()   # list of "spec.cfg"

echo ""
echo "==== PHASE A: building all binaries ===="
for spec in ${SPECS:-none signed unsigned both}; do
  set_san "$spec"
  t0=$(now)
  for f in "${SRCS[@]}"; do
    clang -O3 -S -emit-llvm "${SANF[@]}" "${INLINE_FLAGS[@]}" "${ZDEFS[@]}" -I"$ZLIB" \
      "$ZLIB/$f.c" -o "$W/${spec}.${f}.ll" || { echo "[FATAL] clang $spec/$f"; exit 1; }
  done
  CLANG_S[$spec]=$(elapsed "$t0" "$(now)")
  ti=0
  for f in "${SRCS[@]}"; do
    n=$(grep -c 'call void @llvm.ubsantrap' "$W/${spec}.${f}.ll"); ti=$((ti+n))
  done
  TRAPS_IN[$spec]=$ti

  CONFIGS=(base base2x oracle)
  [ "$spec" = "none" ] && CONFIGS=(base)
  for cfg in "${CONFIGS[@]}"; do
    k="${spec}.${cfg}"
    ORACLE_S[$k]=0.000; O3_S[$k]=0.000
    case "$cfg" in
      base) sfx="ll" ;;
      base2x)
        t0=$(now)
        for f in "${SRCS[@]}"; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.ll" \
              -o "$W/${spec}.${f}.b2.ll" || exit 1
        done
        O3_S[$k]=$(elapsed "$t0" "$(now)")
        sfx="b2.ll" ;;
      oracle)
        # ---- LEVEL-1 PARALLEL ORACLE STAGE (each opt is Level-2
        # multi-threaded internally when THREADS>1) ----
        # Up to JOBS concurrent opt processes, one per TU. Independent
        # inputs/outputs/logs => no collisions. ORACLE_S = wall-clock of
        # the whole wave (the honest "compile latency with parallelism").
        t0=$(now)
        running=0
        for f in "${SRCS[@]}"; do
          timeout "${TIMEOUT_SECS}s" opt -load-pass-plugin=build/OraclePass.so \
            -passes="$ORACLE_PASSES" \
            -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.or.ll" \
            > "$W/${spec}.${f}.oracle.log" 2>&1 &
          running=$((running+1))
          if [ "$running" -ge "$JOBS" ]; then
            wait -n            # one slot frees up
            running=$((running-1))
          fi
        done
        wait                   # drain the remaining jobs
        # Post-wave check: every output must exist and be non-empty.
        for f in "${SRCS[@]}"; do
          [ -s "$W/${spec}.${f}.or.ll" ] || {
            echo "[FATAL] oracle failed on $spec/$f (see $W/${spec}.${f}.oracle.log)"
            exit 1
          }
        done
        ORACLE_S[$k]=$(elapsed "$t0" "$(now)")
        t0=$(now)
        for f in "${SRCS[@]}"; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.or.ll" \
              -o "$W/${spec}.${f}.or2.ll" || exit 1
        done
        O3_S[$k]=$(elapsed "$t0" "$(now)")
        sfx="or2.ll" ;;
    esac

    tf=0; t0=$(now); OBJS=()
    for f in "${SRCS[@]}"; do
      fin="$W/${spec}.${f}.${sfx}"
      n=$(grep -c 'call void @llvm.ubsantrap' "$fin"); tf=$((tf+n))
      llc -O3 -relocation-model=pic -filetype=obj "$fin" \
          -o "$W/${spec}.${cfg}.${f}.o" || exit 1
      OBJS+=("$W/${spec}.${cfg}.${f}.o")
    done
    BIN="$W/mg.${spec}.${cfg}"
    clang "${OBJS[@]}" "$W/minigzip.o" -o "$BIN" || exit 1
    BACKEND_S[$k]=$(elapsed "$t0" "$(now)")
    TOTAL_S[$k]=$(awk -v a="${CLANG_S[$spec]}" -v b="${ORACLE_S[$k]}" \
                      -v c="${O3_S[$k]}" -v d="${BACKEND_S[$k]}" \
                  'BEGIN{printf "%.3f", a+b+c+d}')
    TRAPS_FIN[$k]=$tf
    B_PATH[$k]="$BIN"
    B_BYTES[$k]=$(stat -c%s "$BIN")
    B_TEXT[$k]=$(size "$BIN" | awk 'NR==2{print $1}')
    KEYS2+=("$k")
    printf '  built %-16s traps %5s->%-5s bin %8s B text %8s B compile %8ss (smt %ss)\n' \
      "$k" "${TRAPS_IN[$spec]}" "$tf" "${B_BYTES[$k]}" "${B_TEXT[$k]}" \
      "${TOTAL_S[$k]}" "${ORACLE_S[$k]}"
  done
done

# =============================================================================
# PHASE B: corpora (text, by doubling -- fast even for 512 MB).
# =============================================================================
echo ""
echo "==== PHASE B: corpora (${SIZE_ARR[*]} MB) ===="
SEED="$W/seed.txt"; cat "$ZLIB"/*.c "$ZLIB"/*.h > "$SEED"
# tmpfs when available: corpus reads never touch disk during timing.
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_corpus.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
echo "  corpus dir: $CORPDIR"
declare -A CORPUS
for mb in "${SIZE_ARR[@]}"; do
  c="$CORPDIR/corpus.${mb}M"
  cp "$SEED" "$c"
  while [ "$(stat -c%s "$c")" -lt $((mb*1024*1024)) ]; do
    cat "$c" "$c" > "$c.t" && mv "$c.t" "$c"
  done
  truncate -s "${mb}M" "$c"
  CORPUS[$mb]="$c"
  echo "  corpus ${mb} MB ready"
done

echo ""
echo "==== cooldown ${COOLDOWN}s after compile phase (thermal settle) ===="
sleep "$COOLDOWN"

# =============================================================================
# PHASE C: warmup -- one untimed run per (binary x size); primes page cache.
# =============================================================================
echo "==== PHASE C: warmup ====  [pin: ${PIN:-none}]"
MKEYS=()   # measurement keys "spec.cfg|mb"
for k in "${KEYS2[@]}"; do
  for mb in "${SIZE_ARR[@]}"; do
    $PIN "${B_PATH[$k]}" -"$LEVEL" < "${CORPUS[$mb]}" > /dev/null 2>&1
    rc=$?
    [ "$rc" -ge 128 ] && echo "  [TRAP] $k @${mb}MB warmup died rc=$rc -- a trap fired!"
    MKEYS+=("$k|$mb")
  done
done

# =============================================================================
# PHASE D: shuffled, interleaved measurement. Each rep runs every
# (binary x size) exactly once, in a fresh random order, so environmental
# drift is spread uniformly across all configurations.
# =============================================================================
echo "==== PHASE D: $RUNS shuffled reps x ${#MKEYS[@]} (binary x size) pairs ===="
declare -A RUNTIMES
for rep in $(seq "$RUNS"); do
  echo "  rep $rep/$RUNS  ($(date +%H:%M:%S))"
  while IFS= read -r mk; do
    k="${mk%|*}"; mb="${mk#*|}"
    t0=$(now)
    $PIN "${B_PATH[$k]}" -"$LEVEL" < "${CORPUS[$mb]}" > /dev/null 2>&1
    rc=$?
    t1=$(now)
    [ "$rc" -ge 128 ] && echo "  [TRAP] $k @${mb}MB rep $rep died rc=$rc -- a trap fired!"
    RUNTIMES[$mk]="${RUNTIMES[$mk]:-}$(elapsed "$t0" "$t1");"
  done < <(printf '%s\n' "${MKEYS[@]}" | shuf)
done

# =============================================================================
# PHASE E: emit CSV (min-primary + avg; raw run list kept for reprocessing).
# =============================================================================
echo "spec,config,size_mb,traps_in,traps_final,bin_bytes,text_bytes,clang_s,oracle_s,o3_s,backend_link_s,total_compile_s,min_run_s,avg_run_s,runs_s" > "$CSV"
printf '\n%-9s %-7s %5s %6s %6s %10s %9s %9s %9s %9s\n' \
  spec config MB t_in t_fin bin_B text_B total_s min_run avg_run
for k in "${KEYS2[@]}"; do
  spec="${k%.*}"; cfg="${k#*.}"
  for mb in "${SIZE_ARR[@]}"; do
    mk="$k|$mb"
    runs_join="${RUNTIMES[$mk]%;}"
    avg=$(echo "$runs_join" | tr ';' '\n' | \
      awk '{s+=$1} END{printf "%.3f", s/NR}')
    mn=$(echo "$runs_join" | tr ';' '\n' | \
      awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
    echo "$spec,$cfg,$mb,${TRAPS_IN[$spec]},${TRAPS_FIN[$k]},${B_BYTES[$k]},${B_TEXT[$k]},${CLANG_S[$spec]},${ORACLE_S[$k]},${O3_S[$k]},${BACKEND_S[$k]},${TOTAL_S[$k]},$mn,$avg,\"$runs_join\"" >> "$CSV"
    printf '%-9s %-7s %5s %6s %6s %10s %9s %9s %9s %9s\n' \
      "$spec" "$cfg" "$mb" "${TRAPS_IN[$spec]}" "${TRAPS_FIN[$k]}" \
      "${B_BYTES[$k]}" "${B_TEXT[$k]}" "${TOTAL_S[$k]}" "$mn" "$avg"
  done
done

echo ""
echo "CSV: $CSV   (then: python3 make_perf_report.py)   [oracle stage JOBS=$JOBS x THREADS=$THREADS]"
echo "Cold-path check: if %-speedup shrinks 8 -> 64 -> 256 MB, the savings are"
echo "constant-per-invocation (cold path); flat % means a scaled path changed."
