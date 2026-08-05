# julia_dump.jl -- snapshot a kernel's OPTIMIZED LLVM module to a .ll.
# Usage: julia native_bench/julia_dump.jl <kernel.jl> <out.ll>
# The kernel file must define  const KERNEL = (fn, (ArgTypes...,))
# raw=true keeps real symbol names; dump_module=true emits the whole
# module (declarations included) so the .ll is self-contained for opt.
using InteractiveUtils
include(abspath(ARGS[1]))
f, tt = KERNEL
open(ARGS[2], "w") do io
    code_llvm(io, f, tt; raw = true, dump_module = true, optimize = true)
end
