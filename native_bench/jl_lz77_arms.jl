# Four-arm @inbounds experiment on lz77.jl (HANDOFF §10.2). The kernel
# has exactly two array accesses, both on the inner match-loop line:
#   A = data[j + len]    B = data[i + len]
# Arms: 1 = both @inbounds (ceiling), 2 = neither (baseline),
#       3 = A only, 4 = B only. Medians of REPS rotated reps; output gate.
macro body(ia, ib)
    ra(e) = ia ? :(@inbounds $e) : e
    rb(e) = ib ? :(@inbounds $e) : e
    quote
        n = length(data); matches = 0; i = 2
        while i <= n
            start = i > window ? i - window : 1
            best = 0; j = start
            while j < i
                len = 0
                while i + len <= n && $(ra(:(data[j + len]))) == $(rb(:(data[i + len])))
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
function lz1(data::Vector{UInt8}, window::Int); @body(true,  true);  end
function lz2(data::Vector{UInt8}, window::Int); @body(false, false); end
function lz3(data::Vector{UInt8}, window::Int); @body(true,  false); end
function lz4(data::Vector{UInt8}, window::Int); @body(false, true);  end

x = UInt32(123456789); const DATA = Vector{UInt8}(undef, 1 << 16)
for k in 1:length(DATA); global x = x*0x0019660d + 0x3c6ef35f; DATA[k] = UInt8((x >> 24) & 0xff); end
const W = 1024
r = [f(DATA, W) for f in (lz1, lz2, lz3, lz4)]
println("outputs identical: ", all(==(r[1]), r), "  matches=", r[1])
const REPS = 21
t = [Float64[] for _ in 1:4]
for rep in 1:REPS
    for (k, f) in circshift(collect(enumerate((lz1, lz2, lz3, lz4))), rep)
        push!(t[k], @elapsed f(DATA, W))
    end
end
med(v) = sort(v)[div(length(v)+1, 2)]
m = med.(t)
println("lz77.jl 64 KiB, window $W, REPS=$REPS (medians, s)")
println("arm1 both @inbounds   : $(round(m[1],digits=4))   vs arm2: $(round(m[2]/m[1],digits=3))x")
println("arm2 neither          : $(round(m[2],digits=4))")
println("arm3 A=data[j+len] only: $(round(m[3],digits=4))   vs arm2: $(round(m[2]/m[3],digits=3))x")
println("arm4 B=data[i+len] only: $(round(m[4],digits=4))   vs arm2: $(round(m[2]/m[4],digits=3))x")
