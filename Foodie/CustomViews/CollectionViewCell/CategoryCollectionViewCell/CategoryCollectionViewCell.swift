//
//  CategoryCollectionViewCell.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 23/07/2023.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variables
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    // MARK: - IBOutlets

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    // MARK: - Class Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    func setup(category: DishCategory) {
        categoryLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }
    
    
}
