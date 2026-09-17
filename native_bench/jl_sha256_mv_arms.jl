# DESIGNATED VARIANT (runtime proxy; HANDOFF §10.34). The original
# native_bench/sha256.jl is frozen and untouched. This file mirrors, by hand,
# what the pass does to the frozen kernel's IR under each knob, because the
# Julia JIT cannot consume the pass output:
#   arm1 checked   : baseline, all checks on
#   arm2 ceiling   : every access @inbounds (unsound in general)
#   arm3 mv-light  : @inbounds exactly on the 10/16 edges proven UNSAT
#                    (mv-light adds no fold on sha256.jl: same as no-mv)
#   arm4 mv        : the 6 remaining edges are dead under
#                    H = { length(w) > 63, length(K) > 63 } (T3, HANDOFF
#                    §10.31): guard once at loop entry, all-@inbounds body
#                    if H holds, fully checked body otherwise.
# Proven set (Mac full-tier audit, 10/16): data[i+1..i+4] (2 edges each),
# w[t-16], w[t-7]. Under-H set (6): w[t]= (x2), w[t-15], w[t-2], K[t], w[t].

const K = UInt32[
0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2]

rotr(x::UInt32, n::Int) = (x >> n) | (x << (32 - n))

# One SHA-256 pass over `data`, `iters` times. `rd` marks the 10 proven
# accesses, `unp` the 6 accesses that need H.
macro blocks(rdflag, unpflag)
    rd(e)  = rdflag  ? :(@inbounds $e) : e
    unp(e) = unpflag ? :(@inbounds $e) : e
    quote
        for _ in 1:iters
            h1 = 0x6a09e667 % UInt32; h2 = 0xbb67ae85 % UInt32
            h3 = 0x3c6ef372 % UInt32; h4 = 0xa54ff53a % UInt32
            h5 = 0x510e527f % UInt32; h6 = 0x9b05688c % UInt32
            h7 = 0x1f83d9ab % UInt32; h8 = 0x5be0cd19 % UInt32
            nblocks = div(length(data), 64)
            for b in 1:nblocks
                off = (b - 1) * 64
                for t in 1:16
                    i = off + 4 * (t - 1)
                    v = (UInt32($(rd(:(data[i+1])))) << 24) | (UInt32($(rd(:(data[i+2])))) << 16) |
                        (UInt32($(rd(:(data[i+3])))) << 8)  |  UInt32($(rd(:(data[i+4]))))
                    $(unp(:(w[t] = v)))
                end
                for t in 17:64
                    w15 = $(unp(:(w[t-15]))); w2 = $(unp(:(w[t-2])))
                    s0 = rotr(w15, 7) ⊻ rotr(w15, 18) ⊻ (w15 >> 3)
                    s1 = rotr(w2, 17) ⊻ rotr(w2, 19)  ⊻ (w2 >> 10)
                    v = $(rd(:(w[t-16]))) + s0 + $(rd(:(w[t-7]))) + s1
                    $(unp(:(w[t] = v)))
                end
                a = h1; bb = h2; c = h3; d = h4; e = h5; f = h6; g = h7; hh = h8
                for t in 1:64
                    S1 = rotr(e, 6) ⊻ rotr(e, 11) ⊻ rotr(e, 25)
                    ch = (e & f) ⊻ (~e & g)
                    t1 = hh + S1 + ch + $(unp(:(K[t]))) + $(unp(:(w[t])))
                    S0 = rotr(a, 2) ⊻ rotr(a, 13) ⊻ rotr(a, 22)
                    mj = (a & bb) ⊻ (a & c) ⊻ (bb & c)
                    t2 = S0 + mj
                    hh = g; g = f; f = e; e = d + t1
                    d = c; c = bb; bb = a; a = t1 + t2
                end
                h1 += a; h2 += bb; h3 += c; h4 += d
                h5 += e; h6 += f; h7 += g; h8 += hh
            end
            final += h1 + h8
        end
    end |> esc
end

function arm_checked(data::Vector{UInt8}, iters::Int)
    final = UInt32(0); w = Vector{UInt32}(undef, 64)
    @blocks(false, false); return final
end
function arm_ceiling(data::Vector{UInt8}, iters::Int)
    final = UInt32(0); w = Vector{UInt32}(undef, 64)
    @blocks(true, true); return final
end
function arm_mvlight(data::Vector{UInt8}, iters::Int)      # 10 proven edges only
    final = UInt32(0); w = Vector{UInt32}(undef, 64)
    @blocks(true, false); return final
end
function arm_mv(data::Vector{UInt8}, iters::Int)           # H-guarded fast copy
    final = UInt32(0); w = Vector{UInt32}(undef, 64)
    if length(w) > 63 && length(K) > 63                   # H mined by the pass (T3)
        @blocks(true, true)
    else
        @blocks(false, false)
    end
    return final
end

using Random
Random.seed!(42)
const DATA = rand(UInt8, 1 << 20)
const ITERS = 40
ARMS = [("checked", arm_checked), ("ceiling", arm_ceiling), ("mv-light", arm_mvlight), ("mv", arm_mv)]
r = [f(DATA, 2) for (_, f) in ARMS]
println("outputs identical: ", all(==(r[1]), r))
const REPS = 21
t = [Float64[] for _ in ARMS]
for rep in 1:REPS
    for (k, (_, f)) in circshift(collect(enumerate(ARMS)), rep)
        push!(t[k], @elapsed f(DATA, ITERS))
    end
end
med(x) = sort(x)[div(length(x) + 1, 2)]; m = med.(t)
println("sha256.jl  1 MiB x $ITERS iters, REPS=$REPS (medians, s)")
for (k, (name, _)) in enumerate(ARMS)
    println(rpad(name, 10), round(m[k], digits=4), "   speedup vs checked: ", round(m[1]/m[k], digits=3), "x")
end
println("ceiling (checked vs all-inbounds): ", round((m[1]/m[2]-1)*100, digits=1), "%")
