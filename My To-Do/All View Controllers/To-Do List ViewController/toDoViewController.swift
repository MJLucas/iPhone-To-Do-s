//
//  ViewController.swift
//  My To-Do
//
//  Created by Mark Lucas on 14/02/2018.
//  Copyright © 2018 Mark Lucas. All rights reserved.
//

import UIKit

class toDoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController!.navigationBar.barTintColor = UIColor.white
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont(name: "Helvetica Neue", size: 18)!]
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let toDo = toDoList {
            
            return toDo.count
            
        } else {
            
            return 0
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        if let toDo = toDoList {
            
            cell.textLabel?.text = toDo[indexPath.row]
            
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            toDoList?.remove(at: indexPath.row)
            tableView.reloadData()
            
        }
        
    }
    
    

}

