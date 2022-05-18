/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
/*
 Zac Carpenter
 4/09/2021
 Purpose: To practice using type casting.
 */

let myList: [Any] = [4, false, 27.5, 3000, "hello", true, "world", 7.314]
print(myList)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in myList {
    if let anInt = item as? Int {
        print("The integer has a value of \(item)")
    } else if let aDouble = item as? Double{
        print("The double has a value of \(item)")
    } else if let aString = item as? String {
        print("The string has a value of \(item)")
    } else if let aBool = item as? Bool {
        print("The bool has a value of \(item)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let myDictionary: [String:Any] = ["Zac": 28, "Double": 25.25, "Professor T": false, "Andrew": "29", "Piper": false]
print(myDictionary)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in myDictionary {
    if let doubleVal = value as? Double {
        total += doubleVal
    } else if let intVal = value as? Int {
        total += Double(intVal)
    } else if let stringVal = value as? String {
        total += 1
    } else if let boolVal = value as? Bool {
        if boolVal {
            total += 2
        } else {
            total -= 3
        }
    }
}

print("The value of total: \(total)")
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_, value) in myDictionary {
    if let doubleVal = value as? Double {
        total2 += doubleVal
    } else if let intVal = value as? Int {
        total2 += Double(intVal)
    } else if let stringVal = value as? String, let convertedVal = Double(stringVal) {
        total2 += convertedVal
    }
}

print("The value of total: \(total2)")

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
