//
//  AllDishes.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 29/07/2023.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
