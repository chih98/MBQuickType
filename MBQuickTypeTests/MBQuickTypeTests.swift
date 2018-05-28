//
//  MBQuickTypeTests.swift
//  MBQuickTypeTests
//
//  Created by Marko Crnkovic on 5/27/18.
//  Copyright © 2018 Marko Crnkovic. All rights reserved.
//

import XCTest
import UIKit
@testable import MBQuickType


class MBQuickTypeTests: XCTestCase, UIViewController {
    
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    
    let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    
    override func setUp() {
        super.setUp()
    
        let app = XCUIApplication()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSetup() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
