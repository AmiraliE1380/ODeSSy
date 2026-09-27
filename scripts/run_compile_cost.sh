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
FAST_REPS="${FAST_REPS:-3}"
ONLY="${ONLY:-}"
OUT="${OUT:-results/static/compile_cost}"
ZLIB="${ZLIB:-$PL_ROOT/zlib}"; ZSTD="${ZSTD:-$PL_ROOT/zstd}"
CRYPTOSWIFT="${CRYPTOSWIFT:-$PL_ROOT/CryptoSwift}"
PIN="numactl --cpunodebind=0 --membind=0"; command -v numactl >/dev/null || PIN=""
PLUGIN="$ROOT/build/OraclePass.so"
W="$OUT/ir"; mkdir -p "$W" "$OUT/logs"
CSV="$OUT/modules.csv"
[ "${APPEND:-0}" = 1 ] && [ -s "$CSV" ] || echo "bench,lang,module,checks,o3_s,thorough_s,thorough_proofs,fast_s,fast_proofs" > "$CSV"
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
median() { python3 -c 'import statistics,sys; print(f"{statistics.median(float(x) for x in sys.argv[1:]):.3f}")' "$@"; }

measure() {  # bench lang module ll trapspec
  local b=$1 l=$2 m=$3 ll=$4 tr=$5 L="$OUT/logs/$1.$3"
  local o3 th fs=() fp=0 i
  o3=$(tm $PIN opt -passes='default<O3>' -disable-output "$ll" 2>/dev/null) || o3=NA
  th=$(tm $PIN opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$THOROUGH$tr>" -disable-output "$ll" 2>"$L.thorough.err") || th=FAIL
  for ((i=1; i<=FAST_REPS; i++)); do
    fs+=("$(tm $PIN opt -load-pass-plugin="$PLUGIN" -passes="oracle-pass<$FAST$tr>" -disable-output "$ll" 2>"$L.fast.err")")
  done
  printf "%s,%s,%s,%s,%s,%s,%s,%s,%s\n" "$b" "$l" "$m" "$(checks "$L.thorough.err")" "$o3" "$th" \
    "$(proofs "$L.thorough.err")" "$(median "${fs[@]}")" "$(proofs "$L.fast.err")" | tee -a "$CSV"
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

# ---- summary: per benchmark, total over modules and the slowest module
python3 - "$CSV" <<'PYEOF' | tee "$OUT/table.txt"
import csv, sys, collections
rows = [r for r in csv.DictReader(open(sys.argv[1]))]
by = collections.OrderedDict()
for r in rows: by.setdefault((r["bench"], r["lang"]), []).append(r)
f = lambda x: float(x) if x not in ("NA", "FAIL", "") else float("nan")
print(f"{'benchmark':16s} {'lang':5s} {'mods':>4s} {'checks':>6s} {'O3 s':>8s} | {'thorough s':>11s} {'(slowest)':>9s} {'proofs':>6s} | {'fast s':>8s} {'(slowest)':>9s} {'proofs':>6s}")
for (b, l), rs in by.items():
    s = lambda k: sum(f(r[k]) for r in rs)
    mx = lambda k: max(f(r[k]) for r in rs)
    print(f"{b:16s} {l:5s} {len(rs):4d} {int(s('checks')):6d} {s('o3_s'):8.2f} | {s('thorough_s'):11.2f} {mx('thorough_s'):9.2f} {int(s('thorough_proofs')):6d} | "
          f"{s('fast_s'):8.2f} {mx('fast_s'):9.2f} {int(s('fast_proofs')):6d}")
PYEOF
