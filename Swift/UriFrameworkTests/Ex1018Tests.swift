//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

import XCTest
@testable import UriFramework


final class Ex1018Tests: XCTestCase {
    
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
        ex1018(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = """
        576
        5 nota(s) de R$ 100,00
        1 nota(s) de R$ 50,00
        1 nota(s) de R$ 20,00
        0 nota(s) de R$ 10,00
        1 nota(s) de R$ 5,00
        0 nota(s) de R$ 2,00
        1 nota(s) de R$ 1,00
        """
        inputs = ["576"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = """
        11257
        112 nota(s) de R$ 100,00
        1 nota(s) de R$ 50,00
        0 nota(s) de R$ 20,00
        0 nota(s) de R$ 10,00
        1 nota(s) de R$ 5,00
        1 nota(s) de R$ 2,00
        0 nota(s) de R$ 1,00
        """
        inputs = ["11257"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = """
        503
        5 nota(s) de R$ 100,00
        0 nota(s) de R$ 50,00
        0 nota(s) de R$ 20,00
        0 nota(s) de R$ 10,00
        0 nota(s) de R$ 5,00
        1 nota(s) de R$ 2,00
        1 nota(s) de R$ 1,00
        """
        inputs = ["503"]
        
        // Action
        validate(expected: expected)
    }
}
