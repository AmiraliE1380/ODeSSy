#!/usr/bin/env bash
# =============================================================================
# run_matrix.sh -- v2: SANITIZER x BENCHMARK opportunity matrix (baseline only).
#
# Cells = (bench x spec). Three metrics per cell, three matrices in the report:
#   1. min-based slowdown vs 'none'   (primary; noise only ADDS time)
#   2. avg-based slowdown vs 'none'   (sanity)
#   3. traps injected                 (exact IR count where we own the compile,
#                                      objdump ud2 proxy for make-built benches;
#                                      trap_method column keeps them apart)
# No oracle pass runs here: this measures the OPPORTUNITY CEILING that decides
# where ODeSSy solver time is worth spending.
#
# Benchmarks : zlib lz4 zstd openssl polybench     (adapters below)
# Specs      : none signed unsigned both divide shift bounds implicit integer
#              ('integer' = clang's -fsanitize=integer umbrella = the ALL col)
#
# CRASH-SAFETY / RESUME:
#   * evaluation/matrix/raw_runs.log -- every timed run appended THE MOMENT it
#     finishes (bench spec rep rc seconds). Nothing is ever lost.
#   * evaluation/matrix.csv          -- one row per cell, appended as soon as
#     the cell's bench finishes its timing block.
#   * evaluation/matrix/.done.<bench>-- bench-level checkpoint. Rerunning the
#     script skips finished benches; delete a marker to redo one bench.
#   Timing is shuffled+interleaved WITHIN a bench (its specs vs its own
#   'none'), which is the comparison that defines the matrix -- so bench-level
#   resume does not bias cross-spec deltas.
#
# Knobs : RUNS=10 CORPUS_MB=64 PIN=... RUN_TIMEOUT=300
#         BENCHES="zlib lz4 zstd openssl polybench"
#         SPECS="none signed unsigned both divide shift bounds implicit integer"
#         PL_ROOT=<dir with benchmark clones>   (default: repo parent)
#         ZSTD_LEVEL=12  (19 is the "real" setting but ~2x the wall time)
# Needs : pinned clang on PATH; perl+make (OpenSSL); benchmarks cloned
#         beside the repo (see SETUP section in the paper notes / chat):
#           git clone --depth 1 https://github.com/lz4/lz4
#           git clone --depth 1 https://github.com/facebook/zstd
#           git clone --depth 1 https://github.com/openssl/openssl
#           git clone --depth 1 \
#             https://github.com/MatthiasJReisinger/PolyBenchC-4.2.1 polybench
# Output: evaluation/matrix.csv  (then: python3 make_matrix_report.py)
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
RUNS=${RUNS:-10}
CORPUS_MB=${CORPUS_MB:-64}
RUN_TIMEOUT=${RUN_TIMEOUT:-300}
ZSTD_LEVEL=${ZSTD_LEVEL:-12}
BENCHES=${BENCHES:-"zlib lz4 zstd openssl polybench"}
SPECS=${SPECS:-"none signed unsigned both divide shift bounds implicit integer"}
NPROC=$(nproc 2>/dev/null || echo 8)
MDIR="$ROOT/evaluation/matrix"
CSV="$ROOT/evaluation/matrix.csv"
RAW="$MDIR/raw_runs.log"
W="$ROOT/matrix_test"
mkdir -p "$MDIR" "$W"

if [ "${PIN-unset}" = "unset" ]; then
  if command -v numactl >/dev/null 2>&1 && numactl --hardware >/dev/null 2>&1; then
    PIN="numactl --cpunodebind=0 --membind=0"
  else PIN=""; fi
fi
now()     { date +%s.%N; }
elapsed() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.3f", b-a}'; }

san_flags() {
  case "$1" in
    none)     echo "" ;;
    signed)   echo "-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow" ;;
    unsigned) echo "-fsanitize=unsigned-integer-overflow -fsanitize-trap=unsigned-integer-overflow" ;;
    both)     echo "-fsanitize=signed-integer-overflow,unsigned-integer-overflow -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow" ;;
    divide)   echo "-fsanitize=integer-divide-by-zero -fsanitize-trap=integer-divide-by-zero" ;;
    shift)    echo "-fsanitize=shift -fsanitize-trap=shift" ;;
    bounds)   echo "-fsanitize=bounds -fsanitize-trap=bounds" ;;
    implicit) echo "-fsanitize=implicit-conversion -fsanitize-trap=implicit-conversion" ;;
    integer)  echo "-fsanitize=integer -fsanitize-trap=integer" ;;
    *)        echo "__BAD__" ;;
  esac
}
count_ud2() { local n; n=$(objdump -d "$1" 2>/dev/null | grep -cw 'ud2'); echo "${n:-0}"; }
# Exact static count: emit IR for each source with the cell's flags, grep call
# sites. Used only by adapters where we own the compile line (zlib, polybench).
count_ir() { # $1=out-count-var-name; rest: clang args producing ONE .ll on stdout
  local __v="$1"; shift
  local ll n
  ll=$("$@" -S -emit-llvm -o - 2>/dev/null) || { eval "$__v=NA"; return; }
  n=$(printf '%s' "$ll" | grep -c 'call void @llvm.ubsantrap')
  eval "$__v=\$n"
}

