//
//  protocol.swift
//  BlueShell
//
//  Created by WnnWoo on 2019/1/22.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

func testProtocol() -> Bool{
    
    var a = SimpleClass()
    a.adjust()
    let aDescription = a.simpleDescription
    
    var b = SimpleStructure()
    b.adjust()
    let bDescription = b.simpleDescription
    
    print(aDescription)
    print(bDescription)
    
    print(7.simpleDescription)
    // Prints "The number 7"
   // let c = 7.adjust()
    //print(c)
    
    //You can use a protocol name just like any other named type—for example, to create a collection of objects that have different types but that all conform to a single protocol. When you work with values whose type is a protocol type, methods outside the protocol definition are not available.
    let protocolValue: ExampleProtocol = a
    print(protocolValue.simpleDescription)
    // Prints "A very simple class. Now 100% adjusted."
    //print(protocolValue.anotherProperty) // Uncomment to see the error
    //Even though the variable protocolValue has a runtime type of SimpleClass, the compiler treats it as the given type of ExampleProtocol. This means that you can’t accidentally access methods or properties that the class implements in addition to its protocol conformance.
    print(5.5.absoluteValue)
    return true;
}

// using protocol to declare a protocol, it is like the interface in c++
protocol ExampleProtocol {
    var simpleDescription: String { get }
    var simpleInt: Int { get }
    mutating func adjust()
}

//Classes, enumerations, and structs can all adopt protocols.
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var simpleInt: Int = 1234
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
        simpleInt = 110
    }
}

//Notice the use of the mutating keyword in the declaration of SimpleStructure to mark a method that modifies the structure. The declaration of SimpleClass doesn’t need any of its methods marked as mutating because methods on a class can always modify the class.
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure" //self is immutable
    var simpleInt: Int = 5678
    mutating func adjust() {
        simpleDescription += " (adjusted)"
        simpleInt = 120
    }
}

// practise. Add another requirement to ExampleProtocol. What changes do you need to make to SimpleClass and SimpleStructure so that they still conform to the protocol?

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    var simpleInt: Int {
        return 0
    }
    mutating func adjust() {
        self += 42
    }
}


extension Double: ExampleProtocol {
    public var absoluteValue: Double{ //practise. Write an extension for the Double type that adds an absoluteValue property.
        return self
    }
    var simpleDescription: String {
        return "The number \(self)"
    }
    var simpleInt: Int {
        return 0
    }
    mutating func adjust() {
        self *= 2
    }
}

