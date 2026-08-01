n = parse(Int, ARGS[1]); steps = parse(Int, ARGS[2])
A = zeros(Float64, n, n); B = zeros(Float64, n, n)
for i in 1:n, j in 1:n
    A[i, j] = sin(i * 0.01) * cos(j * 0.01)
end
function step!(B, A, n)
    for j in 2:n-1
        for i in 2:n-1
            B[i, j] = 0.25 * (A[i-1, j] + A[i+1, j] + A[i, j-1] + A[i, j+1])
        end
    end
end
for s in 1:steps
    step!(B, A, n)
    A, B = B, A
end
println(sum(A))
