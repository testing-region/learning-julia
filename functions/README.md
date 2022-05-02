# Functions

## How To Declare A Function

```julia
### SYNTAX 1
function func_name(params)
    # body
end
```

```julia
### SYNTAX 2
func_name(params) = func_body
```

```julia
### SYNTAX 3: declaring as anonymous (lambda functions)
func_name = params -> func_body
```

## Mutating & Non-mutating Functions

- Mutating functions are functions that return an altered version of the input.
- Non-mutating functions do not alter their inputs.
- By convention, mutating functions must be followed by `!`.

### An example of sort() vs sort!()

```julia
nums = [3, 5, 2]

sort(nums)    # returns [2, 3, 5] without changing the value of nums
sort!(nums)   # returns [2, 3, 5] and changed the value of nums to [2, 3, 5]
```

## Broadcasting

- Broadcasting behaviour is denoted by `.`.
- Using an array for instance, in broadcasting, a function is applied to **each element** rather than taking the whole array as an object.

### An example of square() and square.()

```julia
# Matrix A
A = [
    2  3  1
    2  8  4
    5  7  5
]

square(x) = x ^ 2

square(A)
# Returns
# 
# 3×3 Matrix{Int64}:
#  15   37  19
#  40   98  54
#  49  106  58
# 
# This is equivalent to A * A

square.(A)
# Returns
# 
# 3×3 Matrix{Int64}:
#   4   9   1
#   4  64  16
#  25  49  25
#
# This is equivalent to the square of each element in the matrix A
```
