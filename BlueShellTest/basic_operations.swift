//
//  basic_operations.swift
//  BlueShellTest
//
//  Created by WnnWoo on 2019/1/26.
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
    var red, green, blue: Double = 0.7
    
    // Naming Constants and Variables
    let π = 3.14159
    let 你好 = "你好世界"
    let 🐶🐮 = "dogcow"
    
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
    return true
}
