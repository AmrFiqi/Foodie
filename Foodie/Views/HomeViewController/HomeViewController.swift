//
//  HomeViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 23/07/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Variables
    
    var categories: [DishCategory]  = [
        .init(id: "id1", name: "Africa Dish 1", image: "https://media.gettyimages.com/id/142836999/photo/overhead-of-turkey-meal-on-plate.jpg?s=612x612&w=gi&k=20&c=3NTcPOexfQUBmpPm4wn3LjNKKOvns8VOhyBUbPrmmnc="),
        .init(id: "id1", name: "Africa Dish 2", image: "https://media.gettyimages.com/id/142836999/photo/overhead-of-turkey-meal-on-plate.jpg?s=612x612&w=gi&k=20&c=3NTcPOexfQUBmpPm4wn3LjNKKOvns8VOhyBUbPrmmnc="),
        .init(id: "id1", name: "Africa Dish 3", image: "https://media.gettyimages.com/id/142836999/photo/overhead-of-turkey-meal-on-plate.jpg?s=612x612&w=gi&k=20&c=3NTcPOexfQUBmpPm4wn3LjNKKOvns8VOhyBUbPrmmnc="),
        .init(id: "id1", name: "Africa Dish 4", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80"),
        .init(id: "id1", name: "Africa Dish 5", image: "https://media.gettyimages.com/id/142836999/photo/overhead-of-turkey-meal-on-plate.jpg?s=612x612&w=gi&k=20&c=3NTcPOexfQUBmpPm4wn3LjNKKOvns8VOhyBUbPrmmnc="),
    ]
    
    var popularDishes: [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
    ]
    
    var chefDishs: [Dish] = [
        .init(id: "id1", name: "Garri", description: "Yummi!", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
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

