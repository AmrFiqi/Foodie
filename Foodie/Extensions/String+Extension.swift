//
//  String+Extension.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 24/07/2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
