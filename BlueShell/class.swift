//
//  class.swift
//  BlueShell
//
//  Created by WnnWoo on 2019/1/20.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

func testClassFunc() -> Bool {
    
    let shape = Shape()
    shape.numberOfSides = 7
    let shapeDescription: String = shape.simpleDescription()
    print(shapeDescription)
    
    let namedShape = NamedShape(name: "InitName")
    print(namedShape.showName())
    
    let test = Square(sideLength: 5.2, name: "my test square")
    print(test.area())
    print(test.simpleDescription())

    let triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
    print(triangle.perimeter)
    // Prints "9.3"
    triangle.perimeter = 9.9
    print(triangle.sideLength)
    // Prints "3.3000000000000003"
    print(triangle)
    
    let triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
    print(triangleAndSquare.square.sideLength)
    // Prints "10.0"
    print(triangleAndSquare.triangle.sideLength)
    // Prints "10.0"
    triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
    print(triangleAndSquare.triangle.sideLength)
    // Prints "50.0"
    
    //When working with optional values, you can write ? before operations like methods, properties, and subscripting. If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil. Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value. In both cases, the value of the whole expression is an optional value.
    let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
    let sideLength = optionalSquare?.sideLength
    print(optionalSquare)
    print(sideLength)
    
    return true
}

//
// Class delcare
//
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func showName() -> String {
        return "A named shape with \(name) ."
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name) // parent class
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    //In addition to simple properties that are stored, properties can have a getter and a setter.
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            //the new value has the implicit name newValue. You can provide an explicit name in parentheses after set.
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

