//
//  PostsDM.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation
import SwiftyJSON


struct PostsDM {
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    init(json: JSON) {
        self.userId = json["userId"].intValue
        self.id = json["id"].intValue
        self.title = json["title"].stringValue
        self.body = json["body"].stringValue
    }
}

//{
//  "userId": 1,
//  "id": 1,
//  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//}
