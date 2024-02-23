//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24
//

import XCTest
@testable import UriFramework


final class Ex1009Tests: XCTestCase {
    
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
        ex1009(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "TOTAL = R$ 684.54"
        inputs = ["JOAO", "500.00", "1230.30"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "TOTAL = R$ 700.00"
        inputs = ["PEDRO", "700.00", "0.0"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "TOTAL = R$ 1884.58"
        inputs = ["MANGOJATA", "1700.00", "1230.50"]
        
        // Action
        validate(expected: expected)
    }
}
