//
//  ListDishesViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 27/07/2023.
//

import UIKit
import ProgressHUD

class ListDishesViewController: UIViewController {
    
    // MARK: - Variables
    var category: DishCategory!
    var dishes: [Dish] = []
    
    // MARK: - IBOutlets

    @IBOutlet weak var dishListTableView: UITableView!
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCells()
        showDishList()
    }
    
    private func registerCells() {
        dishListTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
    private func showDishList() {
        ProgressHUD.show()
        NetworkingService.shared.fetchCategoryDishes(categoryId: category.id) { [weak self] result in
            switch result {
            case .success(let dishes):
                ProgressHUD.dismiss()
                self?.dishes = dishes
                self?.dishListTableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }

}

// MARK: - Extensions

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instanciate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
