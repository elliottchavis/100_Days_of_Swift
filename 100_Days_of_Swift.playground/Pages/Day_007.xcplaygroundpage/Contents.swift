//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)



// Structures

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)


// Computed properties


struct Sports {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}



// Property observers


struct Progress {
    var task: String
    var amount: Int {
    didSet {
                print("\(task) is now \(amount)% complete")
            }
    }
}



var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100







// Methods

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}


// Mutating methods  or methods that change properties

struct Person {
    var name: String
    
    mutating func mutate() {
        name = "Anonymous"
        print(name)
    }
}


var person = Person(name: "Billy Jean")
person.mutate()



// Properties and methods of strings

let str1 = "How much wood would a woodchuck chuck?...."

print(str1.count)

print(str1.hasPrefix("How"))

print(str1.uppercased())

print(str1.sorted())





//  Properties and methods of arrays



var toys = ["He_man"]

print(toys.count)

toys.append("GI_Joe")



toys.firstIndex(of: "Buzz")


print(toys.sorted())

toys.remove(at: 0)



// Initializers



struct User {
    var username: String
}




//We can provide our own initializer to replace the default one. For example, we might want to create all new users as “Anonymous” and print a message, like this:

struct User2 {
    var username: String
    
    init() {
        username = "Jimi Hendrix"
        print("New user is: \(username)")
    }
}


var user = User(username: "twostraws")
var user2 = User2()




//Referring to the current instance

struct Human {
    var name: String
    
    init(name: String) {
        print("\(name) is the name of the human")
        self.name = name
    }
}

var human = Human(name: "Jimi Hendrix")







// Lazy properties


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}


struct Man {
    var name: String
    
//      But what if we didn’t always need the family tree for a particular person? If we add the lazy keyword to the familyTree property, then Swift will only create the FamilyTree struct when it’s first accessed:
    
    lazy var familyTree = FamilyTree()
    
    
    

    init(name: String) {
        self.name = name
    }
}

var ed = Man(name: "Ed")






// Static properties and methods



struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}



let jordan = Student(name: "Ed")
let shaq = Student(name: "Taylor")


print(Student.classSize)



//Access control

//We could create a Person struct that has an id property to store their social security number:



struct Person2 {
     private var id: String           // just use private keyword

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
            return "My social security number is \(id)"
        }
}

let moodyMan = Person2(id: "12345")




// Structs summary


//You’ve made it to the end of the seventh part of this series, so let’s summarize:
//
//You can create your own types using structures, which can have their own properties and methods.
//You can use stored properties or use computed properties to calculate values on the fly.
//If you want to change a property inside a method, you must mark it as mutating.
//Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
//Use the self constant to refer to the current instance of a struct inside a method.
//The lazy keyword tells Swift to create properties only when they are first used.
//You can share properties and methods across all instances of a struct using the static keyword.
//Access control lets you restrict what code can use properties and methods.
//



































































