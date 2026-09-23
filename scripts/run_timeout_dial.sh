#!/usr/bin/env bash
# run_timeout_dial.sh -- per-query timeout sensitivity at a FIXED knob set.
# Usage: KNOBS="heavy;ldeq;frame;ind;mv;narrow" TOS="300 1000 3000 10000" bash scripts/run_timeout_dial.sh
# Per (kernel, timeout): UNSAT / of which by induction / MV folds / SAT / UNKNOWN / wall seconds.
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
KNOBS="${KNOBS:-heavy;ldeq;frame;ind;mv;narrow}"
TOS="${TOS:-300 1000 3000 10000}"
FILES="${FILES:-$(ls logs/swift_triage/*.ll logs/rust_triage/*.ll logs/julia_triage/*.ll)}"
printf "%-22s %-6s %6s %5s %6s %6s %6s %8s\n" kernel budget UNSAT ind folds SAT UNKN wall_s
for f in $FILES; do
  case $f in *rust*) TR=";traps=panic";; *julia*) TR=";traps=bounds_error:boundserror";; *) TR="";; esac
  for t in $TOS; do
    t0=$(date +%s)
    out=$(opt -load-pass-plugin=build/OraclePass.so \
      -passes="oracle-pass<vacuity;$KNOBS;timeout=$t;threads=1$TR>" -disable-output "$f" 2>&1)
    # one verdict per trap: the FIRST verdict line after each "Found UB Trap"
    read U I S K <<< "$(echo "$out" | awk '
      /Found UB Trap/{o=1}
      o && /-> UNSAT/{U++; if ($0 ~ /\[ind\]/) I++; o=0}
      o && /-> SAT/{S++; o=0}
      o && /-> UNKNOWN/{K++; o=0}
      END{printf "%d %d %d %d", U, I, S, K}')"
    M=$(echo "$out" | grep -c "\[mv\] DEAD UNDER HYPOTHESIS")
    printf "%-22s %-6s %6s %5s %6s %6s %6s %8s\n" "$(basename $f .ll)" "$t" "$U" "$I" "$M" "$S" "$K" "$(( $(date +%s) - t0 ))"
  done
done
