//
//  RDQRandomizer.swift
//  RanDice
//
//  Created by Oleksandr Rudavka on 2018-02-14.
//  Copyright © 2018 roudique. All rights reserved.
//

import Cocoa

enum RDQDice: Int {
    case d4 = 4
    case d6 = 6
    case d8 = 8
    case d10 = 10
    case d12 = 12
    case d20 = 20
    case d100 = 100
    
    init?(from string: String) {
        let validatedString = string.replacingOccurrences(of: "d", with: "")
        
        if let intValue = Int(validatedString) {
            self.init(rawValue: intValue)
        } else {
            return nil
        }
    }
    
    var description: String {
        switch self {
            case .d4:    return "d4"
            case .d6:    return "d6"
            case .d8:    return "d8"
            case .d10:   return "d10"
            case .d12:   return "d12"
            case .d20:   return "d20"
            case .d100:  return "d100"
        }
    }
    
    
    
    static func allValuNames() -> [String] {
        return [RDQDice.d4.description,
                RDQDice.d6.description,
                RDQDice.d8.description,
                RDQDice.d10.description,
                RDQDice.d12.description,
                RDQDice.d20.description,
                RDQDice.d100.description,
        ]

    }
}


class RDQRandomizer: NSObject {
    
    static func getRandomNumber(with diceEdge: Int) -> Int {
        return Int(arc4random_uniform(UInt32(diceEdge))) + 1
    }

    static func roll(dice: RDQDice) -> Int {
        return getRandomNumber(with: dice.rawValue)
    }
    
    static func roll(times: Int, dice: RDQDice) -> Int {
        var totalValue = 0
        
        for _ in 0...times {
            totalValue += roll(dice: dice)
        }
        
        return totalValue
    }
}
