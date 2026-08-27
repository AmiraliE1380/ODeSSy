#!/usr/bin/env bash
# =============================================================================
# run_zstd_perf.sh -- zstd whole-library RUNTIME experiment (SIGNED spec).
# The unsigned trap spec is dynamically un-runnable on zstd (intentional
# xxhash wraps fire; see zstd_overhead_ceiling_0827.log), so the runtime
# row uses the signed spec: 552 traps, the spec whose CLI runs clean.
#
# Pipeline mirrors run_zlib_perf.sh: per-TU clang -O3 + sanitize-trap ->
# .ll -> {base: opt -O3 | base2x: opt -O3 twice | oracle: oracle-pass +
# cleanup + opt -O3} -> llc -> link with unsanitized programs/*.c into
# three zstd CLIs. Byte-identity gate on a compressed corpus, then
# REPS shuffled reps of compression AND decompression, medians primary.
#
# Knobs: REPS=30 JOBS=4 THREADS=8 ZSTD=/path CORPUS_MB=512
#        ORACLE_PASSES (default full tier @300ms)
# Out  : results log on stdout; evaluation/perf_zstd.csv
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
PL_ROOT="${PL_ROOT:-$(dirname "$ROOT")}"
ZSTD="${ZSTD:-$PL_ROOT/zstd}"
REPS=${REPS:-30}
JOBS=${JOBS:-4}
THREADS=${THREADS:-8}
CORPUS_MB=${CORPUS_MB:-512}
ORACLE_PASSES="${ORACLE_PASSES:-oracle-pass<heavy;ldeq;frame;timeout=300;threads=${THREADS}>}"
CLEANUP="simplifycfg,adce,verify"
SAN="-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow"
INC="-I$ZSTD/lib -I$ZSTD/lib/common -DZSTD_LEGACY_SUPPORT=0"
W="$ROOT/perf_zstd_work"; mkdir -p "$W"/{ll,obj.base,obj.base2x,obj.oracle,progobj}
CSV="$ROOT/evaluation/perf_zstd.csv"
[ -f "$CSV" ] || echo "config,workload,rep,seconds" > "$CSV"
PIN="numactl --cpunodebind=0 --membind=0"; command -v numactl >/dev/null || PIN=""
cd "$ROOT" || exit 1
( cd build && ninja ) || { echo "[FATAL] build failed"; exit 1; }

echo "==== PHASE A: lib TUs -> IR (signed spec) ===="
mapfile -t TUS < <(cd "$ZSTD/lib" && find common compress decompress dictBuilder -name '*.c' | sort)
TRAPS_IN=0
for tu in "${TUS[@]}"; do
  stem=$(basename "$tu" .c)
  clang -O3 -S -emit-llvm $SAN $INC "$ZSTD/lib/$tu" -o "$W/ll/$stem.ll" \
    || { echo "[FATAL] clang $tu"; exit 1; }
  n=$(grep -c 'call void @llvm.ubsantrap' "$W/ll/$stem.ll" || true)
  TRAPS_IN=$((TRAPS_IN + n))
done
echo "  ${#TUS[@]} TUs, $TRAPS_IN signed traps total"

