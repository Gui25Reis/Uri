//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24.
//

import XCTest
@testable import UriFramework


final class Ex1007Tests: XCTestCase {
    
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
        ex1007(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "DIFERENCA = -26"
        inputs = ["5", "6", "7", "8"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "DIFERENCA = -56"
        inputs = ["0", "0", "7", "8"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "DIFERENCA = 86"
        inputs = ["5", "6", "-7", "8"]
        
        // Action
        validate(expected: expected)
    }
}
