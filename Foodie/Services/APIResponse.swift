//
//  APIResponse.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 29/07/2023.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable{
    let status: Int
    let message: String
    let data: T?
    let error: String?
}
