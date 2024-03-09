//
//  NumberFormatter.swift
//  UriExercicios
//
//  Created by Gui Reis on 28/02/24.
//

import Foundation


protocol NumberFormatter {
    
    var isInt: Bool { get }
    
    func precision(of: Int, type: NSDecimalNumber.RoundingMode) -> String
}


// MARK: - Double + NumberFormatter
extension Double: NumberFormatter {
    
    var isInt: Bool {
        let number = "\(self)"
        let numberParts = number.split(by: .punctuationCharacters)
        
        let decimal = numberParts[1]
        
        let value = decimal.firstIndex(where: { $0 != "0" } )
        
        let isInt = value == nil
        return isInt
    }
    
    func precision(of precision: Int, type: NSDecimalNumber.RoundingMode = .up) -> String {
        let format = "%.\(precision)f"
        let formatted = String(format: format, self)
        
        if isInt { return formatted }
        
        let decimal = NSDecimalNumber(value: self)

        let handler = NSDecimalNumberHandler(
            roundingMode: type,
            scale: Int16(precision),
            raiseOnExactness: true,
            raiseOnOverflow: false,
            raiseOnUnderflow: true,
            raiseOnDivideByZero: true
        )

        let rounded = decimal.rounding(accordingToBehavior: handler)
        return "\(rounded)"
    }
}


// MARK: - Float + NumberFormatter
extension Float: NumberFormatter {
    
    var isInt: Bool {
        let number = "\(self)"
        let numberParts = number.split(by: .punctuationCharacters)
        
        let decimal = numberParts[1]
        
        let value = decimal.firstIndex(where: { $0 != "0" } )
        
        let isInt = value == nil
        return isInt
    }
    
    func precision(of precision: Int, type: NSDecimalNumber.RoundingMode = .up) -> String {
        let format = "%.\(precision)f"
        let formatted = String(format: format, self)
        
        if isInt { return formatted }
        
        let decimal = NSDecimalNumber(value: self)

        let handler = NSDecimalNumberHandler(
            roundingMode: type,
            scale: Int16(precision),
            raiseOnExactness: true,
            raiseOnOverflow: false,
            raiseOnUnderflow: true,
            raiseOnDivideByZero: true
        )

        let rounded = decimal.rounding(accordingToBehavior: handler)
        return "\(rounded)"
    }
}




// Arredondamento especial para casos como 9.00
/*
if formatted.hasSuffix(".0") {
    switch type {
    case .up:
        return String(format: format, self + powf(0.1, Float(precision)))
    default:
        break
    }
}
 */
