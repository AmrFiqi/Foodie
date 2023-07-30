//
//  DishDetailViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 26/07/2023.
//

import UIKit
import Kingfisher
import ProgressHUD

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
    
    private func placeOrder(name: String) {
        ProgressHUD.show("Placing Order...")
        NetworkingService.shared.placeOrder(dishId: dish.id ?? "", name: name) { result in
            switch result {
            case .success(_):
                ProgressHUD.showSuccess("Order has been recieved 👨🏼‍🍳")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }

    // MARK: - IBActions
    
    @IBAction func orderButtonClicked(_ sender: Any) {
        guard let name = nameTextField.text?.trimmingCharacters(in: .whitespaces), !name.isEmpty
        else {
            ProgressHUD.showError("Please enter your name")
            return
        }
        placeOrder(name: name)
       
    }
    
}
