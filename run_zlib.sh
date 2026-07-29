#!/usr/bin/env bash
# =============================================================================
# run_zlib.sh -- ISOLATED dev harness: zlib/deflate, SIGNED + UNSIGNED specs.
#
# Same fast inner loop as run_zlib_signed.sh, now iterating the sanitizer
# spec as well: rebuild pass, compile deflate.c per (spec x opt) with traps +
# aggressive inlining, run analysis + transform, print one honest table.
#
# Knobs:
#   SPECS="signed"        restrict specs   (default "signed unsigned")
#   OPTS="O1"             restrict opt levels (default "O1 O3")
#   TIMEOUT_SECS=NNN      per-opt-run wall clock (default 600)
#   TIER=heavy            precision tier: light (default) | heavy
#   THREADS=N             Level-2: per-trap worker threads inside opt
#                         (default 1 = serial reference; verdicts are
#                         THREADS-invariant by construction)
#   INLINE_AGGRESSIVE=0   disable the inliner cranking
#   ZLIB_SRC=/path        zlib sources (default: <repo-parent>/zlib)
#
# Counting: 'call void @llvm.ubsantrap' counts CALL SITES only (no declare
# line). unknown = solver gave up (kept). vacuous = UNSATs rejected by the
# vacuity audit (must stay 0).
# =============================================================================
set -u
# Self-locating: repo root = this script's directory; benchmarks live beside
# the repo. All three overridable via environment (ROOT / PL_ROOT / ZLIB_SRC).
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
ZLIB_SRC="${ZLIB_SRC:-$PL_ROOT/zlib}"
TIMEOUT_SECS=${TIMEOUT_SECS:-600}
TIER=${TIER:-light}
THREADS=${THREADS:-1}
case "$TIER" in
  light) AUDIT_PASSES="oracle-pass<vacuity;threads=${THREADS}>"
         XFORM_PASSES="oracle-pass<threads=${THREADS}>,simplifycfg,adce,verify" ;;
  heavy) AUDIT_PASSES="oracle-pass<vacuity;heavy;threads=${THREADS}>"
         XFORM_PASSES="oracle-pass<heavy;threads=${THREADS}>,simplifycfg,adce,verify" ;;
  *) echo "[FATAL] unknown TIER '$TIER' (light|heavy)"; exit 1 ;;
esac
read -r -a OPT_ARR  <<< "${OPTS:-O1 O3}"
read -r -a SPEC_ARR <<< "${SPECS:-signed unsigned}"

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

printf '\n%-9s %-4s %8s %8s %6s %6s %8s %8s %6s %8s %8s  %s\n' \
  spec opt before intr unsat sat unknown vacuous skips after elim status

for spec in "${SPEC_ARR[@]}"; do
  case "$spec" in
    signed)   SANF=(-fsanitize=signed-integer-overflow
                    -fsanitize-trap=signed-integer-overflow) ;;
    unsigned) SANF=(-fsanitize=unsigned-integer-overflow
                    -fsanitize-trap=unsigned-integer-overflow) ;;
    *) echo "[FATAL] unknown spec '$spec'"; exit 1 ;;
  esac
  for opt in "${OPT_ARR[@]}"; do
    stem="deflate_integer_${spec}_${opt}"
    [ "$TIER" = "heavy" ] && stem="${stem}_heavy"
    in="evaluation/zlib/${stem}.ll"
    out="evaluation/zlib/${stem}_oracle.ll"
    alog="logs/opt_runs/${stem}.analysis.log"
    xlog="logs/opt_runs/${stem}.transform.log"

    # ---- compile sanitized baseline ----
    clang "-$opt" -S -emit-llvm -g "${SANF[@]}" "${INLINE_FLAGS[@]}" \
      -I"$ZLIB_SRC" "$ZLIB_SRC/deflate.c" -o "$in" \
      || { echo "$spec $opt : COMPILE FAILED"; continue; }

    before=$(grep -c 'call void @llvm.ubsantrap' "$in")
    intr=$(grep -c 'call .*\.with\.overflow' "$in")

    # ---- (A) analysis-only ----
    run_opt opt -load-pass-plugin=build/OraclePass.so -passes="$AUDIT_PASSES" \
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

    # ---- (B) transform ----
    rm -f "$out"
    run_opt opt -load-pass-plugin=build/OraclePass.so \
        -passes="$XFORM_PASSES" \
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

    printf '%-9s %-4s %8s %8s %6s %6s %8s %8s %6s %8s %8s  %s\n' \
      "$spec" "$opt" "$before" "$intr" "$unsat" "$sat" "$unknown" "$vacuous" "$skips" "$after" "$elim" "$status"
  done
done

echo ""
echo "Per-trap verdicts : logs/compilations/deflate_integer_<spec>_<opt>_analysis.txt"
echo "Locate UNSATs     : grep -n -B3 'UNSAT' logs/compilations/deflate_integer_signed_O1_analysis.txt"
