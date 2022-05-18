import UIKit

// Lesson 3.1
// Optionals
// for when you don't know if there is a value there

struct Person {
    var lastName: String
    var firstName: String
    var middleInitial: Character?
}

let lem = Person(lastName: "Mason", firstName: "Lakeya", middleInitial: "E")
let zac = Person(lastName: "Carpenter", firstName: "Zac", middleInitial: "A")
let rt2 = Person(lastName: "Tillies", firstName: "Richard", middleInitial: nil)

if lem.middleInitial != nil {
    print("\(lem.firstName)'s middle initial is \(lem.middleInitial)")
}

// checks if mi is set, then executes the code
if let mi = zac.middleInitial {
    print("\(zac.firstName)'s middle initial is \(mi)")
}

if let fail = rt2.middleInitial {
    print("\(rt2.firstName)'s middle initial is \(fail)")
} else {
    print("\(rt2.firstName) does not have a middle initial")
}

func showMiddleInitial(name: Person) {
    if let mi = name.middleInitial {
        print("\(name.firstName)'s middle initial is \(mi)")
    } else {
        print("\(name.firstName) does not have a middle initial")
    }
}

showMiddleInitial(name: lem)
showMiddleInitial(name: zac)
showMiddleInitial(name: rt2)


// Lesson 3.2
// Type Casting and Inspection

struct Animal {
    var name: String
    var type: String
    var age: Int
}

/*
func createClientPet(name, type, age) -> Animal {
    return Animal(
}
*/


// Lesson 3.3
// Guard

func singHappyBirthday() {
    guard birthdayToday else {
        print("Sorry it's not your birthday")
        return
    }

    print("Happy Birthday")
}

func throwParty(_ numGuests: Int) {
    print("You have \(numGuests) coming to your party!")
}

func blowOutCandles(_ age: Int) {
    print("You have \(age) candles on your cake!")
}

var birthdayToday : Bool
var today = "April 6"
var birthday = "July 29"

if today == birthday {
    birthdayToday = true
    singHappyBirthday()
    throwParty(10)
    blowOutCandles(29)
}


