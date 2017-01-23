//
//  ViewController.swift
//  ClickCounter
//
//  Created by Torres, Luis on 1/21/17.
//  Copyright © 2017 Torres, Luis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet weak var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.cyan
    }
}

