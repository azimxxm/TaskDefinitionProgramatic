//
//  TodosVM.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation

class TodosVM {
    var data: Box<[TodosDM]> = Box([])
    
    func getData() {
        APIManager.getTodos {[weak self] todos in
            self?.data.value = todos
        }
    }
}
