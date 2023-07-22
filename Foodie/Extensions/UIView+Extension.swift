//
//  UIView+Extension.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 22/07/2023.
//

import UIKit

extension UIView {
   @IBInspectable var cornerRadius: CGFloat {
       get{ return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

