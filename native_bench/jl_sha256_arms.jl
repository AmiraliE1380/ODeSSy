# Three-arm @inbounds experiment on sha256.jl (proof-licensed annotation,
# same protocol as jl_gemm_arms.jl). Arms differ ONLY in @inbounds placement.
# Arm 1: baseline, all checks on.
# Arm 2: ceiling, every array access @inbounds.
# Arm 3: ODeSSy-proven only. Mac full-tier audit (0829, 10/16 edges UNSAT):
#   PROVEN  -- data[i+1], data[i+2], data[i+3], data[i+4] (line-30 reads;
#              trap blocks L70/L91/L113/L135, 2/2 edges each, main+postloop)
#              w[t-16], w[t-7]                (line-36 reads; L321, L340)
#   UNPROVEN, STAY CHECKED -- w[t]= (line 30, L155), w[t-15] (L189),
#              w[t-2] (L255), w[t]= (line 36, L361), K[t] (L417), w[t] (L435)
# Edge->site alignment: discovery order == IR trap-block order, verified by
# the 'array.jl:990' (setindex!) entries landing exactly at L155 and L361.

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

macro body(arm)
    # arm 1: no annotations; arm 2: all; arm 3: proven set only
    a1 = arm == 1; a2 = arm == 2; a3 = arm == 3
    rd(e)  = (a2 || a3) ? :(@inbounds $e) : e        # proven reads (data[..], w[t-16], w[t-7])
    unp(e) = a2 ? :(@inbounds $e) : e                # unproven accesses
    quote
        final = UInt32(0)
        w = Vector{UInt32}(undef, 64)
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
        return final
    end |> esc
end

function sha1_arm(data::Vector{UInt8}, iters::Int); @body 1; end
function sha2_arm(data::Vector{UInt8}, iters::Int); @body 2; end
function sha3_arm(data::Vector{UInt8}, iters::Int); @body 3; end

using Random
Random.seed!(42)
const DATA = rand(UInt8, 1 << 20)
const ITERS = 40

r1 = sha1_arm(DATA, 2); r2 = sha2_arm(DATA, 2); r3 = sha3_arm(DATA, 2)
println("outputs identical: arm2==arm1 ", r1 == r2, "   arm3==arm1 ", r1 == r3)

const REPS = 21
t1 = Float64[]; t2 = Float64[]; t3 = Float64[]
for r in 1:REPS
    order = [(1, sha1_arm, t1), (2, sha2_arm, t2), (3, sha3_arm, t3)]
    for (id, f, acc) in circshift(order, r)
        push!(acc, @elapsed f(DATA, ITERS))
    end
end
med(x) = sort(x)[div(length(x) + 1, 2)]
m1, m2, m3 = med(t1), med(t2), med(t3)
println("sha256.jl  1 MiB x $ITERS iters, REPS=$REPS (medians, seconds)")
println("arm1 baseline        : ", round(m1, digits=4))
println("arm2 all-inbounds    : ", round(m2, digits=4), "   speedup vs arm1: ", round(m1/m2, digits=3), "x  (ceiling ", round((m1/m2-1)*100, digits=1), "%)")
println("arm3 proven-only     : ", round(m3, digits=4), "   speedup vs arm1: ", round(m1/m3, digits=3), "x")
println("ceiling recovered by arm3: ", round((m1/m3 - 1) / (m1/m2 - 1) * 100, digits=1), "%")
