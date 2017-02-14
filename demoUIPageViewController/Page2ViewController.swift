//
//  Page2ViewController.swift
//  demoUIPageViewController
//
//  Created by AgribankCard on 2/13/17.
//  Copyright © 2017 cuongpc. All rights reserved.
//

import UIKit
class Page2ViewController : DataViewController {
    
    
    
    @IBOutlet weak var dataLabel: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
       
    }
}
