# jl_gemm_base.jl -- the 3-loop kernel of Julia Base's
# LinearAlgebra.generic_matmatmul! (stdlib fallback GEMM), with the
# original's @inbounds STRIPPED. The @inbounds-validation experiment:
# every trap triaged here is an assertion Base's authors discharge by
# hand annotation. Pre-registered expectation: argument-matrix size
# fields => taxonomy slot (b), largely SAT.
function gemm!(C::Matrix{Float64}, A::Matrix{Float64}, B::Matrix{Float64})
    m, n = size(C)
    k = size(A, 2)
    # Base's generic_matmatmul! performs these dimension checks before the
    # loops (matmul.jl); they are the guards that relate the three
    # matrices' size fields -- omitting them was an unfaithful
    # transcription AND removed exactly the facts the proofs need.
    size(A, 1) == m || throw(DimensionMismatch("A rows"))
    size(B, 1) == k || throw(DimensionMismatch("B rows"))
    size(B, 2) == n || throw(DimensionMismatch("B cols"))
    for j in 1:n
        for l in 1:k
            b = B[l, j]
            for i in 1:m
                C[i, j] += A[i, l] * b
            end
        end
    end
    return C
end

const KERNEL = (gemm!, (Matrix{Float64}, Matrix{Float64}, Matrix{Float64}))
