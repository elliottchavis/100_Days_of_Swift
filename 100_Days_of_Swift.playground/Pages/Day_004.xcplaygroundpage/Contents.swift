//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// For Loops

let count = 1...10

for num in count {
    print("Number is: \(num)")
}


// Loop through an Array

let albums = ["Led Zepplin I", "Coda", "Physical Graffiti"]

print("\n")

for album in albums {
    print("The album is: \(album)")
}

print("\n")



// While Loops


var num = 1

while num <= 20 {
    print(num)
    num += 1
}


// Repeat Loops

var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")



//For example, this print() function will never be run, because false is always false:

while false {
    print("This is false")
}


//....however this will run bc repeat checks at the end

repeat {
    print("This is false")
} while false



// Exiting Loops

var countDown = 10


while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}



// Exiting multiple loops



outerLoop: for i in 1...10 {   //give outer loop name
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}



//Skipping Items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}


// Infinite Loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}



// Looping Summary


//Loops let us repeat code until a condition is false.
//The most common loop is for, which assigns each item inside the loop to a temporary constant.
//If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
//There are while loops, which you provide with an explicit condition to check.
//Although they are similar to while loops, repeat loops always run the body of their loop at least once.
//You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
//You can skip items in a loop using continue.
//Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
//
//

















