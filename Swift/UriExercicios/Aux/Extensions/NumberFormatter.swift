//
//  NumberFormatter.swift
//  UriExercicios
//
//  Created by Gui Reis on 28/02/24.
//

protocol NumberFormatter {
    
    func precision(of: Int) -> String
}


// MARK: - Double + NumberFormatter
extension Double: NumberFormatter {
    
    func precision(of precision: Int) -> String {
        String(format: "%.\(precision)f", self)
    }
}


// MARK: - Float + NumberFormatter
extension Float: NumberFormatter {
    
    func precision(of precision: Int) -> String {
        String(format: "%.\(precision)f", self)
    }
}
