//
//  Strings+Types.swift
//  UriExercicios
//
//  Created by Gui Reis on 28/02/24.
//

import Foundation


extension String {
    
    var double: Double { Double(self)! }
    
    var float: Float { Float(self)! }
    
    var int: Int { Int(self)! }
    
    
    func split(by separator: CharacterSet = .whitespaces) -> [String] {
        components(separatedBy: separator)
    }
}
