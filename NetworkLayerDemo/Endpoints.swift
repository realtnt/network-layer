//
//  Endpoints.swift
//  NetworkLayer
//
//  Created by Theo Ntogiakos on 04/10/2023.
//

import Foundation

extension Endpoint {
    static var users: Self {
        return Endpoint(path: "/user")
    }
    
    static func users(count: Int) -> Self {
        let queryItems = [ URLQueryItem(name: "limit", value: "\(count)") ]
        return Endpoint( path: "/user", queryItems: queryItems )
    }
    
    static func user(id: String) -> Self {
        return Endpoint(path: "/user/\(id)")
    }
}
