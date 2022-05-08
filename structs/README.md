# Structs

- Allows you to define custom types.
- It is similar to classes in Object-Oriented Programming (OOP) languages.
- `struct` keyword is used to define a custom type (a struct).

SYNTAX:

```julia
struct <name>
    <field1>
    <field2>
    ...
    <fieldN>
end
```

- Structs are immutable by default.
- To create a mutable struct, use the `mutable` keyword with `struct`.

SYNTAX:

```julia
mutable struct <name>
    <field1>
    <field2>
    ...
    <fieldN>
end
```

Example:

```julia
mutable struct Person
    name::String
    age::Int64
end

# Create a new person object
David = Person("David", 20)

# increase the David's age by 1
David.age += 1
```

## Using a Custom Constructor

Example:

```julia
mutable struct Person
    name::String
    age::Int64
    isActive::Bool

    # Custom constructor
    function Person(name, age)
        new(name, age, true)  # create a new person object with isActive set to true by default
    end
end
```

## How To Associate Methods With A Specific Object

Example:

```julia
# Using the Person struct defined above
David = Person("David", 20)

# Create a birthday method to increase person's age by 1
function birthday(person::Person)
    person.age += 1
end

# Call the birthday method
birthday(David)
# result: David's age is now 21
```
