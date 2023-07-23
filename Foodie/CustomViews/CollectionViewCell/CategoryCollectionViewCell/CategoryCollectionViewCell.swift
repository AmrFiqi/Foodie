//
//  CategoryCollectionViewCell.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 23/07/2023.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    // MARK: - Class Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    func setup(category: DishCategory) {
        
    }
    
    
}
