# GEMM dimension sweep (collaborator request): how the checked-vs-@inbounds
# speedup on Julia stdlib GEMM depends on (m, n, k), C = m x n, A = m x k,
# B = k x n. Two arms per shape:
#   arm1 = baseline, all bounds checks on (the repo kernel as audited)
#   arm2 = all four accesses @inbounds. With 16/16 trap edges proven,
#          ODeSSy's proof-licensed annotation licenses every access, so the
#          ODeSSy arm is SOURCE-IDENTICAL to arm2 (Table tab:inbounds; recovery
#          = 100% by construction) -- arm2 IS the ODeSSy result here.
# Same desugared loop body as jl_gemm_arms.jl; medians of REPS rotated reps;
# bitwise output-equality gate per shape.
# Usage: julia native_bench/jl_gemm_sweep.jl [REPS]     (default 11)

function gemm1!(C, A, B)
    m, n = size(C); k = size(A, 2)
    size(A, 1) == m || throw(DimensionMismatch("A rows"))
    size(B, 1) == k || throw(DimensionMismatch("B rows"))
    size(B, 2) == n || throw(DimensionMismatch("B cols"))
    for j in 1:n, l in 1:k
        b = B[l, j]
        for i in 1:m
            tmp = C[i, j] + A[i, l] * b
            C[i, j] = tmp
        end
    end
    return C
end

function gemm2!(C, A, B)
    m, n = size(C); k = size(A, 2)
    size(A, 1) == m || throw(DimensionMismatch("A rows"))
    size(B, 1) == k || throw(DimensionMismatch("B rows"))
    size(B, 2) == n || throw(DimensionMismatch("B cols"))
    for j in 1:n, l in 1:k
        b = @inbounds B[l, j]
        for i in 1:m
            tmp = (@inbounds C[i, j]) + (@inbounds A[i, l]) * b
            @inbounds C[i, j] = tmp
        end
    end
    return C
end

using Random
const REPS = length(ARGS) >= 1 ? parse(Int, ARGS[1]) : 11
med(x) = sort(x)[div(length(x) + 1, 2)]

# (m, n, k): square scaling, then aspect ratios / short inner loop at ~512^3 work
const SHAPES = [
    (64, 64, 64), (128, 128, 128), (256, 256, 256), (512, 512, 512),
    (1024, 1024, 1024), (2048, 2048, 2048),
    (4096, 128, 128), (128, 4096, 128), (128, 128, 4096),
    (8, 2048, 2048), (32, 2048, 2048), (2048, 32, 2048), (2048, 2048, 32),
]

println("# GEMM dimension sweep: arm1 = all checks, arm2 = all @inbounds (== ODeSSy, 16/16 proven)")
println("# REPS=$REPS rotated reps per shape, medians of seconds; gate = bitwise-equal C")
println("#   m     n     k    flops(G)   arm1_s    arm2_s   speedup  ceiling%  gate")
for (m, n, k) in SHAPES
    Random.seed!(42)
    A0 = rand(m, k); B0 = rand(k, n)
    C1 = zeros(m, n); C2 = zeros(m, n)
    gemm1!(C1, A0, B0); gemm2!(C2, A0, B0)          # warm + gate
    gate = C1 == C2 ? "ok" : "MISMATCH"
    t1 = Float64[]; t2 = Float64[]
    for r in 1:REPS
        order = [(gemm1!, t1), (gemm2!, t2)]
        for (f, acc) in circshift(order, r)
            C = zeros(m, n)
            push!(acc, @elapsed f(C, A0, B0))
        end
    end
    m1, m2 = med(t1), med(t2)
    gf = 2.0 * m * n * k / 1e9
    println(rpad(string(m), 6), rpad(string(n), 6), rpad(string(k), 6),
            lpad(round(gf, digits=2), 8), lpad(round(m1, digits=4), 10), lpad(round(m2, digits=4), 10),
            lpad(string(round(m1 / m2, digits=3), "x"), 9), lpad(round((m1 / m2 - 1) * 100, digits=1), 9), "  ", gate)
    flush(stdout)
end
