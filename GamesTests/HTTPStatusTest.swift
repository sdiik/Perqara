//
//  HTTPStatusTest.swift
//  GamesTests
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation
@testable import Games
import XCTest

class HTTPStatusTest: XCTestCase {
    
    func testHTTPStatusIsOK() throws {
        let code = 250
        XCTAssertTrue(code.isOk)
    }
    
    func testRemoveHTMLComponent() throws {
        let description = "<br><p>saosin is my favorite band</p>"
        let cleanDescription = description.htmlStripped
        
        XCTAssertEqual(cleanDescription, "saosin is my favorite band")
    }
    
}

