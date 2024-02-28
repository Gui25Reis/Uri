//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

import XCTest
@testable import UriFramework


final class Ex1010Tests: XCTestCase {
    
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
        ex1010(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "VALOR A PAGAR: R$ 15.50"
        inputs = ["12 1 5.30", "16 2 5.10"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "VALOR A PAGAR: R$ 51.40"
        inputs = ["13 2 15.30", "161 4 5.20"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "VALOR A PAGAR: R$ 30.20"
        inputs = ["1 1 15.10", "2 1 15.10"]
        
        // Action
        validate(expected: expected)
    }
}
