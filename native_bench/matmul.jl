# matmul.jl -- flat-vector matmul (mirror of matmul.rs). All checks here
# are BOUNDS checks (Julia ints wrap; no overflow-check family). The
# (i-1)*n + k indexing keeps a computed-index bounds check per access.
function matmul!(c::Vector{Int64}, a::Vector{Int64}, b::Vector{Int64}, n::Int)
    i = 1
    while i <= n
        j = 1
        while j <= n
            acc = 0
            k = 1
            while k <= n
                acc += a[(i - 1) * n + k] * b[(k - 1) * n + j]
                k += 1
            end
            c[(i - 1) * n + j] = acc
            j += 1
        end
        i += 1
    end
    return c
end

const KERNEL = (matmul!, (Vector{Int64}, Vector{Int64}, Vector{Int64}, Int))
