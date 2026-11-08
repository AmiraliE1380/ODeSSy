#!/usr/bin/env bash
# run_determinism.sh -- output determinism of the pass (HANDOFF §13.6/§13.9 step 5).
# Static: Thorough at THREADS threads, RUNS runs per input (17 guard-ablation
# kernels, every zlib/zstd module, CryptoSwift; x86 IR in git); one line per
# input: number of distinct output IRs (1 = deterministic). A difference is
# expected only where a query finishes near its time budget.
# Usage: [THREADS=10] [RUNS=3] [OUT=results/static/determinism_<date>] bash scripts/run_determinism.sh
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
T="${THREADS:-10}"; R="${RUNS:-3}"; OUT="${OUT:-results/static/determinism_$(date +%m%d)}"; mkdir -p "$OUT"
W="$(mktemp -d)"; trap 'rm -rf "$W"' EXIT
PIN=""; command -v numactl >/dev/null && PIN="numactl --cpunodebind=0 --membind=0"
KN="heavy;frame;ind;mv;narrow;timeout=10000;threads=$T"
echo "input,runs,distinct_outputs" > "$OUT/determinism.csv"
run() {   # name input traps
  for r in $(seq "$R"); do
    $PIN opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<$KN$3>" -S "$2" -o "$W/$r.ll" 2>/dev/null
  done
  d=$(for r in $(seq "$R"); do tail -n +2 "$W/$r.ll" | md5sum | cut -d' ' -f1; done | sort -u | wc -l)
  echo "$1,$R,$d" | tee -a "$OUT/determinism.csv"
}
for d in results/static/guard_ablation_0927/*_*/; do k=$(basename "$d"); case $k in Rust*) TR=";traps=panic:odessy.chk";; Julia*) TR=";traps=bounds_error:boundserror:odessy.chk";; *) TR=";traps=odessy.chk";; esac; run "$k" "$d/tag.ll" "$TR"; done
D=results/static/pipeline_cost_par/ir
for f in $(ls $D | grep -E "^(zstd|zlib)_[a-zA-Z0-9_]+\.ll$"); do run "${f%.ll}" "$D/$f" ""; done
run swift_cryptoswift "$D/swift_cryptoswift.ll" ""
echo "deterministic: $(awk -F, 'NR>1 && $3==1' "$OUT/determinism.csv" | wc -l) of $(($(wc -l < "$OUT/determinism.csv")-1))" | tee "$OUT/summary.txt"
