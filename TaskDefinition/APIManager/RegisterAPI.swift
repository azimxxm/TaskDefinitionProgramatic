//
//  RegisterAPI.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation
import Alamofire

class RegisterAPI {
    static var baseUrl = "https://jsonplaceholder.typicode.com"
    
    enum RegisterPoints: String {
        case posts = "/posts"
        case todos = "/todos"
        case users = "/users"
    }
    
    static func getUrls(endPoint: RegisterPoints)-> String {
        return baseUrl + endPoint.rawValue
    }
}
