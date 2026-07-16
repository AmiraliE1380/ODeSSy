#!/usr/bin/env bash
# =============================================================================
# run_zlib_signed.sh -- ISOLATED dev harness: zlib/deflate, SIGNED spec only.
#
# Fast inner loop for auditing the signed UNSATs: rebuild pass, compile
# deflate.c at O1+O3 with signed-integer-overflow traps + aggressive inlining,
# run analysis + transform, print one honest summary table.
#
# Knobs:
#   TIMEOUT_SECS=NNN   per-opt-run wall clock (default 600)
#   OPTS="O1"          restrict opt levels (default "O1 O3")
#   INLINE_AGGRESSIVE=0 disable the inliner cranking
#
# Counting notes (fixed vs the old matrix script):
#   * 'call void @llvm.ubsantrap' -- counts CALL SITES only, not the module's
#     `declare` line (the old grep over-counted by exactly 1).
#   * unknown  = solver timeouts / give-ups (kept, correctly, as not-proven)
#   * vacuous  = UNSATs rejected by the vacuity audit (needs the push/pop
#     patch in OraclePass.cpp; 0 until then)
# =============================================================================
set -u
PL_ROOT="$HOME/michigan/pl"
ROOT="$PL_ROOT/smt-compiler-oracle"
ZLIB_SRC="$PL_ROOT/zlib"
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
read -r -a OPT_ARR <<< "${OPTS:-O1 O3}"

INLINE_AGGRESSIVE=${INLINE_AGGRESSIVE:-1}
INLINE_FLAGS=()
if [ "$INLINE_AGGRESSIVE" = "1" ]; then
  INLINE_FLAGS=(-finline-functions
    -mllvm -inline-threshold=100000
    -mllvm -inlinehint-threshold=100000
    -mllvm -inlinecold-threshold=100000)
fi

cd "$ROOT" || exit 1
mkdir -p evaluation/zlib logs/compilations logs/opt_runs

echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] pass build failed"; exit 1; }

if command -v timeout >/dev/null 2>&1; then
  run_opt() { timeout "${TIMEOUT_SECS}s" "$@"; }
else
  run_opt() { "$@"; }
fi

printf '\n%-6s %8s %8s %6s %6s %8s %8s %8s %8s %8s  %s\n' \
  opt before intr unsat sat unknown vacuous skips after elim status

for opt in "${OPT_ARR[@]}"; do
  stem="deflate_integer_signed_${opt}"
  in="evaluation/zlib/${stem}.ll"
  out="evaluation/zlib/${stem}_oracle.ll"
  alog="logs/opt_runs/${stem}.analysis.log"
  xlog="logs/opt_runs/${stem}.transform.log"

  # ---- compile sanitized baseline (signed spec only) ----
  clang "-$opt" -S -emit-llvm \
    -fsanitize=signed-integer-overflow \
    -fsanitize-trap=signed-integer-overflow \
    "${INLINE_FLAGS[@]}" -I"$ZLIB_SRC" \
    "$ZLIB_SRC/deflate.c" -o "$in" \
    || { echo "$opt : COMPILE FAILED"; continue; }

  before=$(grep -c 'call void @llvm.ubsantrap' "$in")
  intr=$(grep -c 'call .*\.with\.overflow' "$in")

  # ---- (A) analysis-only: per-trap verdicts land in the pass log ----
  run_opt opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
      -disable-output "$in" > "$alog" 2>&1
  rc_a=$?
  vlog="logs/compilations/${stem}_analysis.txt"
  [ -f "logs/compilations/${stem}.txt" ] && cp "logs/compilations/${stem}.txt" "$vlog"

  if [ -f "$vlog" ]; then
    unsat=$(grep -c 'UNSAT' "$vlog")
    sat=$(grep -c 'SAT (WARNING' "$vlog")
    unknown=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
    vacuous=$(grep -c '\[VACUOUS\]' "$vlog")
    skips=$(grep -c '\[Skip\]' "$vlog")
  else
    unsat=0; sat=0; unknown=0; vacuous=0; skips=0
  fi

  # ---- (B) transform: honest after-count from the optimized .ll ----
  rm -f "$out"
  run_opt opt -load-pass-plugin=build/OraclePass.so \
      -passes="oracle-pass,simplifycfg,adce,verify" \
      -S "$in" -o "$out" > "$xlog" 2>&1
  rc_x=$?
  if [ "$rc_x" -eq 0 ] && [ -s "$out" ]; then
    after=$(grep -c 'call void @llvm.ubsantrap' "$out")
    elim=$(( before - after ))
    status="OK"
  else
    after="NA"; elim="NA"
    [ "$rc_x" -eq 124 ] && status="XFORM_TIMEOUT" || status="XFORM_CRASH(rc=$rc_x)"
  fi
  if [ "$rc_a" -ne 0 ]; then
    [ "$rc_a" -eq 124 ] && status="ANALYSIS_TIMEOUT;$status" || status="ANALYSIS_CRASH(rc=$rc_a);$status"
  fi

  printf '%-6s %8s %8s %6s %6s %8s %8s %8s %8s %8s  %s\n' \
    "$opt" "$before" "$intr" "$unsat" "$sat" "$unknown" "$vacuous" "$skips" "$after" "$elim" "$status"
done

echo ""
echo "Per-trap verdicts : logs/compilations/deflate_integer_signed_<opt>_analysis.txt"
echo "Locate the UNSATs : grep -n -B3 'UNSAT' logs/compilations/deflate_integer_signed_O1_analysis.txt"
echo "                    (the '[Z3 Oracle] Analyzing Function:' line above each hit names the function)"
