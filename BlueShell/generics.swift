//
//  generics.swift
//  BlueShell
//
//  Created by WnnWoo on 2019/1/24.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

func testGenerics() -> Bool {
    
    let emptyArray = makeArray(repeating: "knock", numberOfTimes: 4)
    print(emptyArray)
    
    var possibleInteger: OptionalValue<Int> = .none
    possibleInteger = .some(100)
    print(possibleInteger);
    
    print(anyCommonElements([1, 2, 3], [3]))
    print(anyCommonElements2([5,6,7,8], [3,4,5,6]))
    print(anyCommonElements2(["Tom", "Cat", "Jerry", "lily"], ["zhangsan", "Liza", "lily", "Milo"]))

    return true
}

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

//You can make generic forms of functions and methods, as well as classes, enumerations, and structures.
// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

//Use where right before the body to specify a list of requirements—for example, to require the type to implement a protocol, to require two types to be the same, or to require a class to have a particular superclass.
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

//Prictise.1
//Modify the anyCommonElements(_:_:) function to make a function that returns an array of the elements that any two sequences have in common.
////Writing <T: Equatable> is the same as writing <T> ... where T: Equatable.
func anyCommonElements2<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
    var array = [T.Element]()
    
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                array.append(lhsItem)
            }
        }
    }
    return array
}
