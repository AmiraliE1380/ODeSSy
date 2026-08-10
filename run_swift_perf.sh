#!/usr/bin/env bash
# =============================================================================
# run_swift_perf.sh -- Swift x ODeSSy runtime experiment (sha256 first).
#
# Question: the 3 statically-eliminated bounds checks sit in SHA-256's
# message-schedule inner loop (blocks 257/259/261; 16 iters/block, every
# block). Ceiling from the native matrix: ~+9.5% (checks off). How much
# does deleting 3-of-5 hot-loop checks actually recover?
#
# Pipeline (identical for every config; only the middle opt differs):
#   swiftc -O -emit-ir  ->  opt <config>  ->  llc -O2  ->  swiftc link
#
# Configs (attribution doctrine -- report oracle vs base AND vs base2x):
#   base    : opt round-trip with -passes=verify        (control for the
#             emit-ir/opt/llc sandwich itself)
#   base2x  : TWO verify round-trips                    (control for
#             round-trip-count effects; any base~base2x gap = noise floor)
#   oracle  : oracle-pass<heavy;ldeq;timeout=300;threads=8>  (no vacuity
#             in perf runs, per doctrine)
#
# SOUNDNESS GATE: all three binaries must print byte-identical stdout on
# the workload before any timing is trusted. A mismatch aborts the run.
#
# Usage : bash run_swift_perf.sh                     (Mac smoke: REPS=3)
#         REPS=15 bash run_swift_perf.sh             (server night)
#         RUNARGS="..." to pass workload args to the kernel binary.
# Needs : swiftc, pinned opt+llc, python3; run from repo root.
# Output: evaluation/perf_swift.csv (append-aware) + summary table
#         (median primary; min/avg shown; outlier audit min<98%median).
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
NB="${NB:-$ROOT/native_bench}"
W="$ROOT/perf_swift_work"; mkdir -p "$W" "$ROOT/evaluation"
CSV="$ROOT/evaluation/perf_swift.csv"
KERNEL="${KERNEL:-$NB/sha256.swift}"
stem=$(basename "$KERNEL" .swift)
REPS="${REPS:-3}"
RUNARGS="${RUNARGS:-}"
ORACLE_PASSES="${ORACLE_PASSES:-oracle-pass<heavy;ldeq;timeout=300;threads=8>}"

for t in swiftc opt llc python3; do
  command -v $t >/dev/null || { echo "[FATAL] $t not on PATH"; exit 1; }
done
echo "swiftc: $(swiftc --version 2>&1 | head -1)"
echo "opt   : $(opt --version | head -1)"
echo "reps  : $REPS   kernel: $stem   runargs: '${RUNARGS}'"
echo ""

# ---------- PHASE A: build all three binaries ----------
echo "==== PHASE A: building ===="
# EXTRA_SRCS: additional .swift files compiled whole-module with the
# kernel (library rows, e.g. CryptoSwift). Empty => single-file as before.
swiftc -O -wmo -emit-ir "$KERNEL" ${EXTRA_SRCS:-} -o "$W/$stem.ll" \
  || { echo "[FATAL] swiftc emit-ir"; exit 1; }
traps0=$(grep -cE 'call void @llvm\.(ubsan)?trap' "$W/$stem.ll")

