//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


// Functions


func printHelp() {
    let message = """
    
    Welcome to my app!
    
    Run this app inside directory of images and MYAPP!
    ill resize them all into thumbnails
    """
    
    print(message)
    
}

printHelp()


// Acceptin parameters

func square(num: Int) {
    print(num * num)
}
print("\n")
square(num: 2)



// Returning Values

func square_two(number: Int) -> Int {
    return number * number
}

print("\n")
let result = square_two(number: 2)
print(result)



// Parameter Labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Led Zepplin")



// Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Jimi Hendrix")




// Default Parameters


func hello(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

hello("Jimi Hendrix")
hello("Jimi Hendrix", nicely: false)




// Variadic functions


//Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type. The print() function is actually variadic: if you pass lots of parameters, they are all printed on one line with spaces between them:


func squareNumbers(numbers: Int...) {
    for num in numbers {
        print("\(num) squared is \(num * num)")
    }
}

squareNumbers(numbers: 1, 2, 3, 4, 5)





//Writing throwing functions

enum PasswordError: Error {
    case obvious
}

//Now we’ll write a checkPassword() function that will throw that error if something goes wrong. This means using the throws keyword before the function’s return value, then using throw PasswordError.obvious if their password is “password”.
//
//Here’s that in Swift:


//func checkPassword(_ password: String) throws -> Bool {
//    if password == "password" {
//        throw PasswordError.obvious
//    }
//
//    return true
//}



// Running throwing function

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true

    
    do {
        try checkPassword("password")
        print("That password is good!")
    } catch {
        print("You can't use that password.")
    }

}

checkPassword("hobby")


// inout parameters


func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)




// Functions summary


//Functions let us re-use code without repeating ourselves.
//Functions can accept parameters – just tell Swift the type of each parameter.
//Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
//You can use different names for parameters externally and internally, or omit the external name entirely.
//Parameters can have default values, which helps you write less code when specific values are common.
//Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
//Functions can throw errors, but you must call them using try and handle errors using catch.
//You can use inout to change variables inside a function, but it’s usually better to return a new value.
//























