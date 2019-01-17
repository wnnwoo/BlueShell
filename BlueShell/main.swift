//
//  main.swift, switft 4.2
//  BlueShell
//
//  Created by WnnWoo on 2019/1/17.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

print("Hello, World!")

//1.Simple values
var myVariable = 42
myVariable = 50
let myConstant = 42

//2. const value
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//3. mix string and value
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(fruitSummary)

//Type Annoation
var welcomeMessage: String

//4. multiline need """ as a mark
let quotation = """
Even though there's whitespace to the left,
the actual lines aren't indented.
Except for this line.
Double quotes (") can appear without being escaped.
I still have \(apples + oranges) pieces of fruit.
"""
print(quotation)

//5. Array andk Key-Value dictionary
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(shoppingList)
print(occupations)

shoppingList.append("blue paint")
print(shoppingList)

//5. create empty array or dictionay
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
print(emptyArray)

//6. Emptyarray

shoppingList = []
occupations = [:]
print(occupations)

//7. Control flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
//Write a question mark (?) after the type of a value to mark the value as optional
var optionalString: String? = "Hello" //
print(optionalString == nil)
// Prints "false"
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
