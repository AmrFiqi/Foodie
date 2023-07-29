//
//  NetworkingService.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 28/07/2023.
//

import Foundation

struct NetworkingService {
    
    // Create a singleton of this struct
    static let shared = NetworkingService()
    private init() {}
    
    
    func myFirstRequest() {
        request(route: .temp, method: .get, type: String.self) { _ in }
    }
    
    private func request<T: Codable>(route: Route,
                                     method: Method,
                                     parameters: [String: Any]? = nil,
                                     type: T.Type,
                                     completion: (Result<T, Error>) -> Void) {
        
        guard let request = createRequest(route: route, method: method, paramteres: parameters) else {
            completion(.failure(AppError.unKnownError))
            return
        }
        
        URLSession.shared.dataTask(with: request) {
            data, response, error in
            var result: Result<Data, Error>?
            if let data = data {
                result = .success(data)
                let responseString = String(data: data, encoding: .utf8)  ?? "Couldn't convert data to a string"
                print("The response is: \(responseString)")
            } else if let error = error {
                result = .failure(error)
                print("The error is \(error.localizedDescription)")
            }
            DispatchQueue.main.async {
                // TODO Decode the result
            }
        }.resume()
    }
    
    /// This is a function to generate urlRequest
    /// - Parameters:
    ///   - route: path to the resource in the backend
    ///   - method: type of request to be made
    ///   - paramteres: whatever extra info needed to be passed to the backend
    /// - Returns: URLRequest
    private func createRequest(route: Route, method: Method, paramteres: [String: Any]? = nil) -> URLRequest? {
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
