#!/usr/bin/env bash
# =============================================================================
# run_dial_matrix.sh -- the two-axis "latency is a dial" matrix:
#   rows    = threads  (per-trap worker pool inside one opt process)
#   columns = per-query timeout (ms)
#   cell    = oracle stage wall-clock (median of REPS opt runs), plus the
#             verdict counts so every cell can be checked against tab:dial.
# Same fixed input as run_timeout_sweep.sh (zlib deflate, unsigned, O1 --
# the trap-dense workhorse behind Table 3) so the two experiments MUST agree
# on the threads=8 row; if they don't, both get redone.
# Analysis-only, but pin anyway (numactl) so wall is one-socket-stable.
# Knobs: THREADS_LIST="1 2 4 8 16"  TIMEOUTS="1 10 100 1000 10000"  REPS=3
#        INPUT=evaluation/zlib/deflate_integer_unsigned_O1.ll
# Out  : evaluation/dial_matrix.csv  (threads,timeout_ms,rep,wall_s,unsat,sat,unknown)
# Plot : python3 tools/plot_dial_matrix.py  -> paper/dial_matrix.pdf
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
cd "$ROOT" || exit 1
THREADS_LIST=${THREADS_LIST:-"1 2 4 8 16"}
TIMEOUTS=${TIMEOUTS:-"1 10 100 1000 10000"}
REPS=${REPS:-3}
INPUT=${INPUT:-evaluation/zlib/deflate_integer_unsigned_O1.ll}
CSV="$ROOT/evaluation/dial_matrix.csv"
PIN="${PIN-numactl --cpunodebind=0 --membind=0}"; command -v numactl >/dev/null || PIN=""
[ -f "$INPUT" ] || { echo "[FATAL] $INPUT missing"; exit 1; }
( cd build && ninja ) || exit 1
mkdir -p logs/opt_runs logs/compilations
stem=$(basename "$INPUT" .ll)
vlog="logs/compilations/$stem.txt"
echo "threads,timeout_ms,rep,wall_s,unsat,sat,unknown" > "$CSV"
echo "==== dial matrix: threads [$THREADS_LIST] x timeout [$TIMEOUTS] ms, REPS=$REPS, input=$INPUT ===="
printf '%8s %10s %6s %8s %6s %6s %8s\n' threads timeout_ms rep wall_s unsat sat unknown
# warmup (page cache, plugin load)
opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<vacuity;timeout=100;threads=8>" \
    -disable-output "$INPUT" > /dev/null 2>&1
for TH in $THREADS_LIST; do
  for T in $TIMEOUTS; do
    for r in $(seq "$REPS"); do
      rm -f "$vlog"
      t0=$(date +%s.%N)
      $PIN opt -load-pass-plugin=build/OraclePass.so \
          -passes="oracle-pass<vacuity;timeout=${T};threads=${TH}>" \
          -disable-output "$INPUT" > "logs/opt_runs/matrix_t${TH}_to${T}_r${r}.log" 2>&1
      t1=$(date +%s.%N)
      wall=$(awk -v a="$t0" -v b="$t1" 'BEGIN{printf "%.3f", b-a}')
      u=$(grep -c 'UNSAT' "$vlog"); s=$(grep -c 'SAT (WARNING' "$vlog")
      k=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
      echo "$TH,$T,$r,$wall,$u,$s,$k" >> "$CSV"
      printf '%8s %10s %6s %8s %6s %6s %8s\n' "$TH" "$T" "$r" "$wall" "$u" "$s" "$k"
    done
  done
done
echo "CSV: $CSV   (then: python3 tools/plot_dial_matrix.py)"
