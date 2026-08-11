# jl_filt_dsp.jl -- the direct-form-II-transposed inner loop of
# DSP.jl's filt! (standard IIR digital filter), @inbounds STRIPPED.
# Second real-repo kernel for the @inbounds-validation experiment:
# state-vector recurrence + coefficient/array indexing, all Float64.
function filt!(out::Vector{Float64}, b::Vector{Float64},
               a::Vector{Float64}, x::Vector{Float64},
               si::Vector{Float64})
    silen = length(si)
    n = length(x)
    for i in 1:n
        xi = x[i]
        val = si[1] + b[1] * xi
        for j in 1:(silen - 1)
            si[j] = si[j + 1] + b[j + 1] * xi - a[j + 1] * val
        end
        si[silen] = b[silen + 1] * xi - a[silen + 1] * val
        out[i] = val
    end
    return out
end

const KERNEL = (filt!, (Vector{Float64}, Vector{Float64}, Vector{Float64},
                        Vector{Float64}, Vector{Float64}))
