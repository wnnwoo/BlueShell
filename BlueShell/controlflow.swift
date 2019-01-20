//
//  controlflow.swift
//  BlueShell
//
//  Created by WnnWoo on 2019/1/20.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

// the global function for test purpose
func controlFlowDemo() -> Bool
{
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
    let optionalString: String? = "Hello" //
    print(optionalString == nil)
    // Prints "false"
    let optionalName: String? = "John Appleseed"
    var greeting = "Hello!"
    if let name = optionalName {
        greeting = "Hello, \(name)"
    }
    print(greeting)
    
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
    
    return true
}
