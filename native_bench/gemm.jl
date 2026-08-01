n = parse(Int, ARGS[1]); reps = parse(Int, ARGS[2])
A = [Float64((i * 7 + j) % 13) for i in 1:n, j in 1:n]
B = [Float64((i * 3 + j) % 17) for i in 1:n, j in 1:n]
C = zeros(Float64, n, n)
function gemm!(C, A, B, n)
    for j in 1:n
        for k in 1:n
            b = B[k, j]
            for i in 1:n
                C[i, j] += A[i, k] * b
            end
        end
    end
end
for r in 1:reps
    gemm!(C, A, B, n)
end
println(C[1, 1] + C[n, n])
