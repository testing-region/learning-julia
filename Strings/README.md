# Strings

- To create a string, enclose characters in "" or """.
- Single quotation marks ('') are used to identify characters not strings.
  - E.g. 'hello' will return an error.

## String Interpolation

- It is the process of evaluating a string literal containing one or more placeholders, yielding a result in which the placeholders are replaced with their corresponding values.
- In simple terms, the placeholders are more like expressions or variables within a string such that what they return are directly added to the string rather than converting and concatenating them.
- To use the dollar sign (`$`) is used to create placeholders in a string in Julia.

E.g.

```julia
name = "David"
age = 20
message = "My name is $name and I am $age years old."
println(message)    # returns "My name is David and I am 20 years old."

## Expressions can also be evaluated in string interpolation.
x = 3
y = 4
println("The sum of $x and $y is $(x + y)")     # returns "The sum of 3 and 4 is 7"
```

## String Concatenation

- It is the process of adding strings together.
- There are 3 ways of concatenating strings in Julia.
- The first is the use of `string()` function.
- `string()` also converts non-string inputs to strings.

E.g.

```julia
string("How many cats ", "are too many cats?")      # returns "How many cats are too many cats?"

string("I don't know but ", 10, " cats are a lot")      #returns "I don't know but 10 cats are a lot"
```

- `*` can also be used to concatenate strings.

E.g.

```Julia
part1 = "How many cats"
part2 = " are too many cats?"
fullPart = part1 * part2
# fullPart = ""How many cats are too many cats?""
```

- Finally string interpolation can also be used to concatenate strings.

E.g.

```julia
# from the previous block
fullPart = "$part1$part2"      # the results are the same
```
