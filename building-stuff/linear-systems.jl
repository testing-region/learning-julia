#= 
This program calculates a system of linear equations for two variables
and three variables
=#

print("How many system of equations (number of variables): ")
num = parse(Int64, readline())


A = zeros(num, num)
B = zeros(num)


# function to round Vector to n decimal places
function roundVector(A::Vector{Float64}, n::Int64)
    for x in 1:length(A)
        A[x] = round(A[x], digits=n)
    end
    return A
end


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
end

println("-"^30)

if num == 2
    x, y = roundVector(A\B, 4)
    println("x: $x")
    println("y: $y")
elseif num == 3
    x, y, z = roundVector(A\B, 4)
    println("x: $x")
    println("y: $y")
    println("z: $z")
end
