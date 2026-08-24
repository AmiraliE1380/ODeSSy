#!/usr/bin/env bash
# =============================================================================
# run_timeout_sweep.sh -- the advisor-requested per-query TIMEOUT sweep.
# Fixed input (zlib/deflate unsigned O1 -- the trap-dense audit workhorse),
# fixed threads, timeout in {10000,3000,1000,300,100,30} ms. Reports verdict
# counts + stage wall per point: the "latency is a dial" table for the paper.
# Analysis-only; no stabilization needed (wall is indicative, verdicts exact).
# Knobs: THREADS=8  INPUT=evaluation/zlib/deflate_integer_unsigned_O1.ll
# Out  : evaluation/timeout_sweep.csv
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
THREADS=${THREADS:-8}
INPUT=${INPUT:-evaluation/zlib/deflate_integer_unsigned_O1.ll}
CSV="$ROOT/evaluation/timeout_sweep.csv"
cd "$ROOT" || exit 1
[ -f "$INPUT" ] || { echo "[FATAL] $INPUT missing -- run SPECS=unsigned OPTS=O1 bash run_zlib.sh once first"; exit 1; }
( cd build && ninja ) || exit 1
echo "timeout_ms,unsat,sat,unknown,vacuous,skips,wall_s" > "$CSV"
stem=$(basename "$INPUT" .ll)
for T in 1 3 10 30 100 300 1000 3000 10000; do
  t0=$(date +%s.%N)
  opt -load-pass-plugin=build/OraclePass.so \
      -passes="oracle-pass<vacuity;timeout=${T};threads=${THREADS}>" \
      -disable-output "$INPUT" > "logs/opt_runs/sweep_${T}.log" 2>&1
  t1=$(date +%s.%N)
  wall=$(awk -v a="$t0" -v b="$t1" 'BEGIN{printf "%.2f", b-a}')
  vlog="logs/compilations/$stem.txt"
  u=$(grep -c 'UNSAT' "$vlog"); s=$(grep -c 'SAT (WARNING' "$vlog")
  k=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
  v=$(grep -c '\[VACUOUS\]' "$vlog"); sk=$(grep -c '\[Skip\]' "$vlog")
  echo "$T,$u,$s,$k,$v,$sk,$wall" >> "$CSV"
  printf '  timeout=%-6sms  unsat=%-4s sat=%-4s unknown=%-4s wall=%ss\n' "$T" "$u" "$s" "$k" "$wall"
done
echo "CSV: $CSV   (paper claim: UNSATs survive tight timeouts; wall collapses)"
