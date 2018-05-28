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


class MBQuickTypeTests: XCTestCase {
    
    let vc = UIViewController()
    
    let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    
    var mbQuickType: MBQuickType?
    
    override func setUp() {
        super.setUp()
        
        vc.view.addSubview(textField)
        
        XCTAssertTrue(vc.view.subviews.count > 0)
        
        
        self.mbQuickType = MBQuickType(withController: vc, inputView: self.textField)
        
        XCTAssertTrue(self.mbQuickType != nil)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCheckCount() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        self.measure {
            
            self.mbQuickType!.addButton(withTitle: "Button 1", target: #selector(self.button(_:)))
            self.mbQuickType!.addButton(withTitle: "Button 2", target: #selector(self.button(_:)))
        }
        
        XCTAssertTrue(self.mbQuickType!.buttons.count > 0, "Buttons do not equal 2")
        
    }
    
    func testBarBG() {
        
        self.mbQuickType!.barBGColor = UIColor.blue
        
        XCTAssertTrue(self.mbQuickType!.barBGColor == UIColor.blue)
        
    }
    
    @objc func button(_ sender: Any) {
        
        
        
    }
    
}
