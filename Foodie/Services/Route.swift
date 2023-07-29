//
//  Route.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 29/07/2023.
//

import Foundation

enum Route {
    
    static let baseUrl = "https://yummie.glitch.me"
    
    case temp
    
    var description: String {
        switch self {
        case .temp: return "/temp"
        }
    }
}
