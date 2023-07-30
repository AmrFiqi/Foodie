//
//  Route.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 29/07/2023.
//

import Foundation

enum Route {
    
    static let baseUrl = "https://yummie.glitch.me"
    
    case fetchAllCategories
    case placeOrder(String)
    case fetchDishCategory(String)
    
    
    var description: String {
        switch self {
        case .fetchAllCategories:
            return "/dish-categories"
        case .placeOrder(let dishId):
            return "/orders/\(dishId)"
        case .fetchDishCategory(let categoryID):
            return "/dishes/\(categoryID)"
        }
    }
}
