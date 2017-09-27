//
//  ViewController.swift
//  Example
//
//  Created by Marko Crnkovic on 9/26/17.
//  Copyright © 2017 Marko Crnkovic. All rights reserved.
//

import UIKit
import MBQuickType

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quickType = MBQuickType(withController: self, inputView: self.textField)
        
        quickType.addButton(withTitle: "Option1", target: #selector(self.buttonAction(_:)))
        quickType.addButton(withTitle: "Option2", target: #selector(self.buttonAction(_:)))
        quickType.addButton(withTitle: "Option3", target: #selector(self.buttonAction(_:)))
        quickType.addButton(withTitle: "Option4", target: #selector(self.buttonAction(_:)))
        quickType.addButton(withTitle: "Option5", target: #selector(self.buttonAction(_:)))
        quickType.addButton(withTitle: "Option6", target: #selector(self.buttonAction(_:)))
        
        textField.inputAccessoryView = quickType.renderedView()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func buttonAction(_ sender: Any) {
        
        if let button = sender as? UIButton {
            
            self.textField.text?.append(button.titleLabel!.text!)
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

