# Build a number guessing game

# Display message on startup
println("-"^40)
println("This is number guessing game")
println("Let's see how good you are at this")
println("You have 5 tries, Good Luck!!!")
println("-"^40)

function levels()
    println("Choose a level")
    println("-"^20)
    println("1. Easy [1 - 10]")
    println("2. Medium [1 - 25]")
    println("3. Hard [1 - 50]")
    println("4. Expert [1 - 100]")

    _level = parse(Int, readline())

    if _level == 1
        number = rand(1:10)
    elseif _level == 2
        number == rand(1:25)
    elseif _level == 3
        number == rand(1:50)
    elseif _level == 4
        number = rand(1:100)
    end
    
    return number
end

# get guessed number from user
function input()
    print("Guess a number between 1 and 15: ")
    guess = parse(Int, readline())
    return guess
end

# keep scores in a variable
score = 0

# start game function
function start(number)
    counter = 0
    while counter < 5
        guess = input()

        if guess < number
            println("Too low, try again!\n")
            counter += 1
        elseif guess > number
            println("Too high, try again!\n")
            counter += 1
        else
            global score += 1
            println("\nYou guessed correctly!, Good job!")
            println("It took you $counter tries\n")
            break
        end
        if counter == 5
            println("")
            println("You lost, The number is $number \nBetter luck next time.\n")
        end
    end
end


# run the game in a loop till the user wants to quit the game
while true
    number = levels()
    start(number)
    print("Do you want to play again? [yes/No]: ")
    option = readline()
    println("")
    
    if option == "yes"
        continue
    else
        println("Your score is $score, hope you had fun.")
        println("Sorry to see you go...")
        println("Thanks for playing!!!")
        break
    end
end