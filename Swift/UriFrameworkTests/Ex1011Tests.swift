//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

import XCTest
@testable import UriFramework


final class Ex1011Tests: XCTestCase {
    
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
        ex1011(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "VOLUME = 113.097"
        inputs = ["3"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "VOLUME = 14137.155"
        inputs = ["15"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "VOLUME = 14797486501.627"
        inputs = ["1523"]
        
        // Action
        validate(expected: expected)
    }
}
