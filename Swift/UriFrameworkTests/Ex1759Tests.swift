//
//  Gui Reis  -  gui.sreis25@gmail.com - 04/03/24
//

import XCTest
@testable import UriFramework


final class Ex1759Tests: XCTestCase {
    
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
        ex1759(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "Ho Ho Ho Ho Ho!"
        inputs = ["5"]
        
        // Action
        validate(expected: expected)
    }
}
