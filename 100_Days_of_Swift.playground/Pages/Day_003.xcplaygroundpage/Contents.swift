//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


// Operators and conditions

//Arithmetic Operators

let num1 = 2
let num2 = 2
let sum = num1 + num2

print(sum)

// Operator Overloading

//Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with. For example, + sums integers like this:
//

let meaningOfLife = 42
let doubleMeaning = 42 + 42

// Operator overloading basically lets you types


//Compound assignment operators

//i.e.
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"



//Comparison operators

let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"2pac" <= "Biggie"



// Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


// Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}



// The ternary operator


//...same thing as if else


print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}


// Switch statements

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}




//Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:





// Range Operators

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}


//Operators and conditions summary



//Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
//There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
//You can use if, else, and else if to run code based on the result of a condition.
//Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
//If you have multiple conditions using the same value, it’s often clearer to use switch instead.
//You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
//
//
//
//














