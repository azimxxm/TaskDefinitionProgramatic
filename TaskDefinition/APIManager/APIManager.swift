//
//  APIManager.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Alamofire
import Foundation

final class APIManager {
    static func getPosts(completion: @escaping ([PostsDM]) -> Void) {
        Net.req(url: RegisterAPI.getUrls(endPoint: .posts), method: .get, param: nil, header: nil, encode: JSONEncoding.default) { json in
            guard let json = json else { return completion([]) }
            let data = json.arrayValue.map { PostsDM(json: $0) }
            completion(data)
        }
    }
    
    
    static func getTodos(completion: @escaping ([TodosDM]) -> Void) {
        Net.req(url: RegisterAPI.getUrls(endPoint: .todos), method: .get, param: nil, header: nil, encode: JSONEncoding.default) { json in
            guard let json = json else { return completion([]) }
            let data = json.arrayValue.map { TodosDM(json: $0) }
            completion(data)
        }
    }

    static func getUsers(completion: @escaping ([UsersDM]) -> Void) {
        Net.req(url: RegisterAPI.getUrls(endPoint: .users), method: .get, param: nil, header: nil, encode: JSONEncoding.default) { json in
            guard let json = json else { return completion([]) }
            let data = json.arrayValue.map { UsersDM(json: $0) }
            completion(data)
        }
    }
}
