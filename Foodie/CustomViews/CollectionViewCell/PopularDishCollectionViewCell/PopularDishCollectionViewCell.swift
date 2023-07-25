//
//  PopularDishCollectionViewCell.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 25/07/2023.
//

import UIKit
import Kingfisher

class PopularDishCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variables
    
    static let identifier = "PopularDishCollectionViewCell"
    
    // MARK: - IBoutlets

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Class methods
    
    func setup(dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
    }
}
