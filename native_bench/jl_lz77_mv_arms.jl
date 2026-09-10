# Multi-versioning experiment on lz77.jl (HANDOFF §10.12). ODeSSy proves all
# 4 trap edges dead UNDER the sanity bounds n <= 2^62 and 1 <= window <= 2^62
# (the only trap-reaching executions need a ~9 EiB array or a hugely negative
# window that wraps `i - window`). The sound deployment is therefore a runtime
# multi-version: guard on the bounds, run the proof-licensed @inbounds loop,
# else fall back to the checked loop. Arms:
#   1 baseline: checked loop (as shipped)
#   2 multi-versioned: guard + @inbounds loop, checked fallback
#   3 ceiling: @inbounds unconditionally (unsound in general)
macro body(ib)
    r(e) = ib ? :(@inbounds $e) : e
    quote
        n = length(data); matches = 0; i = 2
        while i <= n
            start = i > window ? i - window : 1
            best = 0; j = start
            while j < i
                len = 0
                while i + len <= n && $(r(:(data[j + len]))) == $(r(:(data[i + len])))
                    len += 1
                    len >= 255 && break
                end
                len > best && (best = len)
                j += 1
            end
            if best >= 3; matches += 1; i += best; else; i += 1; end
        end
        return matches
    end |> esc
end
function lz_checked(data::Vector{UInt8}, window::Int);  @body(false); end
function lz_inbounds(data::Vector{UInt8}, window::Int); @body(true);  end
function lz_mv(data::Vector{UInt8}, window::Int)
    n = length(data)
    if n <= (1 << 62) && 1 <= window <= (1 << 62)   # proof-licensed fast version
        return lz_inbounds(data, window)
    else
        return lz_checked(data, window)             # trap-guarded fallback
    end
end
x = UInt32(123456789); const DATA = Vector{UInt8}(undef, 1 << 16)
for k in 1:length(DATA); global x = x*0x0019660d + 0x3c6ef35f; DATA[k] = UInt8((x >> 24) & 0xff); end
const W = 1024
r = [f(DATA, W) for f in (lz_checked, lz_mv, lz_inbounds)]
println("outputs identical: ", all(==(r[1]), r), "  matches=", r[1])
const REPS = 21
t = [Float64[] for _ in 1:3]
for rep in 1:REPS
    for (k, f) in circshift(collect(enumerate((lz_checked, lz_mv, lz_inbounds))), rep)
        push!(t[k], @elapsed f(DATA, W))
    end
end
med(v) = sort(v)[div(length(v)+1, 2)]; m = med.(t)
println("lz77.jl 64 KiB, window $W, REPS=$REPS (medians, s)")
println("arm1 checked (baseline) : $(round(m[1],digits=4))")
println("arm2 multi-versioned    : $(round(m[2],digits=4))   speedup vs arm1: $(round(m[1]/m[2],digits=3))x")
println("arm3 @inbounds ceiling  : $(round(m[3],digits=4))   speedup vs arm1: $(round(m[1]/m[3],digits=3))x")
println("ceiling recovered by multi-versioning: $(round((m[1]/m[2]-1)/(m[1]/m[3]-1)*100,digits=1))%")
