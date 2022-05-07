# Multiple Dispatch

- Multiple dispatch is a way to define a function that can be called with different types of arguments.
- At runtime, julia will look at the type of arguemrent to distach the correct method.
- Multiple dspatch makes software:
  - Fast
  - Extensible
  - Programmable
  - Fun to play with

## Understanding Multiple Dispatch - Looking at (+) operator

- `methods()` returns all the method definitions for the + operator.

```julia
methods(+)
```

- To know which method is used when we call (+), use the `@which` macro.

E.g.

```julia
@which 2 + 2
```

- The definitions of the (+) operator can be extented by defining new methods for it.
  - To do this, first import `+` from Base

```julia
import Base: +
```

Sample: Try to concatenate strings using `+`.

```julia
# extending + to concatenate strings
+(x::String, y::String) = string(x, y)
```

## Multiple Dispatch On Custom Functions

```julia
whatType(x, y) = println("This is any type")
whatType(x::Int64, y::Float64) = println("This is an integer and a float")
whatType(x::Int64, y::Int64) = println("These are two integers")
whatType(x::Float64, y::Float64) = println("These are two floats")
```
