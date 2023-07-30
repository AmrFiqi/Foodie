//
//  UserDefaults+Extensions.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 30/07/2023.
//

import Foundation

extension UserDefaults {
    private enum UserDefaultsKets: String {
        case hasOnboarded
    }
    
    var hasOnboarded: Bool {
        get{
            bool(forKey: UserDefaultsKets.hasOnboarded.rawValue)
        }
        set {
            setValue(newValue, forKey: UserDefaultsKets.hasOnboarded.rawValue)
        }
    }
}
