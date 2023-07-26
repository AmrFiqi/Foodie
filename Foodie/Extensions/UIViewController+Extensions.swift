//
//  UIViewController+Extensions.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 26/07/2023.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        /// Returns the storyboard identifier for the view controller class
        return String(describing: self)
    }
    
    static func instanciate() -> Self {
        
        /// Instantiates a view controller using its storyboard identifier.
        /// - Returns: An instance of the view controller.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
