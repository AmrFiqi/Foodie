//
//  HomeViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 23/07/2023.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHomeViewController()
    }
    

    func setupHomeViewController() {
        title = "Foodie"
        let cartButton = UIBarButtonItem(image: UIImage(systemName: "cart.circle.fill"), style: .plain, target: self, action: #selector(cartButtonClicked))
        cartButton.tintColor = .red
        navigationItem.rightBarButtonItem = cartButton
    }
    
    @objc func cartButtonClicked() {
        
    }

}
