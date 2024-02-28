//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24
//

import XCTest
@testable import UriFramework


final class Ex1008Tests: XCTestCase {
    
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
        ex1008(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = "NUMBER = 25\nSALARY = U$ 550.00"
        inputs = ["25", "100", "5.50"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = "NUMBER = 1\nSALARY = U$ 4100.00"
        inputs = ["1", "200", "20.50"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = "NUMBER = 6\nSALARY = U$ 2254.75"
        inputs = ["6", "145", "15.55"]
        
        // Action
        validate(expected: expected)
    }
}
