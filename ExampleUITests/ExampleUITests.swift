//
//  ExampleUITests.swift
//  ExampleUITests
//
//  Created by Marko Crnkovic on 9/26/17.
//  Copyright © 2017 Marko Crnkovic. All rights reserved.
//

import XCTest
@testable import MBQuickType

class ExampleUITests: XCTestCase {
        
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
    
    func testButtonInsertion() {
        
        
        
    }
    
    @objc func buttonAction(_ sender: Any) {
        
        print("Pressed")
        
    }
    
}
