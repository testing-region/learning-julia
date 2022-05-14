# Things To Note

## Assigning Matrices

```julia
A = rand(1:4, 3, 3)
# Sample output:
# A =
# 3 4 5
# 1 2 3
# 6 7 8

B = A
C = copy(A)

A[1] = 17

display(B)
# B =
# 17 4 5
# 1 2 3
# 6 7 8

display(C)
# C =
# 3 4 5
# 1 2 3
# 6 7 8
```

- Matrix A and B are references to the same memory location.
- Updating matrix A also updates matrix B.
- `copy(x)` creates a new object with the same values as the x.

## `ones()`

- `ones(dim)` creates a matrix of ones with the given dimensions.

Sample:

```julia
ones(3)
# Output:
# 3-element vector{Float64}
# 1.0
# 1.0
# 1.0

ones(3, 3)
# Output:
# 3x3 matrix{Float64}
# 1.0  1.0  1.0
# 1.0  1.0  1.0
# 1.0  1.0  1.0
```

## Solving Linear Systems

- The problem Ax = b for square A is solved by the `\`  function.
