//
//  MenuItemTests.swift
//  MenuItemTests
//
//  Created by Juan Romero.
//

import XCTest
@testable import LittleLemon

final class MenuItemTests: XCTestCase {

    func test_menuItemTitle_init_menuItemEqualsinitializedValue() {
        let item = MenuItem()
        XCTAssert(item.title == "")
    }
    
    func test_menuItemIngredients_init_menuItemEqualsinitializedValue() {
        let item = MenuItem(ingredients: [.tomatoSauce])
        XCTAssert(item.title == "")
    }


}
