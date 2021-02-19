//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


// Classes


// Classes don't come with built in initializer


class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let butcher = Dog(name: "Butcher", breed: "mutt")



// Class Inheritance




//However, we can also give Poodle its own initializer. We know it will always have the breed “Poodle”, so we can make a new initializer that only needs a name property. Even better, we can make the Poodle initializer call the Dog initializer directly so that all the same setup happens:


class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}













// Override Method





//Child classes can replace parent methods with their own implementations – a process known as overriding. Here’s a trivial Dog class with a makeNoise() method:




class Cat {
    func makeNoise() {
        print("Meow!")
    }
}

let cat = Cat()
cat.makeNoise

class Siamese: Cat {
    
    override func makeNoise() {
        print("Hello, nice to meeeeet you.....")
    }
}


let garfield = Siamese()
garfield.makeNoise



// Final classes




final class Horse {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}






// Copying objects


//The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.

//For example, here’s a simple Singer class that has a name property with a default value:




class Singer {
    var name = "Taylor Swift"
}

//If we create an instance of that class and prints its name, we’ll get “Taylor Swift”:
var singer = Singer()
print(singer.name)


//Now let’s create a second variable from the first one and change its name:
var singerCopy = singer
singerCopy.name = "Justin Bieber"






//Because of the way classes work, both singer and singerCopy point to the same object in memory, so when we print the singer name again we’ll see “Justin Bieber”:

print(singer.name)


//On the other hand, if Singer were a struct then we would get “Taylor Swift” printed a second time:





//Deinitializers



//The fourth difference between classes and structs is that classes can have deinitializers – code that gets run when an instance of a class is destroyed.
//
//To demonstrate this, here’s a Person class with a name property, a simple initializer, and a printGreeting() method that prints a message:
//
//




class Person {
    
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    for _ in 1...3 {
        let person = Person()
        person.printGreeting()
    }
    
    deinit {
        print("\(name) is no more!")
    }
}





//Mutability

//The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.
//
//However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.
//
//This difference means you can change any variable property on a class even when the class is created as a constant – this is perfectly valid code:


class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)




//You’ve made it to the end of the eighth part of this series, so let’s summarize:
//
//Classes and structs are similar, in that they can both let you create your own types with properties and methods.
//One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
//You can mark a class with the final keyword, which stops other classes from inheriting from it.
//Method overriding lets a child class replace a method in its parent class with a new implementation.
//When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
//Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
//Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
