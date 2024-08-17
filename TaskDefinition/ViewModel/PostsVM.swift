//
//  PostsVM.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation

class PostsVM {
    var data: Box<[PostsDM]> = Box([])
    
    func getData() {
        APIManager.getPosts {[weak self] posts in
            self?.data.value = posts
        }
    }
}
