//
//  CardView.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 24/07/2023.
//

import UIKit

class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initSetup()
    }
    
    private func initSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 10
        // Make all card views have corner radius of 10
        cornerRadius = 10
    }
}
