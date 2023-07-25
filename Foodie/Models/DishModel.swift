//
//  DishModel.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 25/07/2023.
//

import Foundation

struct Dish {
    let id,name, description, image: String?
    let calories: Double?
    
    var formattedCalories: String {
        return String(format: "%.02f", calories ?? 0)
    }
}
