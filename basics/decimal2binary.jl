# Write a scipt that converts a decimal to binary

# Display message
println("Decimal To Binary Converter")
println("Convert Decimals To Binary")
println("-"^30)

# Get input from user
print("Enter a number: ")
num = readline()

# Convert input to Integer
quotient = parse(Int64, num)

base = 2

numBase2 = Vector{Int64}()

# remainder = quotient % base
# quotient ÷= base

while quotient !== 1    # when quotient = 1, division ends
    remainder = quotient % base
    push!(numBase2, remainder)
    global quotient ÷= base

    if quotient == 1
        # add 1 makeup for the skipped value in the loop
        push!(numBase2, 1)
    end
end

# store converted value to convertedNum
convertedNum = ""
for x in length(numBase2):-1:1
    global convertedNum *= string(numBase2[x])
end

# append base 2 symbol to numBase2
println("$num is $convertedNum" * "₂")