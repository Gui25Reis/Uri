//
//  NumberFormatter.swift
//  UriExercicios
//
//  Created by Gui Reis on 28/02/24.
//

protocol NumberFormatter {
    
    func precision(of: Int) -> String
}

extension Double: NumberFormatter {
    
    func precision(of precision: Int) -> String {
        String(format: "%.\(precision)f", self)
    }
}


extension Float: NumberFormatter {
    
    func precision(of precision: Int) -> String {
        String(format: "%.\(precision)f", self)
    }
}
