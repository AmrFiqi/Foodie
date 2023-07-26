//
//  ListDishesViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 27/07/2023.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    // MARK: - Variables
    var category: DishCategory!
    var dishes: [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.his is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted, man I can eat that forever and ever and ever honestly. I just love it and I always want more.", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 234),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 775),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 543),
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://images.unsplash.com/photo-1539735257177-0d3949225f96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80", calories: 432),
    ]
    
    // MARK: - IBOutlets

    @IBOutlet weak var dishListTableView: UITableView!
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCells()
    }
    
    private func registerCells() {
        dishListTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
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
