//
//  Network.swift
//  CustomKeyboard
//
//  Created by yc on 2022/07/11.
//

import Foundation

enum NetworkError: Error {
    case unknown
}

struct Network {
    
    private let path: String
    private let parameters: [String: String]
    
    func get(completion: @escaping (Result<Void, NetworkError>) -> Void) {
        var urlComponents = URLComponents(string: path)
        urlComponents?.setQueryItems(with: parameters)
        
        guard let url = urlComponents?.url else {
            completion(.failure(.unknown))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { return }
        }
        
    }
}

extension URLComponents {
    mutating func setQueryItems(with parameters: [String: String]) {
        self.queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
    }
}
