//
//  struct.swift
//  BlueShell
//
//  Created by WnnWoo on 2019/1/22.
//  Copyright © 2019年 WnnWoo. All rights reserved.
//

import Foundation

func testEnum() -> Bool{

    let ace = Rank.ace
    let aceRawValue = ace.rawValue // 1
    let jack = Rank.jack
    let jackRawValue = jack.rawValue // 11
    
    let compareResult: Bool = compareRank(ace, jack);
    if (compareResult){
        print("compareRank test fail")
        return false;
    }
 
    //By default, Swift assigns the raw values starting at zero and incrementing by one each time, but you can change this behavior by explicitly specifying values. In the example above, Ace is explicitly given a raw value of 1, and the rest of the raw values are assigned in order. You can also use strings or floating-point numbers as the raw type of an enumeration. Use the rawValue property to access the raw value of an enumeration case.
    //Use the init?(rawValue:) initializer to make an instance of an enumeration from a raw value. It returns either the enumeration case matching the raw value or nil if there is no matching Rank.
    if let convertedRank = Rank(rawValue: 3) {
        let threeDescription = convertedRank.simpleDescription()
        print(convertedRank)
        print(threeDescription)
    }
    
    let hearts = Suit.hearts
    let heartsColor = hearts.color()
    if (heartsColor != String("red")){
        return false
    }
    let heartsDescription = hearts.simpleDescription()
    if (heartsDescription != String("hearts")){
        return false
    }
    print(heartsDescription)
    print(heartsColor)
    
    let success = ServerResponse.result("6:00 am", "8:09 pm")
    let failure = ServerResponse.failure("Out of cheese.")
    let wrongInput = ServerResponse.wrongInput("Jack", "123456", "India")
    switch wrongInput {
    case let .result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
    case let .failure(message):
        print("Failure... \(message)")
    case let .wrongInput(name, password, address):
        print("Already used user name: \(name) and \(password) and \(address)")
    }
    // Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."
    
    let threeOfSpades = Card(rank: .three, suit: .spades)
    let threeOfSpadesDescription = threeOfSpades.simpleDescription()
    print(threeOfSpadesDescription)
    let fullDeck = threeOfSpades.fullDeck()
    print(fullDeck)
    
    return true;
}

// practise 1. Write a function that compares two Rank values by comparing their raw values.

func compareRank(_ left: Rank, _ right: Rank) -> Bool{
    
    if (left.rawValue != right.rawValue){
        return false
    }
    return true;
}

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    // practise 2. Add a color() method to Suit that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.
    func color() -> String{
        switch self{
        case .spades, .clubs:
            return "black"
        case .diamonds, .hearts:
            return "red"
            
        }
    }
}

enum ServerResponse {
    case result(String, String)
    case failure(String)
    case wrongInput(String, String, String) // practise 3. Add a third case to ServerResponse and to the switch
}

//Use struct to create a structure. Structures support many of the same behaviors as classes, including methods and initializers. One of the most important differences between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference.

// practise 4. Write a function that returns an array containing a full deck of cards, with one card of each combination of rank and suit.

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    func fullDeck() -> (_rank: Rank, _suit: Suit){
        return (rank, suit)
    }
}

