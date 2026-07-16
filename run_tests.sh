#!/usr/bin/env bash
# =============================================================================
# run_tests.sh -- regression suite over the hand-written IR tests in tests/.
#
# Ground truth from the filename convention:
#   *_sat*  -> the trap is reachable, expect SAT (trap kept)
#   others  -> the trap is provably dead, expect UNSAT (trap eliminated)
#
# For each .ll: run analysis-only, pull per-trap verdicts from the pass log,
# and PASS/FAIL against the expectation. Any [VACUOUS] or [Skip] is an
# automatic FAIL regardless of expectation -- those mean the machinery broke.
#
# Exit code: 0 iff every test passes (usable as a pre-commit / CI gate).
# =============================================================================
set -u
ROOT="$HOME/michigan/pl/smt-compiler-oracle"
cd "$ROOT" || exit 1
mkdir -p logs/compilations

echo "==== rebuilding pass ===="
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }

pass=0; fail=0
printf '\n%-20s %-8s %6s %6s %8s %8s %6s  %s\n' \
  test expect unsat sat unknown vacuous skips result

for ll in tests/*.ll; do
  stem=$(basename "$ll" .ll)
  vlog="logs/compilations/${stem}.txt"
  rm -f "$vlog"

  opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass" \
      -disable-output "$ll" >/dev/null 2>&1
  rc=$?

  if [ "$rc" -ne 0 ] || [ ! -f "$vlog" ]; then
    printf '%-20s %-8s %6s %6s %8s %8s %6s  %s\n' \
      "$stem" "?" - - - - - "FAIL (opt rc=$rc / no log)"
    fail=$((fail+1)); continue
  fi

  unsat=$(grep -c 'UNSAT' "$vlog")
  sat=$(grep -c 'SAT (WARNING' "$vlog")
  unknown=$(grep -c 'UNKNOWN (Solver gave up' "$vlog")
  vacuous=$(grep -c '\[VACUOUS\]' "$vlog")
  skips=$(grep -c '\[Skip\]' "$vlog")

  case "$stem" in
    *_sat*) expect="SAT"   ;;
    *)      expect="UNSAT" ;;
  esac

  result="FAIL"
  if [ "$vacuous" -eq 0 ] && [ "$skips" -eq 0 ] && [ "$unknown" -eq 0 ]; then
    if [ "$expect" = "UNSAT" ] && [ "$unsat" -ge 1 ] && [ "$sat" -eq 0 ]; then
      result="PASS"
    elif [ "$expect" = "SAT" ] && [ "$sat" -ge 1 ] && [ "$unsat" -eq 0 ]; then
      result="PASS"
    fi
  fi
  [ "$result" = "PASS" ] && pass=$((pass+1)) || fail=$((fail+1))

  printf '%-20s %-8s %6s %6s %8s %8s %6s  %s\n' \
    "$stem" "$expect" "$unsat" "$sat" "$unknown" "$vacuous" "$skips" "$result"
done

echo ""
echo "================ PASS=$pass FAIL=$fail ================"
[ $fail -eq 0 ] || { echo "Inspect failures: logs/compilations/<test>.txt"; exit 1; }
