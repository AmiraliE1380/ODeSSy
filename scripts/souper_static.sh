#!/usr/bin/env bash
# =============================================================================
# souper_static.sh -- Souper vs ODeSSy, every module of zlib (both spec) and zstd
# (signed spec), static (HANDOFF §11.8). IR is emitted ONCE per module with
# Souper's clang 18; every arm reads that same file and is followed by its own
# LLVM's -O3. Arms per module:
#   base18 | souper_const (integer constants only)         [LLVM 18, Souper's Z3]
#   base23 | thorough | fast | light                         [LLVM 23, ODeSSy's Z3]
# Souper synthesis is dropped (pilot: 2.4 h on deflate.c, no change); SYNTH=1 adds
# it with a per-module cap of SYNTH_CAP seconds (killed modules are marked TIMEOUT).
# Checks removed = ubsantrap call sites of the arm's own baseline minus the arm's.
# Results are committed locally after every module (resumable record).
# Usage (tmux): bash scripts/souper_static.sh 2>&1 | tee /mydata/souper_static.log
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
SOUPER=/mydata/souper; L18="$SOUPER/third_party/llvm-Release-install/bin"
PLUG="$SOUPER/build/libsouperPass.so"
ZLIB="${ZLIB:-$(dirname "$ROOT")/zlib}"; ZSTD="${ZSTD:-$(dirname "$ROOT")/zstd}"
TIMEOUT_S="${TIMEOUT_S:-10}"; SYNTH="${SYNTH:-0}"; SYNTH_CAP="${SYNTH_CAP:-1800}"; ONLY="${ONLY:-}"
OUT=results/static/souper_static; IR="$OUT/ir"; mkdir -p "$IR"
CSV="$OUT/modules.csv"; [ -s "$CSV" ] || echo "repo,module,arm,seconds,traps,removed" > "$CSV"
PIN="numactl --cpunodebind=0 --membind=0"; command -v numactl >/dev/null || PIN=""
COMMON="-solver-timeout=$TIMEOUT_S -souper-external-cache=false"
log() { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; }
tm() { python3 -c 'import subprocess,sys,time,os
t=time.monotonic(); r=subprocess.run(sys.argv[1:], stderr=open(os.environ.get("ERRF","/dev/null"),"w"))
print(f"{time.monotonic()-t:.2f}" if r.returncode==0 else ("TIMEOUT" if r.returncode==124 else "FAIL"))' "$@"; }
traps() { grep -c 'call void @llvm.ubsantrap' "$1" 2>/dev/null || echo NA; }
git config user.email >/dev/null || git config user.email "ebrahimzadeh.amirali@gmail.com"
git config user.name  >/dev/null || git config user.name  "Amirali Ebrahimzadeh"
[ -x "$L18/opt" ] && [ -f "$PLUG" ] || { echo "FATAL: Souper not built"; exit 1; }
[ "$(cat /sys/devices/system/cpu/intel_pstate/no_turbo 2>/dev/null)" = 1 ] || { echo "FATAL: turbo is ON"; exit 1; }
[ "$(command -v opt)" = /opt/llvm/bin/opt ] || { echo "FATAL: opt is not /opt/llvm/bin/opt"; exit 1; }

arm() {  # repo module name baseline-traps cmd...
  local repo=$1 m=$2 name=$3 bt=$4; shift 4
  local f="$IR/$repo.$m.$name.ll" s t rm="-"
  s=$(ERRF="$IR/$repo.$m.$name.err" tm $PIN "$@" -S "$IR/$repo.$m.ll" -o "$f")
  t=$(traps "$f"); [ -n "$bt" ] && [ "$t" != NA ] && [ "$s" != FAIL ] && [ "$s" != TIMEOUT ] && rm=$((bt - t))
  echo "$repo,$m,$name,$s,$t,$rm" | tee -a "$CSV"
  rm -f "$f"          # keep the CSV, not the IR (large)
}
module() {  # repo module
  local repo=$1 m=$2
  grep -q "^$repo,$m,light," "$CSV" && { echo "skip $repo/$m (done)"; return; }
  arm "$repo" "$m" base18 "" "$L18/opt" -passes='default<O3>'
  local b18; b18=$(tail -1 "$CSV" | cut -d, -f5)
  arm "$repo" "$m" souper_const "$b18" "$L18/opt" -load-pass-plugin="$PLUG" -passes='function(souper),default<O3>' $COMMON -souper-only-infer-iN
  if [ "$SYNTH" = 1 ]; then
    arm "$repo" "$m" souper_synth "$b18" timeout "$SYNTH_CAP" "$L18/opt" -load-pass-plugin="$PLUG" \
        -passes='function(souper),default<O3>' $COMMON -souper-use-cegis
  fi
  arm "$repo" "$m" base23 "" opt -passes='default<O3>'
  local b23; b23=$(tail -1 "$CSV" | cut -d, -f5)
  arm "$repo" "$m" thorough "$b23" opt -load-pass-plugin=build/OraclePass.so -passes='oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=1>,default<O3>'
  arm "$repo" "$m" fast     "$b23" opt -load-pass-plugin=build/OraclePass.so -passes='oracle-pass<heavy;frame;mv;narrow;timeout=10;threads=10>,default<O3>'
  arm "$repo" "$m" light    "$b23" opt -load-pass-plugin=build/OraclePass.so -passes='oracle-pass<timeout=10;threads=10>,default<O3>'
  git add "$CSV" 2>/dev/null; git commit -q -m "souper static: $repo/$m" 2>/dev/null || true
}

if [ -z "$ONLY" ] || [ "$ONLY" = zlib ]; then
  log "zlib (both spec), IR from clang 18"
  for f in adler32 compress crc32 deflate gzclose gzlib gzread gzwrite infback inffast inflate inftrees trees uncompr zutil; do
    "$L18/clang" -O3 -S -emit-llvm -fsanitize=signed-integer-overflow,unsigned-integer-overflow \
      -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow -finline-functions \
      -mllvm -inline-threshold=100000 -mllvm -inlinehint-threshold=100000 -mllvm -inlinecold-threshold=100000 \
      -DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1 -I"$ZLIB" "$ZLIB/$f.c" -o "$IR/zlib.$f.ll" || { echo "FATAL clang18 $f"; exit 1; }
    grep -q 'llvm.ubsantrap' "$IR/zlib.$f.ll" || continue
    log "zlib/$f"; module zlib "$f"
  done
fi
if [ -z "$ONLY" ] || [ "$ONLY" = zstd ]; then
  log "zstd (signed spec), IR from clang 18"
  while IFS= read -r tu; do
    s=$(basename "$tu" .c)
    "$L18/clang" -O3 -S -emit-llvm -fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow \
      -I"$ZSTD/lib" -I"$ZSTD/lib/common" -DZSTD_LEGACY_SUPPORT=0 "$ZSTD/lib/$tu" -o "$IR/zstd.$s.ll" || { echo "FATAL clang18 $tu"; exit 1; }
    grep -q 'llvm.ubsantrap' "$IR/zstd.$s.ll" || continue
    log "zstd/$s"; module zstd "$s"
  done < <(cd "$ZSTD/lib" && find common compress decompress dictBuilder -name '*.c' | sort)
fi

python3 - "$CSV" <<'PYEOF' | tee "$OUT/table.txt"
import csv, sys, collections
rows = list(csv.DictReader(open(sys.argv[1])))
agg = collections.defaultdict(lambda: [0.0, 0, 0, 0])   # seconds, removed, modules, failures
for r in rows:
    a = agg[(r["repo"], r["arm"])]
    a[2] += 1
    if r["seconds"] in ("FAIL", "TIMEOUT"): a[3] += 1; continue
    a[0] += float(r["seconds"])
    if r["removed"] not in ("-", ""): a[1] += int(r["removed"])
print(f"{'repo':6s} {'arm':13s} {'total s':>10s} {'removed':>8s} {'modules':>8s} {'failed':>7s}")
for (repo, armn), (s, rm, n, bad) in sorted(agg.items()):
    print(f"{repo:6s} {armn:13s} {s:10.1f} {rm:8d} {n:8d} {bad:7d}")
PYEOF
git add "$OUT/table.txt" "$CSV"; git commit -q -m "souper static: summary" || true
log "SOUPER STATIC DONE"
