#!/usr/bin/env bash
# =============================================================================
# run_compile_cost.sh -- RQ3 compile-cost table (HANDOFF §10.63). Static: no
# program is run, only the compiler.
#
# For every benchmark of the runtime table, emit exactly the IR the runtime
# harness hands to the pass, then time each module SERIALLY (one opt at a
# time, socket-0 pinned when numactl exists):
#   o3        opt default<O3>                    the conventional optimizer on
#                                                the same module (reference)
#   thorough  oracle-pass<THOROUGH>              the runtime-table configuration,
#                                                1 rep (budget-dominated)
#   fast      oracle-pass<FAST>                  FAST_REPS reps, median
# Proofs per configuration = checks eliminated + checks removed in guarded
# loop copies, summed from the pass's per-function summaries.
#
# Knobs : ONLY=regex (benchmark names)  FAST_REPS=3  OUT=results/static/compile_cost
#         THOROUGH / FAST (knob strings, without traps=)
#         ZLIB ZSTD CRYPTOSWIFT (source trees; default: siblings of the repo)
# Output: $OUT/modules.csv (one row per module) and $OUT/table.txt (per benchmark:
#         total and slowest module for multi-module repositories).
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
PL_ROOT="$(dirname "$ROOT")"
THOROUGH="${THOROUGH:-heavy;frame;ind;mv;narrow;timeout=10000;threads=1}"
FAST="${FAST:-heavy;frame;mv;narrow;timeout=10;threads=10}"
LIGHT="${LIGHT:-timeout=10;threads=10}"   # light tier: no imported analyses, no frame, no guard synthesis
FAST_REPS="${FAST_REPS:-3}"                # repetitions for fast and light (median)
CONFIGS="${CONFIGS:-o3 thorough fast light}"   # subset to run; rows with the same (bench,module) are merged
has() { [[ " $CONFIGS " == *" $1 "* ]]; }
ONLY="${ONLY:-}"
OUT="${OUT:-results/static/compile_cost}"
ZLIB="${ZLIB:-$PL_ROOT/zlib}"; ZSTD="${ZSTD:-$PL_ROOT/zstd}"
CRYPTOSWIFT="${CRYPTOSWIFT:-$PL_ROOT/CryptoSwift}"
PIN="numactl --cpunodebind=0 --membind=0"; command -v numactl >/dev/null || PIN=""
PLUGIN="$ROOT/build/OraclePass.so"
W="$OUT/ir"; mkdir -p "$W" "$OUT/logs"
CSV="$OUT/modules.csv"
# an older CSV without the light columns gets its header upgraded (old rows simply lack them)
[ -s "$CSV" ] && ! head -1 "$CSV" | grep -q light_s && sed -i.bak '1s/$/,light_s,light_proofs/' "$CSV" && rm -f "$CSV.bak"
[ "${APPEND:-0}" = 1 ] && [ -s "$CSV" ] || echo "bench,lang,module,checks,o3_s,thorough_s,thorough_proofs,fast_s,fast_proofs,light_s,light_proofs" > "$CSV"
want() { [ -z "$ONLY" ] || [[ "$1" =~ $ONLY ]]; }

# Swift toolchain resolution, as in run_swift_perf.sh (pinned version on both machines)
SWIFT_TC_DEFAULT="$HOME/Library/Developer/Toolchains/swift-6.3.3-RELEASE.xctoolchain/usr/bin"
if [ -z "${SWIFTC:-}" ] && [ -x "$SWIFT_TC_DEFAULT/swiftc" ]; then export PATH="$SWIFT_TC_DEFAULT:$PATH"; fi
SWIFTC="${SWIFTC:-swiftc}"
SWIFT_SDK_DEFAULT="/Library/Developer/CommandLineTools/SDKs/MacOSX26.5.sdk"
if [ -z "${SWIFT_SDK:-}" ] && [ -d "$SWIFT_SDK_DEFAULT" ] && "$SWIFTC" --version 2>&1 | grep -q "RELEASE"; then SWIFT_SDK="$SWIFT_SDK_DEFAULT"; fi
SWIFT_SDKFLAG=""; [ -n "${SWIFT_SDK:-}" ] && SWIFT_SDKFLAG="-sdk $SWIFT_SDK"
"$SWIFTC" --version 2>&1 | grep -q "Swift version 6.3.3" || { echo "[FATAL] swiftc is not 6.3.3"; exit 1; }
( cd build && ninja >/dev/null ) || { echo "[FATAL] pass build failed"; exit 1; }

