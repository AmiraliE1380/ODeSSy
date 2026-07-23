#!/usr/bin/env bash
# =============================================================================
# run_zlib_perf.sh -- v2: COMPILE + RUNTIME benchmark, multi-size + shuffled.
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
# v2 protocol changes:
#   * PHASE SEPARATION: build ALL binaries first (compile metrics + binary
#     size), COOLDOWN pause, then one measurement phase -- so no binary is
#     ever timed right after the CPU-saturating SMT stage.
#   * SHUFFLED, INTERLEAVED RUNS: repetitions are round-robin -- every rep
#     runs each (binary x size) once, in fresh random order (shuf) -- so slow
#     thermal/frequency drift spreads evenly across all configs instead of
#     biasing whichever binary runs last.
#   * BINARY SIZE: records file bytes AND .text segment bytes (pure code;
#     eliminated trap blocks show up here without symbol-table noise).
#
# Output: evaluation/perf_zlib.csv, one row per (spec x config x size).
# Knobs : RUNS=10 SIZES="8 64 512" LEVEL=9 TIMEOUT_SECS=600 COOLDOWN=60
# NOTE  : vacuity check intentionally OFF here (plain 'oracle-pass').
# =============================================================================
set -u
PL_ROOT="$HOME/michigan/pl"
ROOT="$PL_ROOT/smt-compiler-oracle"
ZLIB="$PL_ROOT/zlib"
RUNS=${RUNS:-10}
read -r -a SIZE_ARR <<< "${SIZES:-8 64 512}"
LEVEL=${LEVEL:-9}
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
COOLDOWN=${COOLDOWN:-60}
TIER=${TIER:-light}
case "$TIER" in
  light) ORACLE_PASSES="oracle-pass,simplifycfg,adce,verify" ;;
  heavy) ORACLE_PASSES="oracle-pass<heavy>,simplifycfg,adce,verify" ;;
  *) echo "[FATAL] unknown TIER '$TIER' (light|heavy)"; exit 1 ;;
esac
CSV="$ROOT/evaluation/perf_zlib.csv"
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
  esac
}
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }

cd "$ROOT" || exit 1
echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }
rm -rf "$W"; mkdir -p "$W"

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
for spec in none signed unsigned both; do
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
        t0=$(now)
        for f in "${SRCS[@]}"; do
          timeout "${TIMEOUT_SECS}s" opt -load-pass-plugin=build/OraclePass.so \
            -passes="$ORACLE_PASSES" \
            -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.or.ll" \
            > "$W/${spec}.${f}.oracle.log" 2>&1 \
            || { echo "[FATAL] oracle failed on $spec/$f"; exit 1; }
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
declare -A CORPUS
for mb in "${SIZE_ARR[@]}"; do
  c="$W/corpus.${mb}M"
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
echo "==== PHASE C: warmup ===="
MKEYS=()   # measurement keys "spec.cfg|mb"
for k in "${KEYS2[@]}"; do
  for mb in "${SIZE_ARR[@]}"; do
    "${B_PATH[$k]}" -"$LEVEL" < "${CORPUS[$mb]}" > /dev/null 2>&1
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
    "${B_PATH[$k]}" -"$LEVEL" < "${CORPUS[$mb]}" > /dev/null 2>&1
    rc=$?
    t1=$(now)
    [ "$rc" -ge 128 ] && echo "  [TRAP] $k @${mb}MB rep $rep died rc=$rc -- a trap fired!"
    RUNTIMES[$mk]="${RUNTIMES[$mk]:-}$(elapsed "$t0" "$t1");"
  done < <(printf '%s\n' "${MKEYS[@]}" | shuf)
done

# =============================================================================
# PHASE E: emit CSV.
# =============================================================================
echo "spec,config,size_mb,traps_in,traps_final,bin_bytes,text_bytes,clang_s,oracle_s,o3_s,backend_link_s,total_compile_s,avg_run_s,min_run_s,runs_s" > "$CSV"
printf '\n%-9s %-7s %5s %6s %6s %10s %9s %9s %9s %9s\n' \
  spec config MB t_in t_fin bin_B text_B total_s avg_run min_run
for k in "${KEYS2[@]}"; do
  spec="${k%.*}"; cfg="${k#*.}"
  for mb in "${SIZE_ARR[@]}"; do
    mk="$k|$mb"
    runs_join="${RUNTIMES[$mk]%;}"
    read -r avg mn <<< "$(echo "$runs_join" | tr ';' '\n' | \
      awk '{s+=$1; if(m==""||$1<m)m=$1} END{printf "%.3f %.3f", s/NR, m}')"
    echo "$spec,$cfg,$mb,${TRAPS_IN[$spec]},${TRAPS_FIN[$k]},${B_BYTES[$k]},${B_TEXT[$k]},${CLANG_S[$spec]},${ORACLE_S[$k]},${O3_S[$k]},${BACKEND_S[$k]},${TOTAL_S[$k]},$avg,$mn,\"$runs_join\"" >> "$CSV"
    printf '%-9s %-7s %5s %6s %6s %10s %9s %9s %9s %9s\n' \
      "$spec" "$cfg" "$mb" "${TRAPS_IN[$spec]}" "${TRAPS_FIN[$k]}" \
      "${B_BYTES[$k]}" "${B_TEXT[$k]}" "${TOTAL_S[$k]}" "$avg" "$mn"
  done
done

echo ""
echo "CSV: $CSV   (then: python3 make_perf_report.py)"
echo "Cold-path check: if %-speedup shrinks 8 -> 64 -> 512 MB, the savings are"
echo "constant-per-invocation (cold path); flat % means a scaled path changed."