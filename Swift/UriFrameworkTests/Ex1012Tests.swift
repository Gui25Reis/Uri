//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

import XCTest
@testable import UriFramework


final class Ex1012Tests: XCTestCase {
    
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
        ex1012(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "TRIANGULO: 7.800\nCIRCULO: 84.949\nTRAPEZIO: 18.200\nQUADRADO: 16.000\nRETANGULO: 12.000"
        inputs = ["3.0 4.0 5.2"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "TRIANGULO: 96.520\nCIRCULO: 725.833\nTRAPEZIO: 175.560\nQUADRADO: 108.160\nRETANGULO: 132.080"
        inputs = ["12.7 10.4 15.2"]
        
        // Action
        validate(expected: expected)
    }
}
