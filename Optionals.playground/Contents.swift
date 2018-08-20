//: Playground - noun: a place where people can play

import Cocoa


var middleName: String? = nil

// force Unwrapping
// middleName!
// will give fatal error if find nil
// print("\(firstName) \(middleName!) \(lastName)")


// nil Coalescing operator
// print (middleName ?? "No middle name.")
// Optional ?? "Non-Optional Value"

// if let
var firstName = "Pam"
var lastName = "Morgan"

if let name = middleName {
    //They've got a middle name
    // Name is of type String
    // middle name is of type String?
    print("\(firstName) \(name) \(lastName)")
} else {
    //they don't have middle name
    print("\(firstName) \(lastName)")
}


/*
 Izaak's notes
var firstName = "Izaak"
var middleName: String? = nil
var lastName = "Prats"

// Force Unwrapping
// middleName!
// print("\(firstName) \(middleName!) \(lastName)")

// Nil Coalescing Operator
// Optional ?? Non-Optional Value
// print(middleName ?? "No middle name :(")
// print("\(firstName) \(middleName ?? "no middle name") \(lastName)")

// if let
if let middleName = middleName {
    // they've got a middle name
    print("\(firstName) \(middleName) \(lastName)")
} else {
    // they don't have a middle name
    print("\(firstName) \(lastName)")
}
*/


//Unwrapping
// Optional value -> Non-Optional Value
// ex) String? -> String || nil


var hasAllergies = false // Bool

var allergies: String? = nil // blank if no allergies

print("Please enter your allergies!")

let input = readLine()

if let input = input {
    if input != "" {
        allergies = input
    }
}

print(allergies ?? "you don't have any allergies")

//this won't work in playground b/c readline only works in project.














