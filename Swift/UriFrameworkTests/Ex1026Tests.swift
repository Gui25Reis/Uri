//
//  Gui Reis  -  gui.sreis25@gmail.com - 09/03/24
//

import XCTest
@testable import UriFramework


final class Ex1026Tests: XCTestCase {
    
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
        ex1026(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = """
        2
        15
        """
        inputs = ["4 6", "6 9"]
        
        // Action
        validate(expected: expected)
    }
}