build_one() {  # $1=config
  local cfg=$1 ll="$W/$stem.$1.ll" elim=0
  # CLEANUP runs in EVERY config (symmetric exposure) and is a FULL O3:
  # the value of an eliminated check is what the optimizer can do once
  # the branch is gone (unroll/vectorize/schedule), so the oracle must
  # be SANDWICHED: swiftc -O -> oracle -> O3 -> llc. base gets the same
  # post-O3 (one round-trip), base2x gets it twice (round-trip control),
  # so deltas attribute to the eliminations, not to extra optimization.
  local CLEANUP="default<O3>"
  case $cfg in
    base)   opt -passes="$CLEANUP" -S "$W/$stem.ll" -o "$ll" || return 1 ;;
    base2x) opt -passes="$CLEANUP" -S "$W/$stem.ll" -o "$W/.tmp.ll" \
            && opt -passes="$CLEANUP" -S "$W/.tmp.ll" -o "$ll" || return 1 ;;
    oracle) mkdir -p logs/compilations
            opt -load-pass-plugin="$ROOT/build/OraclePass.so" \
                -passes="$ORACLE_PASSES,$CLEANUP" -S "$W/$stem.ll" -o "$ll" \
                2>"$W/$stem.oracle.err" || return 1
            elim=$(grep -oE 'Total Traps Eliminated: [0-9]+' "$W/$stem.oracle.err" \
                   | awk '{s+=$4} END{print s+0}') ;;
  esac
  # Strip Swift's stack-probe hardening attr: trunk llc rejects it on
  # AArch64 ("Unsupported stack probing method"). Applied identically to
  # every config, so the comparison stays fair; note it in the paper's
  # methodology (binaries lack stack-clash probes vs stock swiftc).
  perl -pi -e 's/"probe-stack"="[^"]*"\s*//g' "$ll"
  llc -O2 -filetype=obj "$ll" -o "$W/$stem.$cfg.o" || return 1
  swiftc -O "$W/$stem.$cfg.o" -o "$W/$stem.$cfg" || return 1
  local t1; t1=$(grep -cE 'call void @llvm\.(ubsan)?trap' "$ll")
  printf '  built %-8s traps %4s->%-4s bin %8s B  eliminated %s\n' \
    "$cfg" "$traps0" "$t1" "$(wc -c < "$W/$stem.$cfg" | tr -d ' ')" "$elim"
}
for cfg in base base2x oracle; do
  build_one $cfg || { echo "[FATAL] build $cfg failed"; exit 1; }
done

# ---------- PHASE B: soundness gate (byte-identical stdout) ----------
echo "==== PHASE B: output equivalence gate ===="
for cfg in base base2x oracle; do
  "$W/$stem.$cfg" $RUNARGS > "$W/out.$cfg" 2>/dev/null \
    || { echo "[FATAL] $cfg run failed"; exit 1; }
done
cmp -s "$W/out.base" "$W/out.base2x" && cmp -s "$W/out.base" "$W/out.oracle" \
  || { echo "[FATAL] OUTPUT MISMATCH -- soundness gate tripped. Investigate before timing!"; exit 1; }
echo "  outputs byte-identical across all configs -- gate passed"

# ---------- PHASE C: shuffled interleaved timing ----------
echo "==== PHASE C: $REPS shuffled reps x 3 configs ===="
[ -f "$CSV" ] || echo "kernel,config,rep,seconds" > "$CSV"
python3 - "$W" "$stem" "$REPS" "$CSV" "$RUNARGS" <<'PYEOF'
import random, subprocess, sys, time
w, stem, reps, csv, runargs = sys.argv[1], sys.argv[2], int(sys.argv[3]), sys.argv[4], sys.argv[5]
args = runargs.split() if runargs else []
cfgs = ["base", "base2x", "oracle"]
rows = []
for r in range(reps):
    order = cfgs[:]; random.shuffle(order)
    for c in order:
        exe = f"{w}/{stem}.{c}"
        t0 = time.perf_counter()
        subprocess.run([exe] + args, stdout=subprocess.DEVNULL, check=True)
        rows.append((c, r + 1, time.perf_counter() - t0))
    print(f"  rep {r+1}/{reps}", flush=True)
with open(csv, "a") as f:
    for c, r, s in rows:
        f.write(f"{stem},{c},{r},{s:.6f}\n")
# summary: median primary, min/avg shown, outlier audit
import statistics
print(f"\n{'config':8s} {'median':>9s} {'min':>9s} {'avg':>9s}  audit")
med = {}
for c in cfgs:
    xs = sorted(s for cc, r, s in rows if cc == c)
    m = statistics.median(xs); med[c] = m
    audit = "OUTLIER(min<98%med)" if xs[0] < 0.98 * m else "ok"
    print(f"{c:8s} {m:9.4f} {xs[0]:9.4f} {sum(xs)/len(xs):9.4f}  {audit}")
for ref in ("base", "base2x"):
    d = (med[ref] - med["oracle"]) / med[ref] * 100
    print(f"oracle vs {ref}: {d:+.2f}% (median)")
PYEOF
echo ""
echo "CSV appended: $CSV   (rerun with REPS=15 on the server for the real number)"
