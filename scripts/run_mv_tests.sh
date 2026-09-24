#!/bin/bash
# run_mv_tests.sh -- gate for solver-guided loop multi-versioning
# (oracle-pass<mv>, HANDOFF §10.22). Each tests/test_mv_*.ll is run with
#   oracle-pass<vacuity;heavy;ldeq;frame;mv;timeout=3000>
# and checked for: the output module VERIFIES, the number of traps folded in
# fast copies, and the presence/absence of an `mv.fast` clone.
#   test_mv_*_sat.ll : tripwires -- expect 0 folds and NO clone
#   other test_mv_*  : positives -- expect >=1 fold and a clone
# Exit code 1 on any failure. Run from repo root with the pinned opt.
#
# TIMEOUT (ms, default 3000 = the calibrated gate): per-query budget. On the
# c220g2 server (Z3 4.8.12, Haswell) test_mv_symbolic's re-solve under the
# hypothesis candidates takes ~3.6 s vs ~0.6 s on the M-series (Z3 4.16), so
# at 3000 it straddles the budget and flips between PASS and FAIL. Run the
# server gate at the campaign budget instead:  TIMEOUT=10000 bash scripts/run_mv_tests.sh
# (HANDOFF §10.57 / RESURRECTION §7).
TIMEOUT="${TIMEOUT:-3000}"
set -u
ROOT=$(cd "$(dirname "$0")/.." && pwd)
pass=0; fail=0
for t in "$ROOT"/tests/test_mv_*.ll; do
  stem=$(basename "$t" .ll)
  out=$(mktemp); err=$(mktemp)
  opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
      -passes="oracle-pass<vacuity;heavy;ldeq;frame;mv;narrow;timeout=${TIMEOUT};threads=1>" \
      -S "$t" -o "$out" 2>"$err"
  rc=$?
  folds=$(grep -oE 'Folded In Fast Copies \(mv\): [0-9]+' "$err" | awk '{s+=$NF} END{print s+0}')
  clones=$(grep -c 'mv\.fast' "$out" 2>/dev/null); clones=${clones:-0}
  verify="ok"; opt -passes=verify -disable-output "$out" 2>/dev/null || verify="BROKEN"
  case $stem in *_sat) want_fold=0 ;; *) want_fold=1 ;; esac
  res="FAIL"
  if [ $rc -eq 0 ] && [ "$verify" = ok ]; then
    if [ $want_fold -eq 0 ] && [ "$folds" -eq 0 ] && [ "$clones" -eq 0 ]; then res="PASS"; fi
    if [ $want_fold -eq 1 ] && [ "$folds" -ge 1 ] && [ "$clones" -ge 1 ]; then res="PASS"; fi
  fi
  printf "%-28s rc=%d verify=%-6s folds=%s clones=%s  %s\n" "$stem" $rc "$verify" "$folds" "$clones" "$res"
  [ "$res" = PASS ] && pass=$((pass+1)) || fail=$((fail+1))
  rm -f "$out" "$err"
done
echo "================ MV PASS=$pass FAIL=$fail ================"
[ $fail -eq 0 ]
