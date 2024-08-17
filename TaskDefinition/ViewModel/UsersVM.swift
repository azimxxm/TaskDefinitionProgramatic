//
//  UsersVM.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation

class UsersVM {
    var data: Box<[UsersDM]> = Box([])
    
    func getData() {
        APIManager.getUsers {[weak self] users in
            self?.data.value = users
        }
    }
}

