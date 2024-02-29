//
//  Gui Reis  -  gui.sreis25@gmail.com - 29/02/24
//

import XCTest
@testable import UriFramework


final class Ex1005Tests: XCTestCase {
    
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
        ex1005(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "MEDIA = 6.43182"
        inputs = ["5.0", "7.1"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "MEDIA = 4.84091"
        inputs = ["0.0", "7.1"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "MEDIA = 10.00000"
        inputs = ["10.0", "10.0"]
        
        // Action
        validate(expected: expected)
    }
}
