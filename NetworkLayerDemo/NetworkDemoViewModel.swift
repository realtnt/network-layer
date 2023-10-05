//
//  NetworkDemoViewModel.swift
//  NetworkLayerDemo
//
//  Created by Theo Ntogiakos on 04/10/2023.
//

import Foundation
import Combine

class NetworkDemoViewModel {
    let networkController: NetworkController
    let usersLogicController: UsersLogicController
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        networkController = NetworkController()
        usersLogicController = UsersLogicController(networkController: networkController)
    }
    
    
    
//    usersLogicController.getUsers()
//        .sink { (completion) in
//            switch completion {
//            case let .failure(error):
//                print("Cound't get users: \(error)")
//            case .finished: break
//            }
//        } receiveValue: { users in
//            print(users)
//        }
//        .store(in: &subscriptions)
}
