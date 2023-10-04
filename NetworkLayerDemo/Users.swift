//
//  Users.swift
//  NetworkLayerDemo
//
//  Created by Theo Ntogiakos on 04/10/2023.
//

import Foundation

struct Users: Codable, CustomStringConvertible {
    let data: [User]?
}

struct User: Codable, CustomStringConvertible {
    let id: String?
    let title: String?
    let firstName: String?
    let lastName: String?
    let email: String?
    let picture: String?
}
