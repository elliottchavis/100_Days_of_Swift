//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// Arrays

let robert = "Robert Plant"
let jimmy = "Jimmy Page"
let john = "John Bonham"
let paul = "John Paul Jones"

let ledZepplin = [robert, jimmy, john, paul]

print(ledZepplin)



// Sets...like arrays without order & no duplicates!!!!

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])


// Tuples

var name = (first: "Two", last: "Pac")
name.0


// Arrays vs sets vs tuples

//If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")


//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:


let set = Set(["aardvark", "astronaut", "azalea"])


//If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]






// Dictionaries

let musicians = [
    "Neil Young": 7.3,
    "Jerry Garcia": 9.9
]

musicians["Neil Young"]


// Dictionarie Default Values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]



// Create empty collections

var teams = [String: String]()  //empty dictionary
teams["Paul"] = "Red"


var results = [Int]()  //empty array

var words = Set<String>()  //emtpy set
var numbers = Set<Int>()


// Enumerations

enum Result {
    case success
    case failure
}

let result = Result.failure


// Enum associates values


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}


let talking = Activity.talking(topic: "football")

// Enum raw values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}  //swift will automatically assign the rest in ascending order!!!



// Complex types summary

//Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
//Arrays store items in the order you add them, and you access them using numerical positions.
//Sets store items without any order, so you can’t access them using numerical positions.
//Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
//Dictionaries store items according to a key, and you can read items using those keys.
//Enums are a way of grouping related values so you can use them without spelling mistakes.
//You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
//
//
//


























