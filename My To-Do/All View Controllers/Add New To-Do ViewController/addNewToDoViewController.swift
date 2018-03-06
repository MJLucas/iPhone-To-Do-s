//
//  addNewToDoViewController.swift
//  My To-Do
//
//  Created by Mark Lucas on 14/02/2018.
//  Copyright © 2018 Mark Lucas. All rights reserved.
//

import UIKit

class addNewToDoViewController: UIViewController {
    
    @IBOutlet weak var textField: CustomisableTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController!.navigationBar.barTintColor = UIColor.white
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont(name: "Helvetica Neue", size: 18)!]
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        if (textField.text != nil) && textField.text != "" {
            
            toDoList?.append(textField.text!)
            
            textField.text = ""
            
            textField.placeholder = "Add More To-Do's?"
            
        }
        
    }
    
}
