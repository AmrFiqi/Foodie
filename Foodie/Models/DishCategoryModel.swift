//
//  DishCategoryModel.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 23/07/2023.
//

import Foundation

struct DishCategory: Decodable {
    let id, name, image: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
