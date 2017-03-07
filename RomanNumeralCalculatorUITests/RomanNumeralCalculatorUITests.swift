//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by dev on 3/6/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOnePlusFive() {
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let vButton = app.buttons["V"]
        let calculationLabel = app.staticTexts["calculated_value"]
    
        //tap "I"
        iButton.tap()
        XCTAssertEqual(calculationLabel.label, "I")

        //tap "+"
        app.buttons["+"].tap()

        //tap "V"
        vButton.tap()
        XCTAssertEqual(calculationLabel.label, "VI")
        
        

    }
    
}
