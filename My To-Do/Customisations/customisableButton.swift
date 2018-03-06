//
//  customisableButton.swift
//  My To-Do
//
//  Created by Mark Lucas on 14/02/2018.
//  Copyright © 2018 Mark Lucas. All rights reserved.
//

import UIKit

@IBDesignable class CustomisableButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet {
            
            layer.cornerRadius = cornerRadius
            
        }
        
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        
        didSet {
            
            layer.borderWidth = borderWidth
            
        }
        
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
        
    }
    
}
