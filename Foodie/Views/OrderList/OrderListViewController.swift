//
//  OrderListViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 27/07/2023.
//

import UIKit
import ProgressHUD

class OrderListViewController: UIViewController {
    
    // MARK: - Variables
    
    var orders: [Order] = []
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var orderListTableView: UITableView!
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Orders"
        registerCells()
        fetchOrders()
    }
    
    private func registerCells() {
        orderListTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
    private func fetchOrders() {
        ProgressHUD.show()
        NetworkingService.shared.fetchOrders { [weak self] result in
            switch result {
            case .success(let orders):
                ProgressHUD.dismiss()
                self?.orders = orders
                self?.orderListTableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }
    
}

// MARK: - Extensions

extension OrderListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instanciate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
