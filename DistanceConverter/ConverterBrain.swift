//
//  ConverterBrain.swift
//  DistanceConverter
//
//  Created by Chris Price on 12/18/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import Foundation

enum Units: String {
    case mile
    case yard
    case feet
    case inch
    case kilometer
    case meter
    case decimeter
    case centimeter
    case millimeter
    case nauticalMile
    case fathom
    case league
    case furlong
    case rod
    case chain
}


class ConverterBrain {
    //var userInputNumber: Double
    var fromUnitType: Units? // Why did we make these optional.
    var toUnitType: Units?
    
   /* init(userInputNumber: Double) {
        self.userInputNumber = userInputNumber
    }
    
    func setUserInputNumber(_ number: String) -> Double {
        if let userInputNum = Double(number) {
            userInputNumber = userInputNum
        }
        
        return userInputNumber
    } */
    
    
    
    func from(_ number: Double) -> Double { // convert from user input and desired input units into meters.
        switch fromUnitType {
        case .mile:
            let result = number * 1609.34
            return result
        case .yard:
            let result = number * 1609.34
            return result
        case .feet:
            let result = number * 1609.34
            return result
        case .inch:
            let result = number * 1609.34
            return result
        case .kilometer:
            let result = number * 1000
            return result
        case .meter:
            let result = number * 1
            return result
        case .decimeter:
            let result = number * 0.1
            return result
        case .centimeter:
            let result = number * 0.01
            return result
        case .millimeter:
            let result = number * 0.001
            return result
        case .nauticalMile:
            let result = number * 1852
            return result
        case .fathom:
            let result = number * 1.8288
            return result
        case .league:
            let result = number * 5556
            return result
        case .furlong:
            let result = number * 201.168
            return result
        case .rod:
            let result = number * 5.0292
            return result
        case .chain:
            let result = number * 20.1168
            return result
        case .none:
            #warning("This case returned zero, but the result is actually an unexpected error.")
            return 0 // The compiler demanded this case, but theoretically the above enum was exhaustive. i.e. This case should never come up.
        }
    }
    
    func to(_ number: Double) -> Double { // convert from meters into the user's desired output unit.
        switch toUnitType {
         case .mile:
            let result = number * 0.000621371
            return result
        case .yard:
            let result = number * 1.09361
            return result
        case .feet:
            let result = number * 3.28084
            return result
        case .inch:
            let result = number * 39.3701
            return result
        case .kilometer:
            let result = number * 0.001
            return result
        case .meter:
            let result = number * 1
            return result
        case .decimeter:
            let result = number * 10
            return result
        case .centimeter:
            let result = number * 100
            return result
        case .millimeter:
            let result = number * 1000
            return result
        case .nauticalMile:
            let result = number * 0.000539957
            return result
        case .fathom:
            let result = number * 0.546807
            return result
        case .league:
            let result = number * 0.000179986
            return result
        case .furlong:
            let result = number * 0.00497096
            return result
        case .rod:
            let result = number * 0.198839
            return result
        case .chain:
            let result = number * 0.0497097
            return result
        case .none:
            #warning("This case returned zero, but the result is actually an unexpected error.")
            return 0 // The compiler demanded this case, but theoretically the above enum was exhaustive. i.e. This case should never come up.
        }
    }
}

