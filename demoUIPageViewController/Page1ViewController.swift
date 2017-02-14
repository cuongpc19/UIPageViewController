//
//  Page1ViewController.swift
//  demoUIPageViewController
//
//  Created by AgribankCard on 2/13/17.
//  Copyright © 2017 cuongpc. All rights reserved.
//

import UIKit
class Page1ViewController : DataViewController {
    
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBOutlet weak var viewChild: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
        self.viewChild.backgroundColor = UIColor.brown
    }
}
