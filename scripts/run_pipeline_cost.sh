#!/usr/bin/env bash
# =============================================================================
# run_pipeline_cost.sh -- whole-pipeline compile time (HANDOFF §10.71). Static.
# Per module of every non-Julia benchmark of the runtime table, time each stage
# of the two pipelines the runtime harnesses use:
#   base   : front end (optimizing IR emission) -> opt -O3 -> llc
#   ODeSSy : front end -> oracle-pass<CFG> -> opt -O3 -> llc     CFG in {thorough, fast, light}
# The front end already optimizes (clang -O3 -emit-llvm, swiftc -O -emit-ir,
# rustc -O --emit=llvm-ir), exactly as in the runtime harnesses. Linking is not
# timed (identical in both pipelines). Each stage runs alone, one at a time,
# socket-0 pinned. Cheap stages (front end, -O3, llc): median of REPS_CHEAP;
# the pass: PASS_REPS runs (default 1; its cost is in tab:compile already).
# Julia is excluded (JIT: its pipeline cannot take the pass output).
# Out: $OUT/stages.csv (bench,lang,module,cfg,fe_s,pass_s,o3_s,llc_s) and $OUT/table.txt
# Usage (tmux): bash scripts/run_pipeline_cost.sh 2>&1 | tee pipeline_cost.log
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
PL_ROOT="$(dirname "$ROOT")"
THOROUGH="heavy;frame;ind;mv;narrow;timeout=10000;threads=1"
FAST="heavy;frame;mv;narrow;timeout=10;threads=10"
LIGHT="timeout=10;threads=10"
REPS_CHEAP="${REPS_CHEAP:-3}"; PASS_REPS="${PASS_REPS:-1}"; ONLY="${ONLY:-}"
OUT="${OUT:-results/static/pipeline_cost}"; W="$OUT/ir"; mkdir -p "$W"
ZLIB="${ZLIB:-$PL_ROOT/zlib}"; ZSTD="${ZSTD:-$PL_ROOT/zstd}"; CRYPTOSWIFT="${CRYPTOSWIFT:-$PL_ROOT/CryptoSwift}"
PIN="numactl --cpunodebind=0 --membind=0"; command -v numactl >/dev/null || PIN=""
PLUGIN="$ROOT/build/OraclePass.so"; CSV="$OUT/stages.csv"
echo "bench,lang,module,cfg,fe_s,pass_s,o3_s,llc_s" > "$CSV"
want() { [ -z "$ONLY" ] || [[ "$1" =~ $ONLY ]]; }
SWIFT_TC_DEFAULT="$HOME/Library/Developer/Toolchains/swift-6.3.3-RELEASE.xctoolchain/usr/bin"
if [ -z "${SWIFTC:-}" ] && [ -x "$SWIFT_TC_DEFAULT/swiftc" ]; then export PATH="$SWIFT_TC_DEFAULT:$PATH"; fi
SWIFTC="${SWIFTC:-swiftc}"
SWIFT_SDK_DEFAULT="/Library/Developer/CommandLineTools/SDKs/MacOSX26.5.sdk"
if [ -z "${SWIFT_SDK:-}" ] && [ -d "$SWIFT_SDK_DEFAULT" ] && "$SWIFTC" --version 2>&1 | grep -q "RELEASE"; then SWIFT_SDK="$SWIFT_SDK_DEFAULT"; fi
SWIFT_SDKFLAG=""; [ -n "${SWIFT_SDK:-}" ] && SWIFT_SDKFLAG="-sdk $SWIFT_SDK"
"$SWIFTC" --version 2>&1 | grep -q "Swift version 6.3.3" || { echo "[FATAL] swiftc is not 6.3.3"; exit 1; }
( cd build && ninja >/dev/null ) || { echo "[FATAL] pass build failed"; exit 1; }

