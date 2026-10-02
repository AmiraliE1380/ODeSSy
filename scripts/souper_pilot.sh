#!/usr/bin/env bash
# =============================================================================
# souper_pilot.sh -- Souper vs ODeSSy pilot on ONE module, zlib deflate.c
# (HANDOFF §11). Checks the setup works; its numbers are not reported.
#   0. discover the flags the installed Souper plugin really accepts
#   1. emit IR ONCE with Souper's clang 18 (zlib flags of run_zlib_perf.sh, both spec)
#   2. arms, each followed by its own LLVM's -O3, timed, then traps counted:
#        base18       : LLVM 18 opt -O3
#        souper_const : souper (integer constants only)  + -O3   [LLVM 18]
#        souper_synth : souper (synthesis, <= SYNTH_N instr) + -O3 [LLVM 18]
#        base23       : our opt -O3                                [LLVM 23]
#        thorough / fast / light : oracle-pass<cfg> + -O3        [LLVM 23]
#   checks removed = ubsantrap call sites left by the arm's own baseline minus
#   those left by the arm (the census used by tab:static for C).
# Usage (tmux): bash scripts/souper_pilot.sh 2>&1 | tee /mydata/souper_pilot.log
# Knobs: SYNTH_N=2  TIMEOUT_S=10 (Souper solver budget, if it has one)
# =============================================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
SOUPER=/mydata/souper; L18="$SOUPER/third_party/llvm-Release-install/bin"
PLUG="$SOUPER/build/libsouperPass.so"
ZLIB="${ZLIB:-$(dirname "$ROOT")/zlib}"; SYNTH_N="${SYNTH_N:-2}"; TIMEOUT_S="${TIMEOUT_S:-10}"
OUT=results/static/souper_pilot; mkdir -p "$OUT"
PIN="numactl --cpunodebind=0 --membind=0"; command -v numactl >/dev/null || PIN=""
log() { echo; echo "=== [$(date +%F\ %H:%M:%S)] $* ==="; }
tm() { python3 -c 'import subprocess,sys,time
import os
t=time.monotonic(); r=subprocess.run(sys.argv[1:], stderr=open(os.environ.get("ERRF","/dev/null"),"w"))
print(f"{time.monotonic()-t:.2f}" if r.returncode==0 else "FAIL")' "$@"; }
traps() { grep -c 'call void @llvm.ubsantrap' "$1" 2>/dev/null || echo NA; }

log "0. Souper flags actually accepted by this build"
"$L18/opt" --version | head -3
"$L18/opt" -load-pass-plugin="$PLUG" --help-list-hidden 2>/dev/null \
  | grep -iE 'souper|z3|solver|timeout|cache' | tee "$OUT/souper_flags.txt"
for f in souper-only-infer-iN souper-enumerative-synthesis-max-instructions; do
  grep -q -- "-$f" "$OUT/souper_flags.txt" || { echo "FATAL: flag -$f not accepted -- see $OUT/souper_flags.txt"; exit 1; }
done
# Souper has no z3-path flag: GetSolver.h bakes in the path of the Z3 it built (Z3 4.13)
# and runs it as an external process per query. Its budget is -solver-timeout (seconds,
# default 15). Redis cache is off by default; the in-process memo (-souper-internal-cache,
# default on) only reuses identical queries within one run and is kept as shipped.
grep -q -- "-solver-timeout" "$OUT/souper_flags.txt" || { echo "FATAL: -solver-timeout not accepted -- see $OUT/souper_flags.txt"; exit 1; }
COMMON="-solver-timeout=$TIMEOUT_S -souper-external-cache=false"
echo "common Souper flags: $COMMON" | tee "$OUT/souper_common_flags.txt"

log "1. IR, emitted once with Souper's clang 18"
"$L18/clang" -O3 -S -emit-llvm \
  -fsanitize=signed-integer-overflow,unsigned-integer-overflow \
  -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow \
  -finline-functions -mllvm -inline-threshold=100000 -mllvm -inlinehint-threshold=100000 \
  -mllvm -inlinecold-threshold=100000 -DHAVE_UNISTD_H -D_LARGEFILE64_SOURCE=1 -I"$ZLIB" \
  "$ZLIB/deflate.c" -o "$OUT/deflate18.ll" || { echo "FATAL: clang-18 emission failed"; exit 1; }
opt -passes=verify -disable-output "$OUT/deflate18.ll" && echo "our LLVM reads the LLVM-18 IR: ok" \
  || { echo "FATAL: our opt cannot read LLVM 18 IR"; exit 1; }
echo "checks in the emitted IR: $(traps "$OUT/deflate18.ll")"

log "2. arms"
printf "%-13s %9s %7s %8s\n" arm seconds traps removed | tee "$OUT/table.txt"
run() {  # name, baseline-traps-or-empty, command...
  local name=$1 bt=$2; shift 2
  local s; s=$(ERRF="$OUT/$name.err" tm $PIN "$@" -S "$OUT/deflate18.ll" -o "$OUT/$name.ll")
  if [ "$s" = FAIL ]; then echo "--- $name failed; last lines of $OUT/$name.err:"; tail -15 "$OUT/$name.err"; fi
  local t; t=$(traps "$OUT/$name.ll")
  local rm="-"; [ -n "$bt" ] && [ "$t" != NA ] && rm=$((bt - t))
  printf "%-13s %9s %7s %8s\n" "$name" "$s" "$t" "$rm" | tee -a "$OUT/table.txt"
}
run base18 "" "$L18/opt" -passes='default<O3>'
B18=$(traps "$OUT/base18.ll")
run souper_const "$B18" "$L18/opt" -load-pass-plugin="$PLUG" -passes='souper,default<O3>' $COMMON -souper-only-infer-iN
run souper_synth "$B18" "$L18/opt" -load-pass-plugin="$PLUG" -passes='souper,default<O3>' $COMMON \
    -souper-enumerative-synthesis-max-instructions="$SYNTH_N"
run base23 "" opt -passes='default<O3>'
B23=$(traps "$OUT/base23.ll")
run thorough "$B23" opt -load-pass-plugin=build/OraclePass.so -passes='oracle-pass<heavy;frame;ind;mv;narrow;timeout=10000;threads=1>,default<O3>'
run fast     "$B23" opt -load-pass-plugin=build/OraclePass.so -passes='oracle-pass<heavy;frame;mv;narrow;timeout=10;threads=10>,default<O3>'
run light    "$B23" opt -load-pass-plugin=build/OraclePass.so -passes='oracle-pass<timeout=10;threads=10>,default<O3>'
log "SOUPER PILOT DONE"
