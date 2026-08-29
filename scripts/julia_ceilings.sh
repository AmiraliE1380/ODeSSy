#!/usr/bin/env bash
# =============================================================================
# julia_ceilings.sh -- checked (default) vs --check-bounds=no ceilings for the
# Julia kernels (appendix/frontier rows). Timing INSIDE one julia process per
# config (post-JIT: warmup call, then min of 5 @elapsed). Kernels have no CLI
# mains (they export KERNEL for julia_dump.jl), so workloads live here.
# Usage: bash scripts/julia_ceilings.sh   (julia must be on PATH)
# =============================================================================
set -u
ROOT="${ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
cd "$ROOT"

declare -A EXPR
EXPR[sha256.jl]='data=rand(UInt8,1<<20); sha256_sum(data,2);
  ts=[(@elapsed sha256_sum(data,40)) for _ in 1:5]; println(minimum(ts))'
EXPR[matmul.jl]='n=512; a=rand(Int64,n*n).%7; b=rand(Int64,n*n).%5; c=zeros(Int64,n*n);
  matmul!(c,a,b,n);
  ts=[(@elapsed matmul!(c,a,b,n)) for _ in 1:5]; println(minimum(ts))'
EXPR[lz77.jl]='x=UInt32(123456789); data=Vector{UInt8}(undef,1<<16);
  for k in 1:length(data); global x = x*0x0019660d+0x3c6ef35f; data[k]=UInt8((x>>24)&0xff); end;
  lz77_scan(data,1024);
  ts=[(@elapsed lz77_scan(data,1024)) for _ in 1:5]; println(minimum(ts))'
EXPR[jl_poly.jl]='a=rand(1<<20); poly!(a,1.0,2.0,3.0,2);
  ts=[(@elapsed poly!(a,1.0,2.0,3.0,200)) for _ in 1:5]; println(minimum(ts))'
EXPR[jl_filt_dsp.jl]='bc=rand(5); ac=vcat(1.0,rand(4)); x=rand(1<<20);
  out=similar(x); si=zeros(4); filt!(out,bc,ac,x,si);
  ts=[(@elapsed (for _ in 1:20; filt!(out,bc,ac,x,si); end)) for _ in 1:5]; println(minimum(ts))'

for F in sha256.jl matmul.jl lz77.jl jl_poly.jl jl_filt_dsp.jl; do
  CHK=$(julia                    -e "include(\"native_bench/$F\"); ${EXPR[$F]}")
  UNC=$(julia --check-bounds=no  -e "include(\"native_bench/$F\"); ${EXPR[$F]}")
  python3 - "$F" "$CHK" "$UNC" <<'PY'
import sys
f, c, u = sys.argv[1], float(sys.argv[2]), float(sys.argv[3])
print(f"  {f:16s} chk={c:.4f}s unc={u:.4f}s ceiling={(c/u-1)*100:+.1f}%")
PY
done
