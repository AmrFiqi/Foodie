//
//  AppError.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 29/07/2023.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unKnownError
    case invalidURL
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
            
        case .errorDecoding:
            return "Response couldn't be decoded"
        case .unKnownError:
            return "Bro wtf did you do?"
        case .invalidURL:
            return "Ain't my fault man, give me a valid URL"
        case .serverError(let error):
            return error
        }
    }
}
