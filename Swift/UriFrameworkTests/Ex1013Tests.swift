//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

import XCTest
@testable import UriFramework


final class Ex1013Tests: XCTestCase {
    
    var inputs: [String]! = .init()
    
    
    /* Ciclo de Vida */
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        inputs = nil
        super.tearDown()
    }
    
    
    /* Aux */
    private func validate(expected: String) {
        // Prepare
        let provider = MockInputProvider(inputs: inputs)
        
        // Action
        ex1013(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "106 eh o maior"
        inputs = ["7 14 106"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "217 eh o maior"
        inputs = ["217 14 6"]
        
        // Action
        validate(expected: expected)
    }
}
