#!/usr/bin/env bash
# run_knob_ablation.sh -- marginal contribution of each knob at a fixed budget.
# Usage: TO=10000 bash scripts/run_knob_ablation.sh
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
TO="${TO:-10000}"
declare -a NAME=( light heavy +ldeq +frame +ind +mv+narrow PROD-nophiinv )
declare -a KNOB=( "light" "heavy" "heavy;ldeq" "heavy;ldeq;frame" \
                  "heavy;ldeq;frame;ind" "heavy;ldeq;frame;ind;mv;narrow" \
                  "heavy;ldeq;frame;ind;mv;narrow;nophiinv" )
printf "%-22s %-14s %6s %6s %6s %6s %8s\n" kernel config UNSAT folds SAT UNKN wall_s
for f in $(ls logs/julia_triage/*.ll logs/rust_triage/*.ll logs/swift_triage/*.ll); do
  case $f in *rust*) TR=";traps=panic";; *julia*) TR=";traps=bounds_error:boundserror";; *) TR="";; esac
  for i in "${!NAME[@]}"; do
    t0=$(date +%s)
    out=$(opt -load-pass-plugin=build/OraclePass.so \
      -passes="oracle-pass<vacuity;${KNOB[$i]};timeout=$TO;threads=1$TR>" -disable-output "$f" 2>&1)
    read U S K <<< "$(echo "$out" | awk '
      /Found UB Trap/{o=1}
      o && /-> UNSAT/{U++; o=0}  o && /-> SAT/{S++; o=0}  o && /-> UNKNOWN/{K++; o=0}
      END{printf "%d %d %d", U, S, K}')"
    M=$(echo "$out" | grep -c "\[mv\] DEAD UNDER HYPOTHESIS")
    printf "%-22s %-14s %6s %6s %6s %6s %8s\n" "$(basename $f .ll)" "${NAME[$i]}" "$U" "$M" "$S" "$K" "$(( $(date +%s) - t0 ))"
  done
done
