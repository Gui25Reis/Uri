//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

import XCTest
@testable import UriFramework


final class Ex1020Tests: XCTestCase {
    
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
        ex1020(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = """
        1 ano(s)
        1 mes(es)
        5 dia(s)
        """
        inputs = ["400"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = """
        2 ano(s)
        2 mes(es)
        10 dia(s)
        """
        inputs = ["800"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = """
        0 ano(s)
        1 mes(es)
        0 dia(s)
        """
        inputs = ["30"]
        
        // Action
        validate(expected: expected)
    }
}
