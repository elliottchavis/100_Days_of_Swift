//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


// Closures

//Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.
//
//Functions used in this way are called closures, and although they work like functions they are written a little differently.


let driving = {
    print("I am driving my car")
}

driving()


// Accepting parameters in a closing

let drivingNew = { (place: String) in
    print("I am driving to \(place) in my new Chevy Silverado ")
}

drivingNew("San Diego")




// Return values from a closure


let drivingWithReturn = { (place: String) -> String in
    return "I am going surfing in \(place)"
}

let vaction = drivingWithReturn("Sayulita")
print("\n")
print(vaction)



// Closures as parameters


func travel(action: () -> Void) {
    print("\n")
    print("I am going to leave")
    action()
    print("I am here!")
}

travel(action: driving)




// Trailing closure syntax


travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}



//Using closures as parameters when they accept parameters


func travelTwo(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}


travelTwo { (place: String) in
    print("I'm going to \(place) in my car")
}



//Using closures as parameters when they return values


func travelThree(action: (String) -> String) {
    print("\n")

    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travelThree { (place: String) -> String in
    return "Travel Three: I'm going to \(place) in my car"
}




//Shorthand parameter names


travelThree {(place: String) -> String in
    return "Travel Four: I'm going to \(place) in my car"
}

//However, Swift knows the parameter to that closure must be a string, so we can remove it:

travelThree { place -> String in
    return "Travel Five: I'm going to \(place) in my car"
}


//It also knows the closure must return a string, so we can remove that:


travelThree { place in
    return " Travel Six: I'm going to \(place) in my car"
}


//As the closure only has one line of code that must be the one that returns the value, so Swift lets us remove the return keyword too:

travelThree { place in
    "Travel Seven: I'm going to \(place) in my car"
}

//Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.

travelThree {
    " Travel Eight: I'm going to \($0) in my car"
}





//Closures with multiple parameters


func travelFour(action: (String, Int) -> String) {
    print("\nTrave Fourth Function")
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travelFour {
    "I'm going to \($0) at \($1) miles per hour."

}


//Returning closures from functions


//In the same way that you can pass a closure to a function, you can get closures returned from a function too.
//
//The syntax for this is a bit confusing a first, because it uses -> twice: once to specify your function’s return value, and a second time to specify your closure’s return value.
//
//To try this out, we’re going to write a travel() function that accepts no parameters, but returns a closure. The closure that gets returned must be called with a string, and will return nothing.



func travelFive() -> (String) -> Void {
    return {
        print("\nTravelFiveFunction")
        print("I'm going to \($0)")
    }
}

let result = travelFive()
result("London")







// Capturing Values


//Closure capturing happens if we create values in travel() that get used inside the closure. For example, we might want to track how often the returned closure is called:


func travelCounter() -> (String) -> Void {
    var counter = 1

    return {
        print("\ntravelCounterFunction:")
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let resultTwo = travelCounter()
resultTwo("California")
resultTwo("Sayulia")
resultTwo("Puerta Vallarta")



//Closures summary








//You’ve made it to the end of the sixth part of this series, so let’s summarize:
//
//You can assign closures to variables, then call them later on.
//Closures can accept parameters and return values, like regular functions.
//You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//If the last parameter to your function is a closure, you can use trailing closure syntax.
//Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
//If you use external values inside your closures, they will be captured so the closure can refer to them later.
//
//








