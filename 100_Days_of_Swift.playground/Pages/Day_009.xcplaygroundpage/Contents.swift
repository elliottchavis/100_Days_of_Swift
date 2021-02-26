//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


//Protocols are a way of describing what properties and methods something must have. You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol.
//
//For example, we can write a function that accepts something with an id property, but we don’t care precisely what type of data is used. We’ll start by creating an Identifiable protocol, which will require all conforming types to have an id string that can be read (“get”) or written (“set”):


protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print("My ID is \(thing.id)")
}



// Protocol Inheritance

//One protocol can inherit from another in a process known as protocol inheritance. Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.
//
//We’re going to define three protocols: Payable requires conforming types to implement a calculateWages() method, NeedsTraining requires conforming types to implement a study() method, and HasVacation requires conforming types to implement a takeVacation() method:
//


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }






// Extensions

//Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.
//
//For example, we could add an extension to the Int type so that it has a squared() method that returns the current number multiplied by itself:


extension Int {
    func squared() -> Int {
        return self * self
    }
}



// Protocol extensions

//Protocols let you describe what methods something should have, but don’t provide the code inside. Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.
//
//Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.

//Protocol extensions can provide default implementations for our own protocol methods. This makes it easy for types to conform to a protocol, and allows a technique called “protocol-oriented programming” – crafting your code around protocols and protocol extensions.
//
//First, here’s a protocol called Identifiable that requires any conforming type to have an id property and an identify() method:

//You’ve made it to the end of the ninth part of this series, so let’s summarize:

//Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
//You can build protocols on top of other protocols, similar to classes.
//Extensions let you add methods and computed properties to specific types such as Int.
//Protocol extensions let you add methods and computed properties to protocols.
//Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
