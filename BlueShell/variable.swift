//
//  variable.swift
//  BlueShell
//
//  Created by WnnWoo on 2019/1/20.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

func testVariable() -> Bool{
    
    //1.Simple values
    var myVariable = 42
    print(myVariable)
    myVariable = 50
    print(myVariable)
    let myConstant = 42
    print(myConstant)
    
    //2. const value assinged by let
    let implicitInteger = 70
    print(implicitInteger)
    let implicitDouble = 70.0
    print(implicitDouble)
    let explicitDouble: Double = 70
    print(explicitDouble)
    
    //3. mix string and value
    let label = "The width is "
    let width = 94
    let widthLabel = label + String(width)
    print(widthLabel)
    
    let apples = 3
    let oranges = 5
    let appleSummary = "I have \(apples) apples."
    let fruitSummary = "I have \(apples + oranges) pieces of fruit."
    print(appleSummary)
    print(fruitSummary)
    
    //Type Annoation
    let welcomeMessage: String = "Welcome to Beijing"
    print(welcomeMessage)
    
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
    print(emptyDictionary)
    
    //6. Emptyarray
    
    shoppingList = []
    occupations = [:]
    print(occupations)
    
    return true
}
