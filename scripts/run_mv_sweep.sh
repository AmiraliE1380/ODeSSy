#!/bin/bash
# run_mv_sweep.sh -- static multi-versioning sweep (HANDOFF §10.26).
# For every local kernel IR (Swift / Rust / Julia triage outputs), run the
# full tier with `mv` at the given budgets and report: UNSAT (ordinary
# proofs), MV (traps folded in fast copies), SAT/UNKNOWN left, and every
# mined hypothesis H (deduplicated per kernel). Benchmarks are FROZEN: this
# script never touches sources; it only reads the IR already in logs/.
# Usage: bash scripts/run_mv_sweep.sh [budget_ms ...]   (default: 300 3000)
set -u
ROOT=$(cd "$(dirname "$0")/.." && pwd)
BUDGETS=${*:-"300 3000"}
run() { # ll budget traps
  opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
      -passes="oracle-pass<vacuity;heavy;ldeq;frame;mv;timeout=$2;threads=8$3>" \
      -disable-output "$1" 2>&1
}
for ll in "$ROOT"/logs/swift_triage/*.ll "$ROOT"/logs/rust_triage/*.ll "$ROOT"/logs/julia_triage/*.ll; do
  case $ll in *rust*) TR=";traps=panic"; LANG=rust;; *julia*) TR=";traps=bounds_error:boundserror"; LANG=julia;; *) TR=""; LANG=swift;; esac
  stem=$(basename "$ll" .ll)
  for B in $BUDGETS; do
    out=$(run "$ll" "$B" "$TR")
    unsat=$(echo "$out" | grep -c -- '-> UNSAT')
    sat=$(echo "$out" | grep -c -- '-> SAT')
    unk=$(echo "$out" | grep -c -- '-> UNKNOWN')
    mv=$(echo "$out" | grep -c 'SUCCESS (fast copy)')
    total=$((unsat+sat+unk))
    printf "%-6s %-22s t=%-5s edges=%-3s UNSAT=%-3s MV=%-3s SAT=%-3s UNKNOWN=%-3s\n" "$LANG" "$stem" "$B" "$total" "$unsat" "$mv" "$sat" "$unk"
    echo "$out" | grep -oE 'HYPOTHESIS H = \{[^}]*\}' | sort | uniq -c | sed 's/^ */      /'
    echo "$out" | grep -oE '\[mv\] (hypothesis contradicts[^:]*|SKIP[^\n]*)' | sort | uniq -c | sed 's/^ */      /'
  done
done
