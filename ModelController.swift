//
//  ModelController.swift
//  demoUIPageViewController
//
//  Created by AgribankCard on 2/13/17.
//  Copyright © 2017 cuongpc. All rights reserved.
//

import UIKit
class ModelController: NSObject {
    
    var pageData: [String] = [NamePageViewController.page1.rawValue,NamePageViewController.page2.rawValue]
    
    
    override init() {
        super.init()
        // Create the data model.
        //let dateFormatter = DateFormatter()
        //pageData = dateFormatter.monthSymbols
    }
    
    func viewControllerAtIndex(_ index: Int, storyboard: UIStoryboard) -> DataViewController? {
        // Return the data view controller for the given index.
        if (self.pageData.count == 0) || (index >= self.pageData.count) {
            return nil
        }
        
        // Create a new view controller and pass suitable data.
        let identifierController : String
        if (index == 0) {
            identifierController = NamePageViewController.page1.rawValue
        }
        else {
            identifierController = NamePageViewController.page2.rawValue
        }
        let dataViewController = storyboard.instantiateViewController(withIdentifier: identifierController) as! DataViewController
        dataViewController.dataObject = self.pageData[index]
        return dataViewController
    }
    
    func indexOfViewController(_ viewController: DataViewController) -> Int {
        // Return the index of the given data view controller.
        // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
        return pageData.index(of: viewController.dataObject) ?? NSNotFound
    }
    
    // MARK: - Page View Controller Data Source
    
       
}

