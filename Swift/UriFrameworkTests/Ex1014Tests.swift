//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

import XCTest
@testable import UriFramework


final class Ex1014Tests: XCTestCase {
    
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
        ex1014(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "14.286 km/l"
        inputs = ["500", "35.0"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "18.119 km/l"
        inputs = ["2254", "124.4"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "9.802 km/l"
        inputs = ["4554", "464.6"]
        
        // Action
        validate(expected: expected)
    }
}
