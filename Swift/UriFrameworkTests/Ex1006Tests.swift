//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24.
//

import XCTest
@testable import UriFramework


final class Ex1006Tests: XCTestCase {
    
    var inputs: [String]! = .init()
    
    
    /* Ciclo de Vida */
    override func tearDown() {
        inputs = nil
        super.tearDown()
    }
    
    
    /* Aux */
    private func validate(expected: String) {
        // Prepare
        let provider = MockInputProvider(inputs: inputs)
        
        // Action
        ex1006(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_1006_01() {
        // Prepare
        let expected = "MEDIA = 6.3"
        inputs = ["5.0", "6.0", "7.0"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_1006_02() {
        // Prepare
        let expected = "MEDIA = 9.0"
        inputs = ["5.0", "10.0", "10.0"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_1006_03() {
        // Prepare
        let expected = "MEDIA = 7.5"
        inputs = ["10.0", "10.0", "5.0"]
        
        // Action
        validate(expected: expected)
    }
}
