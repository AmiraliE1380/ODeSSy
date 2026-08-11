# jl_poly.jl -- engineered into the SOLVABLE taxonomy: in-place Horner
# polynomial over a SINGLE Vector{Float64}. The bounds checks compare i
# against the same size load the loop bound derives from (the sha256.jl
# mechanism: SCEVSYM + guard chain); iterations are independent, so the
# checks are exactly what blocks vectorization -- the ceiling should be
# real. No @inbounds anywhere.
function poly!(a::Vector{Float64}, c1::Float64, c2::Float64, c3::Float64,
               iters::Int)
    for _ in 1:iters
        for i in 1:length(a)
            x = a[i]
            a[i] = c1 + x * (c2 + x * c3)
        end
    end
    return a
end

const KERNEL = (poly!, (Vector{Float64}, Float64, Float64, Float64, Int))
