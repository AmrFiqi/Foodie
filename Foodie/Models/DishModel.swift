//
//  DishModel.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 25/07/2023.
//

import Foundation

struct Dish: Decodable {
    let id,name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) Calories"
    }
}
