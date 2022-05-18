import UIKit

// global variables
let myName = "Zac"
let myAge = 28

func displayPerson (name: String, age: Int) {
    let myName = "Kerra" // local variable
    let myAge = 21 // local variable
    print("My name is  \(name).")
    print("I am \(age) years old.")
    
    print("I lied, my name is really \(myName).")
    print("My real age is \(myAge)")
}

displayPerson(name: "Richard", age: 30)
displayPerson(name: myName, age: myAge)
// if there is a local variable in use then it goes to a global variable

var middleName: String?
middleName = "Rosetta"

if let mn = middleName {
    print("My middle name is \(mn)")
} else {
    print("I do not have a middle name.")
}
