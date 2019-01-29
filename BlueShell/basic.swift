//
//  basic.swift
//  BlueShell
//
//  Created by WnnWoo on 2019/1/17.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

func basicOperation() -> Bool {
    // 1. constant
    let maximumNumberOfLoginAttempts = 10
    // 2. variable
    var currentLoginAttempt = 0
    var x = 0.0, y = 0.0, z = 0.0
    // 3. Type Annotations
    var welcomeMessage: String = "Hello"
    var red = 1, green = "kingslanding", blue: Double = 0.7
    
    // Naming Constants and Variables
    let π = 3.14159
    let 你好 = "你好世界"
    let 🐶🐮 = "dogcow"
    let _ = "never used"
    
    var friendlyWelcome = "Hello!"
    friendlyWelcome = "Bonjour!"
    print(friendlyWelcome)
    
    let languageName = "Swift"
    //languageName = "Swift++"
    // This is a compile-time error: languageName cannot be changed.
    print("The current value of friendlyWelcome is \(friendlyWelcome)")
    
    //4. Integer
    let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
    let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
    
    print(minValue)
    print(maxValue)
    
    //5. Type Safety and Type Inference
    let meaningOfLife = 42
    let pi = 3.14159
    let anotherPi = 3 + 0.14159
    
    //6.Numeric Literals
    let decimalInteger = 17
    let binaryInteger = 0b10001       // 17 in binary notation
    let octalInteger = 0o21           // 17 in octal notation
    let hexadecimalInteger = 0x11     // 17 in hexadecimal notation
    
    //All of these floating-point literals have a decimal value of 12.1875:
    let decimalDouble = 12.1875
    let exponentDouble = 1.21875e1
    let hexadecimalDouble = 0xC.3p0
    let paddedDouble = 000123.456
    let oneMillion = 1_000_000
    let justOverOneMillion = 1_000_000.000_000_1
    
    //7.Numeric Type Conversion
    //7.1Integer Conversion
    //let cannotBeNegative: UInt8 = -1
    // UInt8 cannot store negative numbers, and so this will report an error
    // let tooBig: Int8 = Int8.max + 1
    // Int8 cannot store a number larger than its maximum value,
    // and so this will also report an error
    
    let twoThousand: UInt16 = 2_000
    let one: UInt8 = 1
    let twoThousandAndOne = twoThousand + UInt16(one)
    
    print(twoThousandAndOne)
    
    //Integer and Floating-Point Conversion
    let three = 3
    let pointOneFourOneFiveNine = 0.14159
    let PI = Double(three) + pointOneFourOneFiveNine
    let integerPi = Int(pi)
    // integerPi equals 3, and is inferred to be of type Int
    // pi equals 3.14159, and is inferred to be of type Double
    
    // Type Aliases
    typealias AudioSample = UInt16
    var maxAmplitudeFound = AudioSample.min
    
    //Booleans
    let orangesAreOrange = true
    let turnipsAreDelicious = false
    if turnipsAreDelicious {
        print("Mmm, tasty turnips!")
    } else {
        print("Eww, turnips are horrible.")
    }
    
    //Tuples
    if (funcTuple()){
        return false
    }
    
    if (funcOptional()){
        return false
    }
    
    return false
}

func funcTuple() -> Bool {
    
    let http404Error = (404, "Not Found")
    // http404Error is of type (Int, String), and equals (404, "Not Found")
    let (statusCode, statusMessage) = http404Error
    print("The status code is \(statusCode)")
    // Prints "The status code is 404"
    print("The status message is \(statusMessage)")
    // Prints "The status message is Not Found"
    let (justTheStatusCode, _) = http404Error
    print("The status code is \(justTheStatusCode)")
    // Prints "The status code is 404"
    print("The status code is \(http404Error.0)")
    // Prints "The status code is 404"
    print("The status message is \(http404Error.1)")
    // Prints "The status message is Not Found"
    
    let http200Status = (statusCode: 200, description: "OK")
    print("The status code is \(http200Status.statusCode)")
    // Prints "The status code is 200"
    print("The status message is \(http200Status.description)")
    // Prints "The status message is OK"
    
    return true
}

func funcOptional() -> Bool {
    var serverResponseCode: Int? = 404
    print(serverResponseCode)
    // serverResponseCode contains an actual Int value of 404
    serverResponseCode = nil
    print(serverResponseCode)
    // serverResponseCode now contains no value
    var surveyAnswer: String?
    // surveyAnswer is automatically set to nil
    print(surveyAnswer)
    return true;
}

