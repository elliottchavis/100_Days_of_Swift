//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)



// Handling missing data - optionals


var age: Int? = nil
age = 40


// Unwrapping optionals


//An alternative to if let is guard let, which also unwraps optionals. guard let will unwrap an optional for you, but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.
//
//However, the major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.


var name: String? = nil

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

greet(nil)


// implicitly unwrapped options

let aged: Int! = nil


// Nil Coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anon"





// Optional Chaining

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

//That question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.






// Optional Try



// Failable initializers



// Typecasting
