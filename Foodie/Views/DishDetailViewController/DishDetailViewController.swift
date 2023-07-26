//
//  DishDetailViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 26/07/2023.
//

import UIKit

class DishDetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - IBActions
    
    @IBAction func orderButtonClicked(_ sender: Any) {
    }
    
}
