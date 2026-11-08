#!/usr/bin/env bash
# =============================================================================
# run_par_gate.sh -- parallelism gate (HANDOFF §13.8/§13.9, step 1). Static:
# only the compiler runs, timed.
# For every input (17 guard-ablation kernels, incl. the Julia ones, every
# zlib/zstd module, CryptoSwift; all x86 IR in git) and every tier (default sequential, ind-par, mv-par,
# ind-par+mv-par), Thorough at THREADS threads, socket-0 pinned when numactl
# exists: wall time, removed and guarded checks, IR identity vs. the default.
# A tier is adopted for the campaign only if it keeps the same proofs and wins
# on total time.
# Usage: [THREADS=10] [OUT=results/static/par_gate_<host>] bash scripts/run_par_gate.sh
# Output: $OUT/runs.csv, $OUT/summary.txt
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
T="${THREADS:-10}"; HOST="$(hostname -s)"
OUT="${OUT:-results/static/par_gate_$(date +%m%d)}"; mkdir -p "$OUT"
W="$(mktemp -d)"; trap 'rm -rf "$W"' EXIT
PIN=""; command -v numactl >/dev/null && PIN="numactl --cpunodebind=0 --membind=0"
KN="heavy;frame;ind;mv;narrow;timeout=10000;threads=$T"
read -r -a TIERS <<< "${TIERS:-default ind-par mv-par ind-par+mv-par}"   # default must come first
now() { python3 -c 'import time;print(time.time())'; }
echo "input,tier,seconds,removed,guarded,same_ir_as_default" > "$OUT/runs.csv"
{ echo "host $(hostname)"; echo "commit $(git log --oneline -1)"; echo "threads $T"; echo "turbo $(cat /sys/devices/system/cpu/intel_pstate/no_turbo 2>/dev/null)"; } > "$OUT/meta.txt"

run() {   # name input traps
  for t in "${TIERS[@]}"; do
    X=""; case $t in ind-par) X=";ind-par";; mv-par) X=";mv-par";; ind-par+mv-par) X=";ind-par;mv-par";; esac
    s=$(now)
    $PIN opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<$KN$X$3>" -S "$2" -o "$W/$t.ll" 2>"$W/$t.err"
    e=$(now)
    r=$(grep -c "SUCCESS: Trap" "$W/$t.err"); g=$(grep -c "SUCCESS (fast copy)" "$W/$t.err")
    same=$(cmp -s <(tail -n +2 "$W/default.ll") <(tail -n +2 "$W/$t.ll") && echo 1 || echo 0)
    python3 -c "print('$1,$t,%.2f,$r,$g,$same' % ($e-$s))" >> "$OUT/runs.csv"
  done
}
for d in results/static/guard_ablation_0927/*_*/; do k=$(basename "$d"); case $k in Rust*) TR=";traps=panic:odessy.chk";; Julia*) TR=";traps=bounds_error:boundserror:odessy.chk";; *) TR=";traps=odessy.chk";; esac; run "$k" "$d/tag.ll" "$TR"; done
D=results/static/pipeline_cost_par/ir
for f in $(ls $D | grep -E "^(zstd|zlib)_[a-zA-Z0-9_]+\.ll$"); do run "${f%.ll}" "$D/$f" ""; done
run swift_cryptoswift "$D/swift_cryptoswift.ll" ""

python3 - "$OUT" <<'EOF' | tee "$OUT/summary.txt"
import csv, sys, collections
rows = list(csv.DictReader(open(sys.argv[1] + "/runs.csv")))
by = collections.defaultdict(dict)
for r in rows: by[r["input"]][r["tier"]] = r
tiers = [t for t in ["default", "ind-par", "mv-par", "ind-par+mv-par"] if any(t in by[i] for i in by)]
for t in tiers:
    S = sum(float(by[i][t]["seconds"]) for i in by)
    R = sum(int(by[i][t]["removed"]) for i in by); G = sum(int(by[i][t]["guarded"]) for i in by)
    same = sum(int(by[i][t]["same_ir_as_default"]) for i in by)
    diff = [i for i in by if (by[i][t]["removed"], by[i][t]["guarded"]) != (by[i]["default"]["removed"], by[i]["default"]["guarded"])]
    print(f"{t:16s} total {S:8.1f} s  removed {R}  guarded {G}  same IR {same}/{len(by)}  proof diffs: {diff}")
print("\nslowest inputs (default):")
for i in sorted(by, key=lambda i: -float(by[i]["default"]["seconds"]))[:10]:
    print(f"  {i:28s} " + "  ".join(f"{t} {float(by[i][t]['seconds']):7.1f}" for t in tiers))
EOF
