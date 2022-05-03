# Create a function that returns n fibonnaci numbers in a sequence

# Thought process
# 1, 1, 2, 3, 5, 8, ...
# let x = 0
# y = 1
# print(y)
# y += x
# x = y - x

print("How long do you want your fibonnaci sequence?: ")
num = readline()
num = parse(Int64, num)

function fibonnaci(n)
    x = 0   # the previous number
    y = 1   # the starting number
    for i = 1:n
        if i == n
            # remove the comma after the last number
            print(y)
        else
            print("$y, ")
            y += x      # add the previous number to the starting number
            x = y - x   # subtract initial previous number from the new starting number to get new previous number
        end
    end
end

fibonnaci(num)