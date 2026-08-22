# Three-arm @inbounds experiment on jl_gemm_base (HANDOFF §8.6).
# All arms share the identical desugared loop body (tmp = C[i,j] + A[i,l]*b;
# C[i,j] = tmp) so they differ ONLY in @inbounds placement.
# Arm 1: baseline, all checks on.
# Arm 2: ceiling, all four accesses @inbounds.
# Arm 3: ODeSSy-proven only -- A[i,l] read (trap block L220, 4/4 edges) and
#        C[i,j] write (L282, 3/3 edges); B[l,j] read (L82) and C[i,j] read
#        (L160) each retain one unproven edge and STAY CHECKED.

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

function gemm3!(C, A, B)
    m, n = size(C); k = size(A, 2)
    size(A, 1) == m || throw(DimensionMismatch("A rows"))
    size(B, 1) == k || throw(DimensionMismatch("B rows"))
    size(B, 2) == n || throw(DimensionMismatch("B cols"))
    for j in 1:n, l in 1:k
        b = B[l, j]                                   # L82: stays checked
        for i in 1:m
            tmp = C[i, j] + (@inbounds A[i, l]) * b   # L160 checked; L220 proven
            @inbounds C[i, j] = tmp                   # L282 proven
        end
    end
    return C
end

using Random
Random.seed!(42)
const N = 512
A0 = rand(N, N); B0 = rand(N, N)

# Output-equivalence gate (identical op order => bitwise equal expected)
C1 = zeros(N, N); C2 = zeros(N, N); C3 = zeros(N, N)
gemm1!(C1, A0, B0); gemm2!(C2, A0, B0); gemm3!(C3, A0, B0)
println("outputs identical: arm2==arm1 ", C1 == C2, "   arm3==arm1 ", C1 == C3)

const REPS = 21
t1 = Float64[]; t2 = Float64[]; t3 = Float64[]
for r in 1:REPS
    # rotate order each rep to spread thermal/OS noise
    order = [(1, gemm1!, t1), (2, gemm2!, t2), (3, gemm3!, t3)]
    rot = circshift(order, r)
    for (id, f, acc) in rot
        C = zeros(N, N)
        push!(acc, @elapsed f(C, A0, B0))
    end
end
med(x) = sort(x)[div(length(x) + 1, 2)]
m1, m2, m3 = med(t1), med(t2), med(t3)
println("N=$N REPS=$REPS  (medians, seconds)")
println("arm1 baseline      : ", round(m1, digits=4))
println("arm2 all-inbounds  : ", round(m2, digits=4), "   speedup vs arm1: ", round(m1/m2, digits=3), "x")
println("arm3 odessy-proven : ", round(m3, digits=4), "   speedup vs arm1: ", round(m1/m3, digits=3), "x")
println("arm3 recovers ", round(100*(m1-m3)/max(m1-m2,1e-12), digits=1), "% of the arm2 gap")
