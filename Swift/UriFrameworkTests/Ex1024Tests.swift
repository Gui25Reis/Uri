//
//  Gui Reis  -  gui.sreis25@gmail.com - 04/03/24
//

import XCTest
@testable import UriFramework


final class Ex1024Tests: XCTestCase {
    
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
        ex1024(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = """
        3# rvzgV
        1FECedc
        ks. \\n{frzx
        gi.r{hyz-xx
        """
        inputs = ["4", "Texto #3", "abcABC1", "vxpdylY .ph", "vv.xwfxo.fd"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_udebug_monir004() {
        // Prepare
        let expected = """
        7degk8p8nnL
        FD]gdiDWjMNfj')6fjP
        MgrotZTYcTH210
        $5367*(Ldp^+=>&!
        djdeDhGDTUV2#$#NhIi{vuf{WWqmN
        i$$#@KMjkm"jkD54w{iW[ljll{
        KMNjkm77gIJL442utJI
        \\L|w\\J{wML
        nmgyKjkmkvhgDOjqDijMLjjl%ml]iJLZ|!D
        k>QJ\\KM57#yKM86]%{hMW[Hmpl[kw
        """
        inputs = ["10",
            "Jll9n9hdba7",
            "Nhd7*(hdLKgTAfadZAC",
            "123FRaWQWqlodJ",
            "\"'?>,_nbI(*7635$",
            "LkoUUydstygGfL$$#2SRQADeAbaga",
            "yjjhjYUgyu56Bhg\"jhgJH@#$$f",
            "GHrs355JHGd77jhgKJH",
            "JKuyHYtyIY",
            "B\"}[JHg^jk&jhhJKhgAngLAdeshjhgHvdjk",
            "uiYjnkFYUKfy&^78JHv#75JHYGN>h"
        ]
        
        // Action
        validate(expected: expected)
    }
}

/*
 
("Optional("3# rvzgV \n 1FECedc \n ks. \n{frzx \ngi.r{hyz-xx")")
("Optional("3# rvzgV \n 1FECedc \n ks. \\n{frzx \ngi.r{hyz-xx")")
 
*/
