# Control Structures

## Loops

- `while` loop.
- `for` loop.

### While loop

```julia
### SYNTAX
while condition
    loop body
end

### Example
while n < 10
    n += 1
    println(n)
end
```

### For loop

```julia
for var in iterable
    loop body
end

### Example
for n in 1:10
    println(n)
end
```

- `in` keyword can be replaced by `=`

### Array Comprehensions

E.g.

```julia
c = [i for i in 1:100]   # creates a 100 element array
```

## Conditionals

### If Statement

```julia
### SYNTAX
if condition_1
    option_1
elseif condition_2
    option_2
else
    option_3
end
```

#### Tenary Operator

```julia
### SYNTAX
a ? b : c

# This is similar to
if a
    b
else
    c
end
```

#### Short-circuit evaluation

```julia
### SYNTAX
a && b

### EXAMPLES
x = 5
y = 21

(x > y) && println("x is larger than y")
(x < y) && println("y is larger than x")
```