echo "==== PHASE B: per-config transform + codegen (JOBS=$JOBS) ===="
transform_one() {  # $1=stem $2=cfg
  local ll="$W/ll/$1.ll" out="$W/obj.$2/$1.o" tmp="$W/obj.$2/$1.ll"
  case "$2" in
    base)   opt -O3 -S "$ll" -o "$tmp" ;;
    base2x) opt -O3 -S "$ll" | opt -O3 -S -o "$tmp" ;;
    oracle) opt -load-pass-plugin=build/OraclePass.so \
              -passes="$ORACLE_PASSES,$CLEANUP" -S "$ll" -o "$tmp.mid" \
              && opt -O3 -S "$tmp.mid" -o "$tmp" ;;
  esac || return 1
  llc -O2 -relocation-model=pic -filetype=obj "$tmp" -o "$out"
}
export -f transform_one; export W ORACLE_PASSES CLEANUP
for cfg in base base2x oracle; do
  t0=$(date +%s)
  printf '%s\n' "${TUS[@]}" | sed 's|.*/||; s|\.c$||' \
    | xargs -P "$JOBS" -I{} bash -c "transform_one {} $cfg" \
    || { echo "[FATAL] transform $cfg"; exit 1; }
  tfin=0
  for f in "$W/obj.$cfg"/*.ll; do
    n=$(grep -c 'call void @llvm.ubsantrap' "$f" || true); tfin=$((tfin + n))
  done
  echo "  built $cfg   traps $TRAPS_IN->$tfin   ($(($(date +%s)-t0))s)"
done

echo "==== PHASE C: programs + lib asm (unsanitized, shared) + link ===="
for p in "$ZSTD/programs/"*.c; do
  clang -O3 $INC -I"$ZSTD/programs" -c "$p" -o "$W/progobj/$(basename "$p" .c).o" \
    || { echo "[FATAL] clang program $p"; exit 1; }
done
# lib assembly TUs (e.g. huf_decompress_amd64.S) -- shared by every config
while IFS= read -r s; do
  clang -O3 $INC -c "$s" -o "$W/progobj/asm_$(basename "$s" .S).o" \
    || { echo "[FATAL] clang asm $s"; exit 1; }
done < <(find "$ZSTD/lib" -name '*.S')
for cfg in base base2x oracle; do
  clang "$W/obj.$cfg"/*.o "$W/progobj"/*.o -o "$W/zstd.$cfg" -lpthread \
    || { echo "[FATAL] link $cfg"; exit 1; }
done

echo "==== PHASE D: corpus + byte-identity gate ===="
CORP=/dev/shm/zstd_perf_corpus.txt
if [ ! -s "$CORP" ]; then
  cat "$ROOT"/native_bench/*.swift "$ROOT"/scripts/*.sh "$ROOT"/docs/*.md > /dev/shm/zseed.txt
  : > "$CORP"
  while [ "$(stat -c %s "$CORP")" -lt $((CORPUS_MB * 1024 * 1024)) ]; do cat /dev/shm/zseed.txt >> "$CORP"; done
fi
for cfg in base base2x oracle; do
  "$W/zstd.$cfg" -3 -f -c "$CORP" > "/dev/shm/zout.$cfg" 2>/dev/null
done
cmp -s /dev/shm/zout.base /dev/shm/zout.base2x && cmp -s /dev/shm/zout.base /dev/shm/zout.oracle \
  && echo "  outputs byte-identical across configs -- gate passed" \
  || { echo "[FATAL] OUTPUT MISMATCH -- aborting before timing"; exit 1; }
cp /dev/shm/zout.base /dev/shm/zcorpus.zst

echo "==== PHASE E: $REPS shuffled reps x 3 configs x {comp,decomp} ===="
python3 - "$W" "$REPS" "$CSV" "$CORP" "$PIN" <<'PYEOF'
import random, subprocess, sys, statistics, time
W, REPS, CSV, CORP, PIN = sys.argv[1], int(sys.argv[2]), sys.argv[3], sys.argv[4], sys.argv[5]
pin = PIN.split() if PIN else []
cfgs = ["base", "base2x", "oracle"]
times = {(c, w): [] for c in cfgs for w in ("comp", "decomp")}
jobs = [(c, w) for c in cfgs for w in ("comp", "decomp")]
# warmup
for c, w in jobs:
    cmd = [f"{W}/zstd.{c}"] + (["-3", "-f", "-c", CORP] if w == "comp" else ["-d", "-c", "/dev/shm/zcorpus.zst"])
    subprocess.run(pin + cmd, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True)
for r in range(REPS):
    random.shuffle(jobs)
    for c, w in jobs:
        cmd = [f"{W}/zstd.{c}"] + (["-3", "-f", "-c", CORP] if w == "comp" else ["-d", "-c", "/dev/shm/zcorpus.zst"])
        t0 = time.monotonic()
        subprocess.run(pin + cmd, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True)
        dt = time.monotonic() - t0
        times[(c, w)].append(dt)
        with open(CSV, "a") as f:
            f.write(f"{c},{w},{r+1},{dt:.4f}\n")
    print(f"  rep {r+1}/{REPS}", flush=True)
print()
print(f"{'config':10s} {'workload':8s} {'median':>8s} {'min':>8s} {'avg':>8s}")
med = {}
for c in cfgs:
    for w in ("comp", "decomp"):
        ts = times[(c, w)]
        med[(c, w)] = statistics.median(ts)
        print(f"{c:10s} {w:8s} {statistics.median(ts):8.4f} {min(ts):8.4f} {statistics.mean(ts):8.4f}")
for w in ("comp", "decomp"):
    b, b2, o = med[("base", w)], med[("base2x", w)], med[("oracle", w)]
    print(f"{w}: oracle vs base {100*(b/o-1):+.2f}%   vs base2x {100*(b2/o-1):+.2f}%   (noise floor base<->base2x {100*abs(b/b2-1):.2f}%)")
PYEOF
echo "CSV appended: $CSV"
