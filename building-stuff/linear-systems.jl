#= 
This program calculates a system of linear equations for two variables
and three variables
=#

print("How many system of equations (number of variables): ")
num = parse(Int64, readline())

A = zeros(num, num)
B = zeros(num)
C = zeros(num)

for x in 1:num
    println("Enter equation $x")

    if num == 2
        println("Enter a linear system in the form: ax + by = c")
        print("a: ")
        a = parse(Float64, readline())
        print("b: ")
        b = parse(Float64, readline())
        print("c: ")
        c = parse(Float64, readline())
        A[x], A[num+x] = a, b
        B[x] = c
    elseif num == 3
        println("Enter a linear system in the form: ax + by + cz = d")
        print("a: ")
        a = parse(Float64, readline())
        print("b: ")
        b = parse(Float64, readline())
        print("c: ")
        c = parse(Float64, readline())
        print("d: ")
        d = parse(Float64, readline())
        A[x], A[num+x], A[2num+x] = a, b, c
        B[x] = d
    end

    
    # For 2x2 matrix
    # 
    # x = 1
    # A[1], A[3] = a, b
    # 3 = num + x
    # x =  2
    # A[2], A[4] = a, b
    # 4 = num + x

    # For 3x3 matrix
    # num = 3
    # x = 1
    # A[1], A[4], A[7] = a, b, c
    # 4 = num + x
    # x =  2
    # A[2], A[5], A[8] = a, b, c
    # 8 = 2num + 2
    # x = 3
    # A[3], A[6], A[9] = a, b, c
    # 
end

display(A)
println("")
display(B)


# # function to round Vector to n decimal places
# function roundVector(A::Vector{Float64}, n::Int64)
#     for x in 1:length(A)
#         A[x] = round(A[x], digits=n)
#     end
#     return A
# end


# display(roundVector(A, 4))