//
//  MBQuickType.swift
//  MBQuickType
//
//  Created by Marko Crnkovic on 9/26/17.
//  Copyright © 2017 Marko Crnkovic. All rights reserved.
//

import UIKit
 
public class MBQuickType: UIView {
    
    // Private
    fileprivate var view = UIView()
    fileprivate var controller = UIViewController()
    private var buttonsBGColor: UIColor = UIColor(red:0.00, green:0.67, blue:1.00, alpha:1.0)
    fileprivate var nextX = 10

    // Public
    /// The array of buttons that will be displayed
    public var buttons: [UIButton] = []
    
    /// The background color of the bar
    public var barBGColor: UIColor = UIColor.groupTableViewBackground
    
    public var showScrollIndicator = false
    
    /// The background color of each button
    public var buttonBGColor: UIColor? {
        
        get {
            
            return self.buttonsBGColor
            
        }
        
        set {
            
            for button in buttons {
                
                button.backgroundColor = self.buttonsBGColor
                
            }
            
        }
        
    }
    
    /// Default Init
    @discardableResult public convenience init(withController: UIViewController, inputView withView: UIView) {
        self.init()
        
        if withView is UITextField == false && withView is UITextView == false {
            
            fatalError("MBQuickType must be initialized with a UITextField or UITextView.")
            
        } else {
            
            self.view = withView
            
        }
        
    }
    
    /// Append a button to the end.
    public func addButton(withTitle: String, target: Selector) {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 30))
        
        button.backgroundColor = self.buttonsBGColor
        
        button.setTitle(withTitle, for: .normal)
        
        button.sizeToFit()
        
        button.bounds.size.width += 10
        
        button.layer.cornerRadius = 5
        
        button.clipsToBounds = true
        
        button.addTarget(self.controller, action: target, for: .touchUpInside)
        
        self.buttons.append(button)
        
    }
    
    /// Returns the rendered view to set the inputAccessoryView to
    public func renderedView() -> UIView {
        
        
        let accessoryView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 50))

        accessoryView.backgroundColor = self.barBGColor
        accessoryView.showsVerticalScrollIndicator = false
        accessoryView.showsHorizontalScrollIndicator = self.showScrollIndicator
        
       
        DispatchQueue.main.async {
            
            for i in self.buttons {
                
                i.frame = CGRect(x: self.nextX, y: 0, width: Int(i.bounds.size.width), height: 30)
                
                self.nextX += Int (i.bounds.width + 10)
                
                i.center.y = accessoryView.center.y
                
                accessoryView.contentSize.width += i.bounds.width + 10
                
                accessoryView.addSubview(i)
                
            }
        
        }
            
        let borderView = UIView(frame: CGRect(x: -Int((INT_MAX / 2)), y: 0, width: Int(accessoryView.contentSize.width + CGFloat(INT_MAX)), height: 1))
        borderView.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        accessoryView.addSubview(borderView)
        
        return accessoryView
        
    }
    
}

