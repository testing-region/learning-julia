mutable struct Person
    name::String
    age::Int64
end

David = Person("David", 20)

function whoami(person::Person)
    return "Your name is $(person.name)"
end

function whatage(person::Person)
    return "You are $(person.age) years old"
end

println(David)
println(whoami(David))
println(whatage(David))