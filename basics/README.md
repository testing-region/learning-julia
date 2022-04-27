# Basics of Julia & Numerical Computation

## Displaying Values

```julia
# Print output to a new line
prinln("This is julia")
```

## How To Assign Variables

- Julia is case-sensitive.
- Variable names must begin with a letter (A-Z or a-z), underscore, or a subset of Unicode code points greater
than 00A0 (e.g. letters and math symbols).

```julia
variable = 42

# check the type of variable
typeof(variable)
```

## Using Unicode Charaters In Code

- `\:smile:` will create a smiling emoji.
- Emojis are entered using `\:` followed by the emoji name.
  - Use tab to select the emoji.
- Scientific characters (or latex notations) can be used by typing backslash (`\`) followed by the name of the character. E.g. `\alpha` will display `α`.
- Unicode charaters can be used for variables too.

## Commenting

- Comments are written using the hashtag symbol (`#`).
- Multiline comments are written by placing it between `#=` and `=#`.

## Mathematical Operators

Symbol | Meaning
----- | -----
\+ | Addition
\- | Subtraction
\* | Multiplication
\/, \\ | Division
^ | Power
% | Modulus
÷ (\div \<tab>) | Integer division

## Boolean Operators

Symbol | Meaning
----- | -----
! | not
&& | and
\|\| | or

## Updating Operators

Symbol (with usage) | Meaning
----- | -----
x `+=` 1 | $x = x + 1$
x `-=` 1 | $x = x - 1$
x `/=` 1 | $x = x / 1$
x `*=` 1 | $x = x * 1$
x `÷=` 1 | $x = x ÷ 1$
x `%=` 1 | $x = x$ % $1$
x `^=` 1 | $x = x$ ^ $1$

## Getting Input From I/O Stream

- `readline()` method reads a line of text from standard input (STDIN) until a newline character is entered.

> In plain speech, reads text until you hit enter.

E.g.

```julia
name = readline()   # get name from user
```

- Values returned by `readline()` are always **Strings.**

- `readlines()` method is used to read multiple lines (say N lines) from text from STDIN.
- The N lines are stored as a 1-D String array.
- Lines are separated by newlines. (Basically, hitting the enter key.)
- CTRL-D is pressed to stop taking input.

E.g.

```julia
lines = readlines()
```

## Converting Between Types

- `parse()` resolves a string as a number.
  - If the string does not contain a valid number for the chosen type, an error is raised.

```julia
# SYNTAX:
parse(type, string, base = int)
```

- `convert()` resolves a value from `Int` to `Float` and vice versa provided that it is a valid representation of the data type being converted to.

```julia
# SYNTAX:
convert(type, value)

# tests
convert(Int64, 3.0)   # returns 3
convert(Int64, 3.5)   # returns an error
```

- `string()` creates a string from any value.

## Vectorized "dot" operators

- The use of dot(`.`) before mathematical operators are used to perform elementwise computation on arrays.
  - E.g. $[1, 2, 3]$ .* $5$
  - This multiplies all the elements by 5.

## Numeric Comparisons

Symbol | Meaning
---- | -----
== | Equality
!= | Not equals
< | Less than
\> | Greater than
<= | Less than or equal to
\>= | Greater than or equal to
=== | Strict comparison operator (Takes data type into consideration)

In-built Functions | Meaning
----- | -----
isequal(x, y) | checks if x and y are identical
isfinite(x) | checks if x in a finite number
isinf(x) | checks if x is an infinite number
isnan(x) | checks if x is not a number

> `isequal()` can be used to distinguish between signed zeros. E.g. -0 and 0.
>
> If you choose to define your own equality function, define a `hash()` method to ensure that `isequal(x, y)` implies `hash(x) == hash(y)`

### Things To Note

- The default type for an integer literal depends on whether the target system has a 32-bit architecture or a
64-bit architecture.
- The Julia internal variable `Sys.WORD_SIZE` indicates whether the target system is 32-bit or 64-bit.
- `Inf` is a variable that denotes infinity.
- `NaN` means 'Not a Number'.
- `e` can be used in place of `^` to denote exponent or power when used with numbers. E.g. 3e3 == 3000 and 3e-3 == 0.003

## Challenges

- Write a code that converts a decimal number to binary.
