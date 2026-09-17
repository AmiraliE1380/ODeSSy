#!/bin/bash
# run_verdict_probe.sh -- verdict-multiset probe over every local kernel IR x 3
# tiers at 300 ms, threads=1 (deterministic). Used as the regression gate
# for encoder/fact changes: compare two runs positionally (HANDOFF §10.15).
# Usage: bash scripts/run_verdict_probe.sh [extra knobs, e.g. ";mv"] > out.log
ROOT=$(cd "$(dirname "$0")/.." && pwd); EXTRA="${1:-}"
run() { opt -load-pass-plugin="$ROOT/build/OraclePass.so" -passes="oracle-pass<vacuity;$2;timeout=300;threads=1$3$EXTRA>" -disable-output "$1" 2>&1 | grep -E "^\s*-> (UNSAT|SAT|UNKNOWN)" | sed -E 's/.*-> (UNSAT|SAT|UNKNOWN).*/\1/' | sort | uniq -c | awk '{printf "%s=%s ",$2,$1}'; }
for ll in "$ROOT"/logs/swift_triage/*.ll "$ROOT"/logs/rust_triage/*.ll "$ROOT"/logs/julia_triage/*.ll; do
  case $ll in *rust*) TR=";traps=panic";; *julia*) TR=";traps=bounds_error:boundserror";; *) TR="";; esac
  for tier in light "heavy;ldeq" "heavy;ldeq;frame"; do printf "%-28s %-6s | %s\n" "$(basename "$ll" .ll)" "${tier:0:5}" "$(run "$ll" "$tier" "$TR")"; done
done