# ---- shared corpus in tmpfs -------------------------------------------------
CORPDIR="$W"
if [ -d /dev/shm ] && [ -w /dev/shm ]; then
  CORPDIR="/dev/shm/odessy_matrix.$$"; mkdir -p "$CORPDIR"
  trap 'rm -rf "$CORPDIR"' EXIT
fi
CORP="$CORPDIR/corpus"
make_corpus() {
  [ -s "$CORP" ] && return
  cat "$PL_ROOT"/zlib/*.c "$PL_ROOT"/zlib/*.h > "$CORP" 2>/dev/null
  [ -s "$CORP" ] || cat "$ROOT"/OraclePass/*.cpp > "$CORP" 2>/dev/null
  [ -s "$CORP" ] || { echo "[FATAL] empty corpus seed"; exit 1; }
  while [ "$(stat -c%s "$CORP")" -lt $((CORPUS_MB*1024*1024)) ]; do
    cat "$CORP" "$CORP" > "$CORP.t" && mv "$CORP.t" "$CORP"
  done
  truncate -s "${CORPUS_MB}M" "$CORP"
}

# =============================================================================
# ADAPTERS. Contract per bench B:
#   build_B <spec> "<flags>"  -> echo binary path | "SKIP"
#     and set TRAPS_CELL (exact IR count) or leave empty (ud2 proxy used)
#     and set TRAPMETH_CELL ("ir" | "ud2")
#   run_B <binary>            -> the timed kernel (deterministic, /dev/null out)
# =============================================================================
ZDEFS="-DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1"
ZSRCS="adler32 compress crc32 deflate gzclose gzlib gzread gzwrite infback inffast inflate inftrees trees uncompr zutil"
TRAPS_CELL=""; TRAPMETH_CELL="ud2"

build_zlib() {
  local d="$PL_ROOT/zlib"; [ -d "$d" ] || { echo SKIP; return; }
  local objs=() f total=0 n
  for f in $ZSRCS; do
    clang -O3 $2 $ZDEFS -I"$d" -c "$d/$f.c" -o "$W/zlib.$1.$f.o" 2>/dev/null \
      || { echo SKIP; return; }
    objs+=("$W/zlib.$1.$f.o")
    count_ir n clang -O3 $2 $ZDEFS -I"$d" "$d/$f.c"
    [ "$n" = "NA" ] && n=0; total=$((total+n))
  done
  local mg="$d/test/minigzip.c"; [ -f "$mg" ] || mg="$d/minigzip.c"
  clang -O2 $ZDEFS -I"$d" -c "$mg" -o "$W/zlib.mg.o" 2>/dev/null || { echo SKIP; return; }
  clang "${objs[@]}" "$W/zlib.mg.o" -o "$W/bin.zlib.$1" 2>/dev/null || { echo SKIP; return; }
  TRAPS_CELL=$total; TRAPMETH_CELL="ir"
  echo "$W/bin.zlib.$1"
}
run_zlib() { "$1" -9 < "$CORP" > /dev/null 2>&1; }

build_lz4() {
  local d="$PL_ROOT/lz4"; [ -d "$d" ] || { echo SKIP; return; }
  ( cd "$d" && make clean >/dev/null 2>&1
    make -j"$NPROC" CC=clang MOREFLAGS="$2" lz4 >/dev/null 2>&1 ) || { echo SKIP; return; }
  local b="$d/lz4"; [ -x "$b" ] || b="$d/programs/lz4"
  [ -x "$b" ] || { echo SKIP; return; }
  cp "$b" "$W/bin.lz4.$1"; echo "$W/bin.lz4.$1"
}
run_lz4() { "$1" -9 -f -c < "$CORP" > /dev/null 2>&1; }

build_zstd() {
  local d="$PL_ROOT/zstd"; [ -d "$d" ] || { echo SKIP; return; }
  ( cd "$d" && make clean >/dev/null 2>&1
    make -j"$NPROC" CC=clang MOREFLAGS="$2" zstd >/dev/null 2>&1 ) || { echo SKIP; return; }
  local b="$d/zstd"; [ -x "$b" ] || b="$d/programs/zstd"
  [ -x "$b" ] || { echo SKIP; return; }
  cp "$b" "$W/bin.zstd.$1"; echo "$W/bin.zstd.$1"
}
run_zstd() { "$1" -"$ZSTD_LEVEL" -f -c < "$CORP" > /dev/null 2>&1; }

# OpenSSL: out-of-tree build dir per spec; kernel = sha256 digest + AES-CBC
# encrypt of the corpus (raw -K/-iv: no KDF, deterministic, CPU-bound).
build_openssl() {
  local d="$PL_ROOT/openssl"; [ -d "$d" ] || { echo SKIP; return; }
  local bd="$W/openssl.$1"
  if [ ! -x "$bd/apps/openssl" ]; then
    mkdir -p "$bd"
    ( cd "$bd" && "$d/Configure" CC=clang linux-x86_64 no-shared no-tests \
        -O3 $2 >/dev/null 2>&1 && make -j"$NPROC" >/dev/null 2>&1 ) \
      || { echo SKIP; return; }
  fi
  [ -x "$bd/apps/openssl" ] || { echo SKIP; return; }
  echo "$bd/apps/openssl"
}
run_openssl() {
  "$1" dgst -sha256 "$CORP" > /dev/null 2>&1 || return $?
  "$1" enc -aes-256-cbc \
    -K 0000000000000000000000000000000000000000000000000000000000000000 \
    -iv 00000000000000000000000000000000 -in "$CORP" -out /dev/null 2>/dev/null
}

PB_KERNELS="linear-algebra/blas/gemm linear-algebra/kernels/2mm linear-algebra/kernels/3mm linear-algebra/solvers/cholesky linear-algebra/solvers/lu"
build_polybench() {
  local d="" c
  for c in "$PL_ROOT/polybench" "$PL_ROOT/PolyBenchC-4.2.1" "$PL_ROOT/polybench-c-4.2.1"; do
    [ -d "$c/utilities" ] && d="$c" && break
  done
  [ -n "$d" ] || { echo SKIP; return; }
  local k name outs=() total=0 n src
  for k in $PB_KERNELS; do
    name=$(basename "$k")
    clang -O3 $2 -I"$d/utilities" -I"$d/$k" -DLARGE_DATASET \
      "$d/utilities/polybench.c" "$d/$k/$name.c" -lm \
      -o "$W/bin.pb.$name.$1" 2>/dev/null || { echo SKIP; return; }
    outs+=("$W/bin.pb.$name.$1")
    for src in "$d/utilities/polybench.c" "$d/$k/$name.c"; do
      count_ir n clang -O3 $2 -I"$d/utilities" -I"$d/$k" -DLARGE_DATASET "$src"
      [ "$n" = "NA" ] && n=0; total=$((total+n))
    done
  done
  local drv="$W/bin.polybench.$1"
  { echo '#!/usr/bin/env bash'
    local b; for b in "${outs[@]}"; do echo "\"$b\" > /dev/null 2>&1 || exit \$?"; done
  } > "$drv"; chmod +x "$drv"
  TRAPS_CELL=$total; TRAPMETH_CELL="ir"
  echo "$drv"
}
run_polybench() { "$1"; }

# timeout(1) execs a real command, not a shell function -- so the timed
# kernels run via an exported-function bash -c shim. CORP/ZSTD_LEVEL must
# be in the environment for the child shell.
export CORP ZSTD_LEVEL
export -f run_zlib run_lz4 run_zstd run_openssl run_polybench
timed() { # $1 = bench, $2 = binary; returns the kernel's rc (124 = timeout)
  $PIN timeout "$RUN_TIMEOUT" bash -c "run_$1 \"\$0\"" "$2"
}

# =============================================================================
# MAIN LOOP -- bench by bench (checkpoint unit), specs interleaved inside.
# =============================================================================
[ -f "$CSV" ] || echo "bench,spec,traps_n,trap_method,status,min_run_s,avg_run_s,slowdown_vs_none_min_pct,slowdown_vs_none_avg_pct,runs_s" > "$CSV"
make_corpus
echo "==== matrix v2: benches [$BENCHES] x specs [$SPECS] ===="
echo "==== RUNS=$RUNS CORPUS=${CORPUS_MB}MB pin='${PIN:-none}' raw log: $RAW ===="

for bench in $BENCHES; do
  if [ -f "$MDIR/.done.$bench" ]; then
    echo "[$bench] checkpoint found -- skipping (rm $MDIR/.done.$bench to redo)"
    continue
  fi
  echo ""
  echo "==== [$bench] building cells ===="
  declare -A BIN TRAPS METH DIED RUNTIMES
  BIN=(); TRAPS=(); METH=(); DIED=(); RUNTIMES=()
  CELLS=()
  for s in $SPECS; do
    fl=$(san_flags "$s"); [ "$fl" = "__BAD__" ] && { echo "[FATAL] bad spec $s"; exit 1; }
    TRAPS_CELL=""; TRAPMETH_CELL="ud2"
    bin=$("build_$bench" "$s" "$fl")
    if [ "$bin" = "SKIP" ] || [ -z "$bin" ]; then
      echo "  [skip] $bench/$s (missing clone or build failed)"
      echo "$bench,$s,,,build_failed,,,,," >> "$CSV"
      continue
    fi
    BIN[$s]="$bin"
    if [ -n "$TRAPS_CELL" ]; then TRAPS[$s]="$TRAPS_CELL"; METH[$s]="$TRAPMETH_CELL"
    else TRAPS[$s]=$(count_ud2 "$bin"); METH[$s]="ud2"; fi
    CELLS+=("$s")
    printf '  built %-10s %-9s traps=%s (%s)\n' "$bench" "$s" "${TRAPS[$s]}" "${METH[$s]}"
  done
  [ ${#CELLS[@]} -gt 0 ] || { echo "  [$bench] nothing built"; touch "$MDIR/.done.$bench"; continue; }

  echo "==== [$bench] warmup ===="
  for s in "${CELLS[@]}"; do
    timed "$bench" "${BIN[$s]}"; rc=$?
    if [ "$rc" -ge 128 ] || [ "$rc" -eq 124 ]; then
      DIED[$s]=$rc
      echo "  [TRAP] $bench/$s warmup rc=$rc ($([ $rc -eq 124 ] && echo timeout || echo 'sanitizer fired')) -- excluded from timing, kept as finding"
    fi
  done

  echo "==== [$bench] timing: $RUNS shuffled reps ===="
  for rep in $(seq "$RUNS"); do
    while IFS= read -r s; do
      [ -n "${DIED[$s]:-}" ] && continue
      t0=$(now); timed "$bench" "${BIN[$s]}"; rc=$?; t1=$(now)
      dt=$(elapsed "$t0" "$t1")
      echo "$(date +%F.%T) $bench $s rep=$rep rc=$rc t=$dt" >> "$RAW"
      if [ "$rc" -ge 128 ] || [ "$rc" -eq 124 ]; then DIED[$s]=$rc; continue; fi
      RUNTIMES[$s]="${RUNTIMES[$s]:-}$dt;"
    done < <(printf '%s\n' "${CELLS[@]}" | shuf)
    echo "  rep $rep/$RUNS done ($(date +%H:%M:%S))"
  done

  # ---- emit this bench's rows immediately (checkpoint) ----
  declare -A MN AV
  MN=(); AV=()
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    if [ -n "$rj" ]; then
      MN[$s]=$(echo "$rj" | tr ';' '\n' | awk 'NR==1||$1<m{m=$1} END{printf "%.3f", m}')
      AV[$s]=$(echo "$rj" | tr ';' '\n' | awk '{t+=$1} END{printf "%.3f", t/NR}')
    fi
  done
  refm="${MN[none]:-}"; refa="${AV[none]:-}"
  for s in "${CELLS[@]}"; do
    rj="${RUNTIMES[$s]:-}"; rj="${rj%;}"
    st=ok; ovm=""; ova=""
    if [ -n "${DIED[$s]:-}" ]; then
      st=$([ "${DIED[$s]}" -eq 124 ] && echo timeout || echo "died_rc=${DIED[$s]}")
    else
      [ -n "$refm" ] && [ -n "${MN[$s]:-}" ] && \
        ovm=$(awk -v n="${MN[$s]}" -v r="$refm" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
      [ -n "$refa" ] && [ -n "${AV[$s]:-}" ] && \
        ova=$(awk -v n="${AV[$s]}" -v r="$refa" 'BEGIN{printf "%+.1f", (n-r)/r*100}')
    fi
    echo "$bench,$s,${TRAPS[$s]:-},${METH[$s]:-},$st,${MN[$s]:-},${AV[$s]:-},$ovm,$ova,\"$rj\"" >> "$CSV"
  done
  touch "$MDIR/.done.$bench"
  echo "==== [$bench] rows appended to $CSV ; checkpoint written ===="
done

echo ""
echo "CSV: $CSV"
echo "Report: python3 make_matrix_report.py   (3 matrices: min / avg / traps)"
