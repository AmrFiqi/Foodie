//
//  HomeViewController+Extension.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 25/07/2023.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return popularDishes.count
        case chefCollectionView:
            return chefDishs.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
            
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularDishCollectionViewCell.identifier, for: indexPath) as! PopularDishCollectionViewCell
            cell.setup(dish: popularDishes[indexPath.row])
            return cell
        case chefCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChefCollectionViewCell.identifier, for: indexPath) as! ChefCollectionViewCell
            cell.setup(dish: chefDishs[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == categoryCollectionView {
            let controller = ListDishesViewController.instanciate()
            controller.category = categories[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        } else {
            /// Create an instance of DishDetailViewController from the storyboard
            let controller = DishDetailViewController.instanciate()
            
            /// Determine the selected dish based on the collection view and set the dish property of the DishDetailViewController
            if collectionView == popularCollectionView {
                controller.dish = popularDishes[indexPath.row]
            } else if collectionView == chefCollectionView {
                controller.dish = chefDishs[indexPath.row]
            }
            
            /// Push the DishDetailViewController onto the navigation stack to display the details of the selected dish
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func setupCollectionView() {
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        chefCollectionView.delegate = self
        chefCollectionView.dataSource = self
    }
    

}