# wall-clock seconds of one command (its stderr goes where the caller sends it)
tm() { python3 -c 'import subprocess,sys,time
t=time.monotonic(); r=subprocess.run(sys.argv[1:]); print(f"{time.monotonic()-t:.3f}"); sys.exit(r.returncode)' "$@"; }
proofs() { awk '/Total Traps Eliminated:/{e+=$NF} /Folded In Fast Copies/{f+=$NF} END{print e+f+0}' "$1"; }
checks() { awk '/Total Trap Attempts:/{n+=$NF} END{print n+0}' "$1"; }
median() { python3 -c 'import statistics,sys
v=[float(x) for x in sys.argv[1:] if x not in ("","FAIL")]
print(f"{statistics.median(v):.3f}" if len(v)==len(sys.argv[1:]) else "FAIL")' "$@"; }

measure() {  # bench lang module ll trapspec
  local b=$1 l=$2 m=$3 ll=$4 tr=$5 L="$OUT/logs/$1.$3"
  local o3=NA th=NA tp=NA fs=NA fp=NA ls=NA lp=NA ck=NA t=() i
  has o3 && { o3=$(tm $PIN opt -passes='default<O3>' -disable-output "$ll" 2>/dev/null) || o3=FAIL; }
  if has thorough; then
    th=$(tm $PIN opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$THOROUGH$tr>" -disable-output "$ll" 2>"$L.thorough.err") || th=FAIL
    tp=$(proofs "$L.thorough.err"); ck=$(checks "$L.thorough.err")
  fi
  if has fast; then t=()
    for ((i=1; i<=FAST_REPS; i++)); do t+=("$(tm $PIN opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$FAST$tr>" -disable-output "$ll" 2>"$L.fast.err" || echo FAIL)"); done
    fs=$(median "${t[@]}"); fp=$(proofs "$L.fast.err"); [ "$ck" = NA ] && ck=$(checks "$L.fast.err")
  fi
  if has light; then t=()
    for ((i=1; i<=FAST_REPS; i++)); do t+=("$(tm $PIN opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$LIGHT$tr>" -disable-output "$ll" 2>"$L.light.err" || echo FAIL)"); done
    ls=$(median "${t[@]}"); lp=$(proofs "$L.light.err"); [ "$ck" = NA ] && ck=$(checks "$L.light.err")
  fi
  echo "$b,$l,$m,$ck,$o3,$th,$tp,$fs,$fp,$ls,$lp" | tee -a "$CSV"
}

# ---- Swift kernels + CryptoSwift: swiftc -O -wmo -emit-ir, one module each
for k in sha256 base64 lz77 crc32 adler32 sha1 md5 utf8; do
  want "$k" || continue
  "$SWIFTC" $SWIFT_SDKFLAG -O -wmo -emit-ir "native_bench/$k.swift" -o "$W/swift_$k.ll" || { echo "[FATAL] swiftc $k"; exit 1; }
  measure "$k" Swift "$k" "$W/swift_$k.ll" ""
done
if want cryptoswift; then
  mkdir -p "$W/csdrv" && cp native_bench/cryptoswift_main.swift "$W/csdrv/main.swift"
  "$SWIFTC" $SWIFT_SDKFLAG -O -wmo -emit-ir "$W/csdrv/main.swift" $(find "$CRYPTOSWIFT/Sources/CryptoSwift" -name '*.swift') \
    -o "$W/swift_cryptoswift.ll" || { echo "[FATAL] swiftc CryptoSwift"; exit 1; }
  measure cryptoswift Swift CryptoSwift "$W/swift_cryptoswift.ll" ""
fi

# ---- Rust kernels: rustc flags of run_rust_perf.sh
RFLAGS="-O -C overflow-checks=on -C panic=abort -C debuginfo=0 -C codegen-units=1"
for k in lz77_bench matmul_bench; do
  want "rs_$k" || continue
  rustc $RFLAGS --emit=llvm-ir -o "$W/rust_$k.ll" "native_bench/$k.rs" || { echo "[FATAL] rustc $k"; exit 1; }
  measure "rs_$k" Rust "$k" "$W/rust_$k.ll" ";traps=panic"
done

# ---- Julia kernels: the frozen kernels' emitted IR (the runtime rows are hand
#      copies because the JIT cannot consume the pass output; the pass cost is
#      measured on the real kernels)
for k in jl_gemm_base lz77 matmul sha256; do
  want "jl_$k" || continue
  # logs/ is not tracked: emit the kernel's IR on this machine when it is missing
  [ -s "logs/julia_triage/$k.ll" ] || bash scripts/julia_triage.sh "native_bench/$k.jl" >/dev/null 2>&1
  [ -s "logs/julia_triage/$k.ll" ] || { echo "[FATAL] no Julia IR for $k"; exit 1; }
  measure "jl_$k" Julia "$k" "logs/julia_triage/$k.ll" ";traps=bounds_error:boundserror"
done

# ---- zstd (signed spec, whole library): per-TU IR as in run_zstd_perf.sh
if want zstd; then
  SAN="-fsanitize=signed-integer-overflow -fsanitize-trap=signed-integer-overflow"
  INC="-I$ZSTD/lib -I$ZSTD/lib/common -DZSTD_LEGACY_SUPPORT=0"
  while IFS= read -r tu; do
    s=$(basename "$tu" .c)
    clang -O3 -S -emit-llvm $SAN $INC "$ZSTD/lib/$tu" -o "$W/zstd_$s.ll" || { echo "[FATAL] clang $tu"; exit 1; }
    grep -q 'llvm.ubsantrap' "$W/zstd_$s.ll" || continue      # no checks: the pass has nothing to do
    measure zstd C "$s" "$W/zstd_$s.ll" ""
  done < <(cd "$ZSTD/lib" && find common compress decompress dictBuilder -name '*.c' | sort)
fi

# ---- zlib (both spec, the runtime-table row): per-TU IR as in run_zlib_perf.sh
if want zlib; then
  SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow
        -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow)
  INL=(-finline-functions -mllvm -inline-threshold=100000 -mllvm -inlinehint-threshold=100000 -mllvm -inlinecold-threshold=100000)
  for f in adler32 compress crc32 deflate gzclose gzlib gzread gzwrite infback inffast inflate inftrees trees uncompr zutil; do
    clang -O3 -S -emit-llvm "${SANF[@]}" "${INL[@]}" -DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1 -I"$ZLIB" \
      "$ZLIB/$f.c" -o "$W/zlib_$f.ll" || { echo "[FATAL] clang $f"; exit 1; }
    grep -q 'llvm.ubsantrap' "$W/zlib_$f.ll" || continue
    measure zlib C "$f" "$W/zlib_$f.ll" ""
  done
fi

# ---- summary: merge rows per (bench, module) -- partial reruns fill in columns --
#      then per benchmark: total over modules and the slowest module
python3 - "$CSV" <<'PYEOF2' | tee "$OUT/table.txt"
import csv, sys, collections, math
bad = ("", "NA", "FAIL", None)
mods = collections.OrderedDict()
for r in csv.DictReader(open(sys.argv[1])):
    k = (r["bench"], r["lang"], r["module"])
    m = mods.setdefault(k, {})
    for c, v in r.items():
        if c and v not in bad: m[c] = v                # later non-empty values win
by = collections.OrderedDict()
for (b, l, _), m in mods.items(): by.setdefault((b, l), []).append(m)
num = lambda m, c: float(m[c]) if c in m else math.nan
print(f"{'benchmark':16s} {'lang':5s} {'mods':>4s} {'checks':>6s} {'O3 s':>7s} | {'thorough s':>10s} {'(max)':>8s} {'pf':>4s} | {'fast s':>8s} {'(max)':>7s} {'pf':>4s} | {'light s':>8s} {'(max)':>7s} {'pf':>4s}")
for (b, l), ms in by.items():
    S = lambda c: sum(num(m, c) for m in ms); M = lambda c: max(num(m, c) for m in ms)
    P = lambda c: int(S(c)) if not math.isnan(S(c)) else -1
    print(f"{b:16s} {l:5s} {len(ms):4d} {P('checks'):6d} {S('o3_s'):7.2f} | {S('thorough_s'):10.2f} {M('thorough_s'):8.2f} {P('thorough_proofs'):4d} | "
          f"{S('fast_s'):8.2f} {M('fast_s'):7.2f} {P('fast_proofs'):4d} | {S('light_s'):8.2f} {M('light_s'):7.2f} {P('light_proofs'):4d}")
PYEOF2
