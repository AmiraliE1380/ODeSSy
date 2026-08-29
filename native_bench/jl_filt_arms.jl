# Three-arm @inbounds experiment on jl_filt_dsp.jl (DSP.jl filt! inner loop,
# proof-licensed annotation; protocol of jl_gemm_arms.jl).
# Arm 1: baseline (@inbounds stripped, as in the repo port).
# Arm 2: ceiling, every access @inbounds (DSP.jl's own shipping form).
# Arm 3: ODeSSy-proven only. Mac full-tier audit (0829, 6/19 edges UNSAT):
#   PROVEN  -- x[i]      (line 11, trap block L36, 2/2 edges)
#              si[j+1]   (line 14, L112, 3/3 edges: all unswitched versions)
#   UNPROVEN, STAY CHECKED -- si[1], b[1] (line 12), b[j+1] (L131, 1/3),
#              a[j+1] (L152, 0/3), b[silen+1], a[silen+1] (line 16), out[i]= (line 17)
#   (si[j]= on line 14 emits NO check: Julia/LLVM already prove j < silen.)
# Edge->site alignment by IR trap-block order (19 edges: 1+1+2+3+3+3+2+2+2).

macro body(arm)
    a2 = arm == 2; a3 = arm == 3
    pr(e)  = (a2 || a3) ? :(@inbounds $e) : e   # proven: x[i], si[j+1]
    unp(e) = a2 ? :(@inbounds $e) : e           # everything else
    quote
        silen = length(si)
        n = length(x)
        for i in 1:n
            xi = $(pr(:(x[i])))
            val = $(unp(:(si[1]))) + $(unp(:(b[1]))) * xi
            for j in 1:(silen - 1)
                v = $(pr(:(si[j + 1]))) + $(unp(:(b[j + 1]))) * xi - $(unp(:(a[j + 1]))) * val
                $(unp(:(si[j] = v)))
            end
            v = $(unp(:(b[silen + 1]))) * xi - $(unp(:(a[silen + 1]))) * val
            $(unp(:(si[silen] = v)))
            $(unp(:(out[i] = val)))
        end
        return out
    end |> esc
end

function filt1!(out::Vector{Float64}, b::Vector{Float64}, a::Vector{Float64},
                x::Vector{Float64}, si::Vector{Float64}); @body 1; end
function filt2!(out::Vector{Float64}, b::Vector{Float64}, a::Vector{Float64},
                x::Vector{Float64}, si::Vector{Float64}); @body 2; end
function filt3!(out::Vector{Float64}, b::Vector{Float64}, a::Vector{Float64},
                x::Vector{Float64}, si::Vector{Float64}); @body 3; end

using Random
Random.seed!(42)
const N = 1 << 20
const X = rand(N)
const BC = rand(5); const AC = vcat(1.0, 0.1 .* rand(4))   # stable IIR coefficients
const CALLS = 20

function run!(f, out, si)
    fill!(si, 0.0)
    for _ in 1:CALLS
        f(out, BC, AC, X, si)
    end
    return out
end

o1 = run!(filt1!, zeros(N), zeros(4)); o2 = run!(filt2!, zeros(N), zeros(4)); o3 = run!(filt3!, zeros(N), zeros(4))
println("outputs identical: arm2==arm1 ", o1 == o2, "   arm3==arm1 ", o1 == o3)

const REPS = 21
t1 = Float64[]; t2 = Float64[]; t3 = Float64[]
out = zeros(N); si = zeros(4)
for r in 1:REPS
    order = [(1, filt1!, t1), (2, filt2!, t2), (3, filt3!, t3)]
    for (id, f, acc) in circshift(order, r)
        push!(acc, @elapsed run!(f, out, si))
    end
end
med(x) = sort(x)[div(length(x) + 1, 2)]
m1, m2, m3 = med(t1), med(t2), med(t3)
println("filt! (DSP.jl)  N=$N x $CALLS calls, REPS=$REPS (medians, seconds)")
println("arm1 baseline        : ", round(m1, digits=4))
println("arm2 all-inbounds    : ", round(m2, digits=4), "   speedup vs arm1: ", round(m1/m2, digits=3), "x  (ceiling ", round((m1/m2-1)*100, digits=1), "%)")
println("arm3 proven-only     : ", round(m3, digits=4), "   speedup vs arm1: ", round(m1/m3, digits=3), "x")
println("ceiling recovered by arm3: ", round((m1/m3 - 1) / (m1/m2 - 1) * 100, digits=1), "%")