# seconds of one command; a failing command prints FAIL
tm() { python3 -c 'import subprocess,sys,time
t=time.monotonic(); r=subprocess.run(sys.argv[1:], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
print(f"{time.monotonic()-t:.3f}" if r.returncode==0 else "FAIL")' "$@"; }
med() { python3 -c 'import statistics,sys
v=[float(x) for x in sys.argv[1:] if x!="FAIL"]
print(f"{statistics.median(v):.3f}" if len(v)==len(sys.argv[1:]) else "FAIL")' "$@"; }
# the pass: no warm-up (seconds to an hour; a warm-up would double the cost)
repnw() { local n=$1; shift; local t=() i; for ((i=1;i<=n;i++)); do t+=("$(tm $PIN "$@")"); done; med "${t[@]}"; }
# one untimed warm-up run (page cache, binary load), then n timed runs
rep() { local n=$1; shift; local t=() i; $PIN "$@" >/dev/null 2>&1; for ((i=1;i<=n;i++)); do t+=("$(tm $PIN "$@")"); done; med "${t[@]}"; }

# stages for one module: $1 bench $2 lang $3 module $4 traps-suffix $5 fe-time ; IR in $W/$3.ll
stages() {
  local b=$1 lang=$2 m=$3 tr=$4 fe=$5 ll="$W/$3.ll" cfg knobs p o cg
  o=$(rep "$REPS_CHEAP" opt -passes='default<O3>' -S "$ll" -o "$W/$m.base.ll")
  cg=$(rep "$REPS_CHEAP" llc -O2 -relocation-model=pic -filetype=obj "$W/$m.base.ll" -o "$W/$m.base.o")
  echo "$b,$lang,$m,base,$fe,0,$o,$cg" | tee -a "$CSV"
  for cfg in thorough fast light; do
    case $cfg in thorough) knobs=$THOROUGH;; fast) knobs=$FAST;; light) knobs=$LIGHT;; esac
    p=$(repnw "$PASS_REPS" opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$knobs$tr>" -S "$ll" -o "$W/$m.$cfg.mid.ll")
    o=$(rep "$REPS_CHEAP" opt -passes='default<O3>' -S "$W/$m.$cfg.mid.ll" -o "$W/$m.$cfg.ll")
    cg=$(rep "$REPS_CHEAP" llc -O2 -relocation-model=pic -filetype=obj "$W/$m.$cfg.ll" -o "$W/$m.$cfg.o")
    echo "$b,$lang,$m,$cfg,$fe,$p,$o,$cg" | tee -a "$CSV"
  done
}

for k in sha256 base64 lz77 crc32 adler32 sha1 md5 utf8; do
  want "$k" || continue
  fe=$(rep "$REPS_CHEAP" "$SWIFTC" $SWIFT_SDKFLAG -O -wmo -emit-ir "native_bench/$k.swift" -o "$W/swift_$k.ll")
  stages "$k" Swift "swift_$k" "" "$fe"
done
if want cryptoswift; then
  mkdir -p "$W/csdrv" && cp native_bench/cryptoswift_main.swift "$W/csdrv/main.swift"
  fe=$(rep "$REPS_CHEAP" "$SWIFTC" $SWIFT_SDKFLAG -O -wmo -emit-ir "$W/csdrv/main.swift" \
       $(find "$CRYPTOSWIFT/Sources/CryptoSwift" -name '*.swift') -o "$W/swift_cryptoswift.ll")
  stages cryptoswift Swift swift_cryptoswift "" "$fe"
fi
RFLAGS="-O -C overflow-checks=on -C panic=abort -C debuginfo=0 -C codegen-units=1"
for k in lz77_bench matmul_bench; do
  want "rs_$k" || continue
  fe=$(rep "$REPS_CHEAP" rustc $RFLAGS --emit=llvm-ir -o "$W/rust_$k.ll" "native_bench/$k.rs")
  stages "rs_$k" Rust "rust_$k" ";traps=panic" "$fe"
done
if want zstd; then
  SAN="-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow"
  INC="-I$ZSTD/lib -I$ZSTD/lib/common -DZSTD_LEGACY_SUPPORT=0"
  while IFS= read -r tu; do
    s=$(basename "$tu" .c)
    fe=$(rep "$REPS_CHEAP" clang -O3 -S -emit-llvm $SAN $INC "$ZSTD/lib/$tu" -o "$W/zstd_$s.ll")
    grep -q 'llvm.ubsantrap' "$W/zstd_$s.ll" || continue
    stages zstd C "zstd_$s" "" "$fe"
  done < <(cd "$ZSTD/lib" && find common compress decompress dictBuilder -name '*.c' | sort)
fi
if want zlib; then
  SANF="-fsanitize=signed-integer-overflow,unsigned-integer-overflow -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow"
  INL="-finline-functions -mllvm -inline-threshold=100000 -mllvm -inlinehint-threshold=100000 -mllvm -inlinecold-threshold=100000"
  for f in adler32 compress crc32 deflate gzclose gzlib gzread gzwrite infback inffast inflate inftrees trees uncompr zutil; do
    fe=$(rep "$REPS_CHEAP" clang -O3 -S -emit-llvm $SANF $INL -DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1 -I"$ZLIB" "$ZLIB/$f.c" -o "$W/zlib_$f.ll")
    grep -q 'llvm.ubsantrap' "$W/zlib_$f.ll" || continue
    stages zlib C "zlib_$f" "" "$fe"
  done
fi

python3 - "$CSV" <<'PYEOF' | tee "$OUT/table.txt"
import csv, sys, collections, statistics as st
rows=[r for r in csv.DictReader(open(sys.argv[1]))]
f=lambda x: float(x)
tot=collections.defaultdict(float); bad=set()
for r in rows:
    try: t=f(r['fe_s'])+f(r['pass_s'])+f(r['o3_s'])+f(r['llc_s'])
    except ValueError: bad.add((r['bench'],r['cfg'])); continue
    tot[(r['bench'],r['lang'],r['cfg'])]+=t
benches=list(dict.fromkeys((r['bench'],r['lang']) for r in rows))
print(f"{'benchmark':18s} {'lang':5s} {'base s':>9s} | {'thorough':>9s} {'fast':>7s} {'light':>7s}   (whole pipeline / base pipeline)")
ratios={c:[] for c in ('thorough','fast','light')}
for b,l in benches:
    base=tot.get((b,l,'base'))
    if not base: continue
    cells=[]
    for c in ('thorough','fast','light'):
        if (b,c) in bad or (b,l,c) not in tot: cells.append('   FAIL'); continue
        x=tot[(b,l,c)]/base; ratios[c].append(x); cells.append(f"{x:8.2f}x")
    print(f"{b:18s} {l:5s} {base:9.2f} | {cells[0]} {cells[1]} {cells[2]}")
for c,v in ratios.items():
    if v: print(f"{c:9s} geomean {st.geometric_mean(v):6.2f}x  median {st.median(v):6.2f}x  range {min(v):.2f}-{max(v):.2f}x  (n={len(v)})")
PYEOF
