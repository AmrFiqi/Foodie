//
//  ChefCollectionViewCell.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 25/07/2023.
//

import UIKit

class ChefCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variables
    
    static let identifier = "ChefCollectionViewCell"

    // MARK: - IBOulets
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    // MARK: - Class Methods
    
    
}
