#!/usr/bin/env bash
# =============================================================================
# run_zlib_perf.sh -- COMPILE-TIME + RUNTIME benchmark for the oracle on zlib.
#
# Specs   : none | signed | unsigned | both   (sanitizer configuration)
# Configs : base   = clang -O3                                  -> binary
#           base2x = clang -O3 -> opt default<O3>               -> binary
#                    (control: isolates the "second O3 sweep" effect)
#           oracle = clang -O3 -> oracle+simplifycfg+adce+verify
#                             -> opt default<O3>                -> binary
#   The honest speedup claim is oracle vs base2x (identical pipelines except
#   the oracle step). oracle vs base is the end-to-end practical number.
#   spec=none is built once (config base) as the no-sanitizer ceiling: the
#   (both,base) vs (none,base) gap bounds what elimination can ever recover.
#
# Workload: whole zlib (15 TUs) sanitized per spec + UNsanitized minigzip,
# compressing a ~CORPUS_MB text corpus at level LEVEL, RUNS timed runs after
# one warmup. All numbers -> evaluation/perf_zlib.csv.
#
# Knobs: RUNS=10 CORPUS_MB=32 LEVEL=9 TIMEOUT_SECS=600
# NOTE: vacuity check intentionally OFF here (plain 'oracle-pass') -- this is
#       the performance harness; audit with run_zlib.sh + oracle-pass<vacuity>.
# =============================================================================
set -u
PL_ROOT="$HOME/michigan/pl"
ROOT="$PL_ROOT/smt-compiler-oracle"
ZLIB="$PL_ROOT/zlib"
RUNS=${RUNS:-10}
CORPUS_MB=${CORPUS_MB:-32}
LEVEL=${LEVEL:-9}
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
CSV="$ROOT/evaluation/perf_zlib.csv"
W="$ROOT/perf_test"

INLINE_FLAGS=(-finline-functions
  -mllvm -inline-threshold=100000
  -mllvm -inlinehint-threshold=100000
  -mllvm -inlinecold-threshold=100000)

# zlib compiles raw (no ./configure), so provide what configure would define:
# unistd.h for lseek/read/write in the gz* layer, and large-file support.
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

