//
//  Endpoint+URL.swift
//  NetworkLayer
//
//  Created by Theo Ntogiakos on 04/10/2023.
//

import Foundation

extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "dummyapi.io"
        components.path = "/data/api" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var headers: [String: Any] {
        return [ "app-id": "APP-ID" ]
    }
}
