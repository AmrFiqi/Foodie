//
//  DishDetailViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 26/07/2023.
//

import UIKit
import Kingfisher

class DishDetailViewController: UIViewController {
    
    // MARK: - Variables
    
    var dish: Dish!
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        populateView()
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formattedCalories
    }

    // MARK: - IBActions
    
    @IBAction func orderButtonClicked(_ sender: Any) {
    }
    
}
