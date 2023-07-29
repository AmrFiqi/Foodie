//
//  HomeViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 23/07/2023.
//

import UIKit
import ProgressHUD

class HomeViewController: UIViewController {
    
    // MARK: - Variables
    
    var categories: [DishCategory]  = []
    
    var popularDishes: [Dish] = [
    ]
    
    var chefDishs: [Dish] = [
    ]
    // MARK: - IBOutlets
    
    @IBOutlet weak var chefCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    // MARK: -  Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHomeViewController()
        setupCollectionView()
        registerCells()
        NetworkingService.shared.fetchAllCategories { [weak self] (result) in
            switch result {
            case .success(let allDishes):
                ProgressHUD.dismiss()
                self?.categories = allDishes.categories ?? []
                self?.popularDishes = allDishes.populars ?? []
                self?.chefDishs = allDishes.specials ?? []
                
                self?.categoryCollectionView.reloadData()
                self?.popularCollectionView.reloadData()
                self?.chefCollectionView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
                
            }
        }
    }
    
    
    func setupHomeViewController() {
        title = "Foodie"
//        let cartButton = UIBarButtonItem(image: UIImage(systemName: "cart.circle.fill"), style: .plain, target: self, action: #selector(cartButtonClicked))
//        cartButton.tintColor = .red
//        navigationItem.rightBarButtonItem = cartButton
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: PopularDishCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: PopularDishCollectionViewCell.identifier)
        chefCollectionView.register(UINib(nibName: ChefCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: ChefCollectionViewCell.identifier)
    }
        
    
    // MARK: - Actions
    
//    @objc func cartButtonClicked() {
//
//    }
    
    
}

