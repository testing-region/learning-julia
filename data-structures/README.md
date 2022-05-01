# Data Structures In Julia

- A few examples of data structures in julia include:
  - Dictionaries.
  - Tuples.
  - Arrays.
- Tuples and arrays are ordered sequences of elements whereas dictionaries are not arranged.
- Tuples are immutable (i.e. they cannot change) while while elements in an array can be changed.

## Dictionaries

- They are used when the sets of data are related to one another.
- E.g. contact list; where names are associated to phone numbers.
- A dictionary is created using the `Dict` keyword.
- Data can be entered as the arguements of `Dict()` and relating them by arrows (`=>`).
- `Dict()` can also be left empty to initialise an empty dictionary.

E.g.

```julia
phonebook = Dict("John Doe" => "080-101", "Mary Doe" => "010-139", "Jane Doe" => "256-295")

# To add another entry to the existing dictionary
## SYNTAX:
# dictionary_name[key] = value
# where key => value in the dictionary_name

# adding Kramer to phonebook
phonebook["Kramer"] = "990-223"

# To get the phone number of John Doe
println(phonebook["John Doe"])
```

- To **delete** data from a dictionary, use the `pop!()` function.

SYNTAX:

```julia
pop!(dictionary_name, key)
```

- Dictionaries cannot be indexed.

## Tuples

- They are created by enclosing an ordered sequence of elements in `()`.
- Tuples can be indexed.

E.g.

```julia
animals = ("cat", "dog", "penguins")

# fetching cat
println(animals[1])
```

- Indexing in julia starts from $1$.
- Since tuples are immutable, they cannot be updated.

## Arrays

- They are mutable and ordered.

E.g.

```julia
# creating arrays
food = ["chicken", "rice", "milk"]

# updating 3rd item
food[3] = "oats"
```

- `push!()` adds elements to the end of an array.
- `pop!()` removes the last element of an array.

E.g.

```julia
# add cake to food
push!(food, "cake")

# remove cake from food
pop!("cake")
```

## Multi-dimensional Arrays

- They do not necessarily have to be of the same dimensions.

E.g.

```julia
favorites = [
    ["toffee", "gum", "lollipop"],
    ["eggs", "cake"],
    ["nike", "addidas"]
]
```

- `rand()` generates random numbers to populate an array of a given dimension.

```julia
### SYNTAX:
rand(range, type, ndims)
# ndims => dimensions (x, y, ...)
```

- `randn()` generates a normally-distributed random number of type T with mean 0 and standard deviation 1.

```julia
### SYNTAX
randn(range, type, ndims)
```

---

### Difference Between `rand()` and `randn()`

- `rand()` returns random values between 0 and 1. The random values follow a uniform distribution with a mean value of 0.5.
- `randn()` returns random values between -infinity and +inifinity. The random values follow a normal distribution with a mean value of 0 and a standard deviation of 1.
