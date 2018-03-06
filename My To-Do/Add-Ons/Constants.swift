//
//  Constants.swift
//  My To-Do
//
//  Created by Mark Lucas on 14/02/2018.
//  Copyright © 2018 Mark Lucas. All rights reserved.
//

import Foundation

var toDoList:[String]?

func saveData(toDoList:[String]) {
    
    UserDefaults.standard.set(toDoList, forKey: "toDoList")
    
}

func fetchData() -> [String]? {
    
    if let toDo = UserDefaults.standard.array(forKey: "toDoList") as? [String] {
        
        return toDo
        
    } else {
        
        return nil
        
    }
    
}
