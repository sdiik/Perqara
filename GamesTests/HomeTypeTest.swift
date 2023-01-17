//
//  HomeTypeTest.swift
//  GamesTests
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation
@testable import Games
import XCTest

class HomeTypeTest: XCTestCase {
    
    func testValidationNavigationTitle() throws {
        let home = tabBarType.home
        XCTAssertEqual(home.navigationTitle, "Game For You")
    }
    
    func testValidationBarTitle() throws {
        let home = tabBarType.home
        XCTAssertEqual(home.tabTitle, "Home")
    }
}
