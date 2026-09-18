#!/usr/bin/env bash
# run_ind_sweep.sh -- out-of-sample sweep for the inductive body encoding
# (HANDOFF §10.53). Arms (all with vacuity; threads=1):
#   A rules      heavy;ldeq;frame
#   B ind-only   heavy;ldeq;frame;ind;nophiinv
#   C both       heavy;ldeq;frame;ind
#   D both+mv    heavy;ldeq;frame;ind;mv;narrow        (3 s only)
# Usage: ARMS="A B C" BUDGET=300 CORPUS="cryptoswift zlib zstd lz4" bash scripts/run_ind_sweep.sh
# Per (corpus, arm): UNSAT / of which [ind] / SAT / UNKNOWN / MV folds / wall seconds.
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
ARMS="${ARMS:-A B C}"; BUDGET="${BUDGET:-300}"; CORPUS="${CORPUS:-cryptoswift zlib zstd lz4}"
files() { case $1 in
  cryptoswift) echo logs/cryptoswift.ll;;
  zlib) ls perf_test/signed.*.ll | grep -vE '\.(b2|or|or2)\.ll$';;
  zstd) ls perf_zstd_work/ll/*.ll;;
  lz4) echo evaluation/lz4/lz4_integer_O3.ll evaluation/lz4/lz4_strict_O3.ll;; esac; }
knobs() { case $1 in A) echo "heavy;ldeq;frame";; B) echo "heavy;ldeq;frame;ind;nophiinv";; C) echo "heavy;ldeq;frame;ind";; D) echo "heavy;ldeq;frame;ind;mv;narrow";; esac; }
printf "%-12s %-3s %-6s %7s %7s %7s %7s %7s %8s\n" corpus arm budget UNSAT ind SAT UNKN MVfold wall_s
for c in $CORPUS; do for a in $ARMS; do
  t0=$(date +%s); U=0; I=0; S=0; K=0; M=0
  for f in $(files $c); do
    out=$(opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<vacuity;$(knobs $a);timeout=$BUDGET;threads=1>" -disable-output "$f" 2>&1)
    U=$((U + $(echo "$out" | grep -cE '^\s*-> UNSAT')))
    I=$((I + $(echo "$out" | grep -cE '^\s*-> UNSAT.*\[ind\]')))
    S=$((S + $(echo "$out" | grep -cE '^\s*-> SAT')))
    K=$((K + $(echo "$out" | grep -cE '^\s*-> UNKNOWN')))
    M=$((M + $(echo "$out" | grep -cE '\[mv\] .*(versionable|H_T|UNSAT under H)' )))
    echo "$out" > "results/static/ind_sweep/${c}.$(basename $f .ll).${a}.${BUDGET}.log"
  done
  printf "%-12s %-3s %-6s %7d %7d %7d %7d %7d %8d\n" $c $a $BUDGET $U $I $S $K $M $(( $(date +%s) - t0 ))
done; done
