# lz77.jl -- bounds-check-heavy Julia kernel (mirror of lz77.rs/.swift).
# Explicit while+indexing, NO @inbounds anywhere: every data[..] is a
# native bounds check lowered to (i)jl_bounds_error* calls.
# NOTE: Julia integer arithmetic WRAPS by design -- unlike Rust
# overflow-checks=on there is no overflow-check family here; Julia's
# native check surface is bounds (+ optional --check-bounds=yes/no).
function lz77_scan(data::Vector{UInt8}, window::Int)
    n = length(data)
    matches = 0
    i = 2
    while i <= n
        start = i > window ? i - window : 1
        best = 0
        j = start
        while j < i
            len = 0
            while i + len <= n && data[j + len] == data[i + len]
                len += 1
                len >= 255 && break
            end
            if len > best
                best = len
            end
            j += 1
        end
        if best >= 3
            matches += 1
            i += best
        else
            i += 1
        end
    end
    return matches
end

# (kernel entry for julia_dump.jl: function + concrete signature)
const KERNEL = (lz77_scan, (Vector{UInt8}, Int))
