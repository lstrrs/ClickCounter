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
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        // Button
        let incButton = UIButton()
        incButton.frame = CGRect.init(x: 100, y: 250, width: 100, height: 60)
        incButton.setTitle("Increment", for: .normal)
        incButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(incButton)
        
        incButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)

        // Button
        let decButton = UIButton()
        decButton.frame = CGRect.init(x: 220, y: 250, width: 100, height: 60)
        decButton.setTitle("Decrement", for: .normal)
        decButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(decButton)
        
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)

        // Button Color
        let backgroundButton = UIButton()
        backgroundButton.frame = CGRect.init(x: 100, y: 320, width: 200, height: 60)
        backgroundButton.setTitle("Change Background", for: .normal)
        backgroundButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(backgroundButton)
        
        backgroundButton.addTarget(self, action: #selector(ViewController.changeBackgroundColor), for: UIControlEvents.touchUpInside)

    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
    }
    
    func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.cyan
    }
}

