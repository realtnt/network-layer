//
//  EndPoints.swift
//  NetworkLayer
//
//  Created by Theo Ntogiakos on 04/10/2023.
//

import Foundation
import Combine

public protocol EndPoints {
    var baseURL: String { get }
    var path: String { get }
    var parameter: [URLQueryItem] { get }
    var headers: [Header] { get }
    var method: HTTPMethod { get }
    
    func getUrl() -> URL?
}

extension EndPoints {
    func getUrl() -> URL? {
        var component = URLComponents()
        component.scheme = "https"
        component.host = baseURL
        component.path = path
        component.queryItems = parameter
        return component.url
    }
}

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public enum Environment: String, CaseIterable {
    case development
    case staging
    case production
}

public struct Header {
    var value: String?
    var key: String?
}
