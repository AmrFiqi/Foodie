//
//  DishListTableViewCell.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 26/07/2023.
//

import UIKit
import Kingfisher

class DishListTableViewCell: UITableViewCell {
    
    // MARK: - Variable
    
    static let identifier = String(describing: DishListTableViewCell.self)

    // MARK: - IBOutlets
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Class Methods
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
    }
    
    func setup(order: Order) {
        dishImageView.kf.setImage(with: order.dish?.image?.asUrl)
        titleLabel.text = order.dish?.name
        descriptionLabel.text = order.name
    }
}
