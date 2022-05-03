# calculate the factorial of a number

# n! = n x (n - 1) x (n - 2) x ... x 1
# 1! = 0! = 1

print("Enter a number to see its factorial: ")
num = readline()
num = parse(BigInt, num)

# Using BigInt solves the issue of overflow behaviour

function factorial(n)
    s = 1   # set a base number

    # add constraints
    if n < 0
        return "There is no factorial for a negative number"
    # add basis
    elseif n == 0 || n == 1
        return 1
    # calculate factorial
    else
        for i in 1:n
            s *= i
            # println(i)
        end
    end
    return s
end

println("The factorial of $num is $(factorial(num))")