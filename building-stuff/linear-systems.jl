A = [
    1.2345
    2.456904
]

# function to round Vector to n decimal places
function roundVector(A::Vector{Float64}, n::Int64)
    for x in 1:length(A)
        A[x] = round(A[x], digits=n)
    end
    return A
end


display(roundVector(A, 4))