echo "==== corpus (${CORPUS_MB} MB of concatenated source text) ===="
CORPUS="$W/corpus.bin"; : > "$CORPUS"
while [ "$(stat -c%s "$CORPUS")" -lt $((CORPUS_MB*1024*1024)) ]; do
  cat "$ZLIB"/*.c "$ZLIB"/*.h >> "$CORPUS"
done
truncate -s "${CORPUS_MB}M" "$CORPUS"

echo "==== minigzip driver (unsanitized, shared by every build) ===="
MG="$ZLIB/test/minigzip.c"; [ -f "$MG" ] || MG="$ZLIB/minigzip.c"
[ -f "$MG" ] || { echo "[FATAL] minigzip.c not found"; exit 1; }
clang -O2 "${ZDEFS[@]}" -I"$ZLIB" -c "$MG" -o "$W/minigzip.o" || exit 1

echo "spec,config,traps_in,traps_final,clang_s,oracle_s,o3_s,backend_link_s,total_compile_s,avg_run_s,min_run_s,runs_s" > "$CSV"
printf '\n%-9s %-7s %8s %8s %8s %8s %8s %9s %9s %9s %9s\n' \
  spec config traps_in traps_fin clang_s oracle_s o3_s backend_s total_s avg_run min_run

for spec in none signed unsigned both; do
  set_san "$spec"

  # ---- STAGE 1: clang -O3 -> sanitized .ll (shared; charged to every config)
  t0=$(now)
  for f in "${SRCS[@]}"; do
    clang -O3 -S -emit-llvm "${SANF[@]}" "${INLINE_FLAGS[@]}" "${ZDEFS[@]}" -I"$ZLIB" \
      "$ZLIB/$f.c" -o "$W/${spec}.${f}.ll" || { echo "[FATAL] clang $spec/$f"; exit 1; }
  done
  clang_s=$(elapsed "$t0" "$(now)")
  traps_in=0
  for f in "${SRCS[@]}"; do
    n=$(grep -c 'call void @llvm.ubsantrap' "$W/${spec}.${f}.ll")
    traps_in=$((traps_in+n))
  done

  CONFIGS=(base base2x oracle)
  [ "$spec" = "none" ] && CONFIGS=(base)

  for cfg in "${CONFIGS[@]}"; do
    oracle_s=0.000; o3_s=0.000
    case "$cfg" in
      base) sfx="ll" ;;
      base2x)
        t0=$(now)
        for f in "${SRCS[@]}"; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.ll" \
              -o "$W/${spec}.${f}.b2.ll" || exit 1
        done
        o3_s=$(elapsed "$t0" "$(now)")
        sfx="b2.ll" ;;
      oracle)
        t0=$(now)
        for f in "${SRCS[@]}"; do
          timeout "${TIMEOUT_SECS}s" opt -load-pass-plugin=build/OraclePass.so \
            -passes="oracle-pass,simplifycfg,adce,verify" \
            -S "$W/${spec}.${f}.ll" -o "$W/${spec}.${f}.or.ll" \
            > "$W/${spec}.${f}.oracle.log" 2>&1 \
            || { echo "[FATAL] oracle failed on $spec/$f (see $W/${spec}.${f}.oracle.log)"; exit 1; }
        done
        oracle_s=$(elapsed "$t0" "$(now)")
        t0=$(now)
        for f in "${SRCS[@]}"; do
          opt -passes='default<O3>' -S "$W/${spec}.${f}.or.ll" \
              -o "$W/${spec}.${f}.or2.ll" || exit 1
        done
        o3_s=$(elapsed "$t0" "$(now)")
        sfx="or2.ll" ;;
    esac

    traps_final=0
    t0=$(now)
    OBJS=()
    for f in "${SRCS[@]}"; do
      fin="$W/${spec}.${f}.${sfx}"
      n=$(grep -c 'call void @llvm.ubsantrap' "$fin"); traps_final=$((traps_final+n))
      llc -O3 -relocation-model=pic -filetype=obj "$fin" -o "$W/${spec}.${cfg}.${f}.o" || exit 1
      OBJS+=("$W/${spec}.${cfg}.${f}.o")
    done
    BIN="$W/mg.${spec}.${cfg}"
    clang "${OBJS[@]}" "$W/minigzip.o" -o "$BIN" || exit 1
    backend_s=$(elapsed "$t0" "$(now)")
    total_s=$(awk -v a="$clang_s" -v b="$oracle_s" -v c="$o3_s" -v d="$backend_s" \
              'BEGIN{printf "%.3f", a+b+c+d}')

    # ---- runtime: 1 warmup + RUNS timed runs
    "$BIN" -"$LEVEL" < "$CORPUS" > /dev/null 2>&1
    runs=()
    for i in $(seq "$RUNS"); do
      t0=$(now)
      "$BIN" -"$LEVEL" < "$CORPUS" > /dev/null 2>&1
      rc=$?
      t1=$(now)
      [ "$rc" -ge 128 ] && echo "  [TRAP] $spec/$cfg run $i died rc=$rc -- a trap fired!"
      runs+=("$(elapsed "$t0" "$t1")")
    done
    read -r avg min <<< "$(printf '%s\n' "${runs[@]}" | \
      awk '{s+=$1; if(m==""||$1<m)m=$1} END{printf "%.3f %.3f", s/NR, m}')"
    runs_join=$(IFS=';'; echo "${runs[*]}")

    echo "$spec,$cfg,$traps_in,$traps_final,$clang_s,$oracle_s,$o3_s,$backend_s,$total_s,$avg,$min,\"$runs_join\"" >> "$CSV"
    printf '%-9s %-7s %8s %8s %8s %8s %8s %9s %9s %9s %9s\n' \
      "$spec" "$cfg" "$traps_in" "$traps_final" "$clang_s" "$oracle_s" "$o3_s" \
      "$backend_s" "$total_s" "$avg" "$min"
  done
done

echo ""
echo "CSV: $CSV"
echo "Read it as:"
echo "  * sanitizer overhead ceiling : (both,base) avg vs (none,base) avg"
echo "  * honest oracle speedup      : (spec,oracle) avg vs (spec,base2x) avg"
echo "  * end-to-end speedup         : (spec,oracle) avg vs (spec,base)   avg"
echo "  * SMT compile cost           : oracle_s column"
