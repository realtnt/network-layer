//
//  LogicController.swift
//  NetworkLayer
//
//  Created by Theo Ntogiakos on 04/10/2023.
//

import Foundation
import Combine

protocol UsersLogicControllerProtocol: AnyObject {
    var networkController: NetworkControllerProtocol { get }
    
    func getUsers() -> AnyPublisher<Users, Error>
    func getUsers(count: Int) -> AnyPublisher<Users, Error>
    func getUser(id: String) -> AnyPublisher<User, Error>
}

final class UsersLogicController: UsersLogicControllerProtocol {
    
    let networkController: NetworkControllerProtocol
    
    init(networkController: NetworkControllerProtocol) {
        self.networkController = networkController
    }
    
    func getUsers() -> AnyPublisher<Users, Error> {
        let endpoint = Endpoint.users
        
        return networkController.get(type: Users.self, url: endpoint.url, headers: endpoint.headers)
    }
    
    func getUsers(count: Int) -> AnyPublisher<Users, Error> {
        let endpoint = Endpoint.users(count: count)
        
        return networkController.get(type: Users.self, url: endpoint.url, headers: endpoint.headers)
    }
    
    func getUser(id: String) -> AnyPublisher<User, Error> {
        let endpoint = Endpoint.user(id: id)
        
        return networkController.get(type: User.self, url: endpoint.url, headers: endpoint.headers)
    }
}
