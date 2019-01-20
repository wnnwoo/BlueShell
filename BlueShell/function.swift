//
//  function.swift Functions and Closures (闭包函数，临时指定一个没有名称的函数）
//  BlueShell
//
//  Created by WnnWoo on 2019/1/20.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

// the test function of
func testAllFunc() -> Bool{
    
    // 1. basic function usage w/o label
    var greetStr = greet(person: "Bob", day: "Tuesday")
    print(greetStr)

    // 2. function pamameter w/ label
    greetStr = greet("John", on: "Wednesday")
    print(greetStr)

    //3. array
    let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
    print(statistics.sum)
    // Prints "120"
    print(statistics.2)
    // Prints "120"
    
    //4. nested function
    print(returnFifteen())
    
    //5. Functions are a first-class type. This means that a function can return another function as its value.
    let increment = makeIncrementer()
    print(increment(7))
    
    //6. A function can take another function as one of its arguments.
    let numbers = [20, 19, 7, 12]
    let matched = hasAnyMatches(list: numbers, condition: lessThanTen)
    print(matched)
    
   //7. Functions are actually a special case of closures: blocks of code that can be called later. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed—you saw an example of this already with nested functions. You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.
    
    numbers.map({ (number: Int) -> Int in
        let result = 3 * number
        return result
    })
    
    let mappedNumbers = numbers.map({ number in 3 * number })
    print(mappedNumbers)
    // Prints "[60, 57, 21, 36]"
    
    let sortedNumbers = numbers.sorted { $0 > $1 }
    print(sortedNumbers)
    // Prints "[20, 19, 12, 7]"
    
    return false
}

//Use func to declare a function. Call a function by following its name with a list of arguments in parentheses.
//Use -> to separate the parameter names and types from the function’s return type.
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

//By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

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


//Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

//Functions are a first-class type. This means that a function can return another function as its value.
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}


//A function can take another function as one of its arguments.
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}


