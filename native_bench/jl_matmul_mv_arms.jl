# DESIGNATED VARIANT (runtime proxy; HANDOFF §10.42). native_bench/matmul.jl
# is frozen and untouched. This file mirrors, by hand, what the pass does to
# the frozen kernel's IR under `mv;narrow` (3/3 traps folded in the fast copy,
# §10.39/10.41): the guard is the H the pass mined, transcribed literally.
#   arm1 checked : the kernel as shipped (three bounds checks per inner step)
#   arm2 mv      : if H(n, a, b, c) then all-@inbounds body else checked body
#                  H = n <= 32768 && length(a,b,c) > n*n-1 && length(a,b,c) <= 2^30
#                  (after F1 step 3, §10.45: the size bounds loosened to 2^30,
#                  so the guard holds for every n <= 32768)
#   arm3 ceiling : all-@inbounds unconditionally (unsound in general)
# Sizes: n=128, 256, 512 -- the guard now passes for all of them; the
# checks-off ceiling shrinks with n as the kernel becomes memory-bound.
macro body(ib)
    r(e) = ib ? :(@inbounds $e) : e
    quote
        i = 1
        while i <= n
            j = 1
            while j <= n
                acc = 0
                k = 1
                while k <= n
                    acc += $(r(:(a[(i - 1) * n + k]))) * $(r(:(b[(k - 1) * n + j])))
                    k += 1
                end
                $(r(:(c[(i - 1) * n + j] = acc)))
                j += 1
            end
            i += 1
        end
        return c
    end |> esc
end
function mm_checked(c::Vector{Int64}, a::Vector{Int64}, b::Vector{Int64}, n::Int); @body(false); end
function mm_inbounds(c::Vector{Int64}, a::Vector{Int64}, b::Vector{Int64}, n::Int); @body(true); end
function mm_mv(c::Vector{Int64}, a::Vector{Int64}, b::Vector{Int64}, n::Int)
    nn = n * n
    if n <= 32768 && length(a) > nn - 1 && length(b) > nn - 1 && length(c) > nn - 1 &&
       length(a) <= 1 << 30 && length(b) <= 1 << 30 && length(c) <= 1 << 30   # H as mined after F1 step 3 (§10.45)
        return mm_inbounds(c, a, b, n)
    else
        return mm_checked(c, a, b, n)
    end
end

using Random
med(x) = sort(x)[div(length(x) + 1, 2)]
for (n, reps, REPS) in ((128, 20, 21), (256, 4, 15), (512, 1, 15))
    Random.seed!(1)
    a = rand(Int64(-3):Int64(3), n * n); b = rand(Int64(-3):Int64(3), n * n); c = zeros(Int64, n * n)
    arms = [("checked", mm_checked), ("mv (as mined)", mm_mv), ("ceiling", mm_inbounds)]
    outs = [copy(f(zeros(Int64, n * n), a, b, n)) for (_, f) in arms]
    println("n=$n  outputs identical: ", all(==(outs[1]), outs), "   mined guard passes: ", n <= 32768 && n * n <= 1 << 30)
    t = [Float64[] for _ in arms]
    for rep in 1:REPS
        for (k, (_, f)) in circshift(collect(enumerate(arms)), rep)
            push!(t[k], @elapsed (for _ in 1:reps; f(c, a, b, n); end))
        end
    end
    m = med.(t)
    for (k, (name, _)) in enumerate(arms)
        println("  ", rpad(name, 16), round(m[k], digits = 4), " s   speedup vs checked: ", round(m[1] / m[k], digits = 3), "x")
    end
    println("  ceiling (checked vs all-inbounds): ", round((m[1] / m[3] - 1) * 100, digits = 1), "%")
end
