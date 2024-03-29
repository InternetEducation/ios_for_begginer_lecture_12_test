//
//  TinkoffCalculatorUITests.swift
//  TinkoffCalculatorUITests
//
//  Created by r.r.amirova on 16.02.2022.
//

import XCTest

class TinkoffCalculatorUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func test_lecture12_calculations() {
        let app = XCUIApplication()
        app.launch()

        app.buttons["2"].tap()
        app.buttons["7"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()

        app.buttons["historyButton"].tap()

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let dateString = dateFormatter.string(from: Date())

        XCTAssertTrue(app.tables.firstMatch.otherElements.containing(.staticText, identifier: dateString).firstMatch.exists)
    }
}
