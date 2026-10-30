#!/usr/bin/env bash
# run_cache_coldwarm.sh -- verdict cache: no-cache vs cold vs warm (identical
# input) on the 17 guard-ablation kernels, the Julia modules, every zlib/zstd
# module and CryptoSwift (HANDOFF §13.5, session 2). One line per input:
# times, warm hits/misses, and IR identity warm==cold, warm==no-cache.
# Usage: [THREADS=4] [OUT=<scratch dir>] bash scripts/run_cache_coldwarm.sh > results.txt
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
O="${OUT:-$(mktemp -d)}"; mkdir -p "$O"
KN="heavy;frame;ind;mv;narrow;timeout=10000;threads=${THREADS:-4}"
run() { # name input traps
  for v in nocache cold warm; do X=""; [ $v != nocache ] && X=";cache=$O/dir.$1"
    s=$(python3 -c 'import time;print(time.time())')
    opt -load-pass-plugin=build/OraclePass.so -passes="oracle-pass<$KN$X$3>" -S $2 -o $O/$1.$v.ll 2>$O/$1.$v.err
    eval t_$v=$(python3 -c "import time;print(round(time.time()-$s,2))"); done
  h=$(grep -c '^\[cache\] .* hit' $O/$1.warm.err); m=$(grep -c '^\[cache\] .* miss' $O/$1.warm.err)
  r=$(grep -rl '^resolve' $O/dir.$1 2>/dev/null | wc -l | tr -d ' ')
  wc_=$(cmp -s <(tail -n +2 $O/$1.cold.ll) <(tail -n +2 $O/$1.warm.ll) && echo yes || echo NO)
  wn=$(cmp -s <(tail -n +2 $O/$1.nocache.ll) <(tail -n +2 $O/$1.warm.ll) && echo yes || echo NO)
  echo "$1 nocache=${t_nocache}s cold=${t_cold}s warm=${t_warm}s warm_hits=$h warm_misses=$m resolve_entries=$r warm==cold:$wc_ warm==nocache:$wn"
}
for d in results/static/guard_ablation_0927/*_*/; do k=$(basename $d); case $k in Rust*) TR=";traps=panic:odessy.chk";; Julia*) TR=";traps=bounds_error:boundserror:odessy.chk";; *) TR=";traps=odessy.chk";; esac; run $k $d/tag.ll "$TR"; done
for n in sha256 jl_gemm_base matmul lz77; do run jl_$n logs/julia_triage/$n.ll ";traps=bounds_error:boundserror"; done
D=results/static/pipeline_cost_par/ir
for f in $(ls $D | grep -E "^(zstd|zlib)_[a-zA-Z0-9_]+\.ll$"); do run ${f%.ll} $D/$f ""; done
run swift_cryptoswift $D/swift_cryptoswift.ll ""
