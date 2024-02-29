//
//  Gui Reis  -  gui.sreis25@gmail.com - 29/02/24
//

import XCTest
@testable import UriFramework


final class Ex1003Tests: XCTestCase {
    
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
        ex1003(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "SOMA = 40"
        inputs = ["30", "10"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "SOMA = -20"
        inputs = ["-30", "10"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "SOMA = 0"
        inputs = ["0", "0"]
        
        // Action
        validate(expected: expected)
    }
}
