import UIKit

// Enumerations

print("Enter a color")
var anyColor : String = "cerulean"

enum RainbowColor {
    case red, orange, yellow, green, blue, indigo, violet
}

var newColor : RainbowColor = .yellow
//var anotherColor = RainbowColor.indigo

//print("My favorite color is \(newColor)")
//print("My least favorite color is \(anotherColor)")

switch newColor {
case .red:
    print("I like red apples")
case .orange:
    print("I enjoy a nice mandarin")
case .yellow:
    print("Bananas are my fav")
case .green:
    print("I'm allergic to grass")
case .blue:
    print("The sky is blue")
case .indigo:
    print("I have never use the indigo crayon")
case .violet:
    print("I prefer to say purple")
}


enum cardSuit {
    case spades, hearts, diamonds, clubs
}

var value = Int.random(in: 2..<11)
var suitNumber = Int.random(in: 0..<4)
var suit : cardSuit

if suitNumber == 0 {
    suit = .clubs
} else if suitNumber == 1 {
    suit = .hearts
} else if suitNumber == 2 {
    suit = .diamonds
} else {
    suit = .spades
}

print("You have chosen the \(value) of \(suit)")
