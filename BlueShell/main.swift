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

//
//7. Control flow
//
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

//If the optional value is missing, the default value is used instead
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

//switch case
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?"

// for loop
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25"

// while loop
var n = 2
while (n < 100) {
    n *= 2
}
print(n)
// Prints "128"
var m = 2
repeat { //do-while
    m *= 2
} while m < 100
print(m)
// Prints "128"

// Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values.

var total = 0
for i in 0..<4 {
    total += i // 0+1+2+3
}
print(total)

total = 0
// Prints "6"
for i in 0...4{
    total += i // 0+1+2+3+4
}
print(total)

//8. Functions and Closures (闭包函数，临时指定一个没有名称的函数）

//Use func to declare a function. Call a function by following its name with a list of arguments in parentheses.
//Use -> to separate the parameter names and types from the function’s return type.
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
var greetStr = greet(person: "Bob", day: "Tuesday")
print(greetStr)

//By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greetStr = greet("John", on: "Wednesday")
print(greetStr)

//Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"

//Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//Functions are a first-class type. This means that a function can return another function as its value.
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
