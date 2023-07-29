//
//  NetworkingService.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 28/07/2023.
//

import Foundation

struct NetworkingService {
    
    /// This is a function to generate urlRequest
    /// - Parameters:
    ///   - route: path to the resource in the backend
    ///   - method: type of request to be made
    ///   - paramteres: whatever extra info needed to be passed to the backend
    /// - Returns: URLRequest
     func createRequest(route: Route, method: Method, paramteres: [String: Any]? = nil) -> URLRequest? {
        let urlString = Route.baseUrl + route.description
        guard let url = urlString.asUrl else {return nil}
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = method.rawValue
        
        if let params = paramteres {
            switch method {
            case .get:
                var urlComponent = URLComponents(string: urlString)
                urlComponent?.queryItems = params.map {
                    URLQueryItem(name: $0, value: "\($1)")
                }
                urlRequest.url = urlComponent?.url
            case .post, .delete, .patch:
                let bodyData = try? JSONSerialization.data(withJSONObject: params, options: [])
                urlRequest.httpBody = bodyData
            }
        }
        return urlRequest
    }
}
