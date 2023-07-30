//
//  OrderModel.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 27/07/2023.
//

import Foundation

struct Order: Decodable {
    let id, name: String?
    let dish: Dish?
}
