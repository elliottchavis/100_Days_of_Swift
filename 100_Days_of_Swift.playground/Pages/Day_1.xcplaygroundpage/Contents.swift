import UIKit

var str = "Goodbye"
var pop = 10_000_000


// Multi-line Strings

var str1 = """
This hits
over many
multiple
lines...
"""

var str2 = """
This hits \
over many \
multiple \
lines....
"""

print(str1, "\n")
print(str2)




// Doubles & Booleans

var pi = 3.141  // automatically double

var awesome = true


// String Interpolation

var score = 100
var score_str = "Your score as \(score)"
var second_score = "The test results say: \(score_str)"

print("\n",second_score, "\n")





// Constants

let best = "Jordan"



// Type Annotations, Type Inference

let strSuperBowl = "2021 Bucs SuperBowl Champions"

let album: String = "Led Zepplin"
let year: Int = 1969
let height: Double = 1.88
let LedZepplinBest: Bool = true


// Summary

//You’ve made it to the end of the first part of this series, so let’s summarize.
//
//You make variables using var and constants using let. It’s preferable to use constants as often as possible.
//Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
//Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
//String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
//Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
//
//





























