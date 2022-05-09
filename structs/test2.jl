mutable struct Animal
    name::String
    sound::String
end

Pet1 = Animal("Dog", "Woof")
Pet2 = Animal("Cat", "Meow")
pet3 = Animal("Bird", "Tweet")

function whatsound(animal::Animal)
    return "$(animal.sound) "^2
end


println(Pet1)
println(whatsound(Pet1))