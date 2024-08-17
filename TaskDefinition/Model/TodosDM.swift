//
//  FoodDM.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation
import SwiftyJSON

struct TodosDM {
    var id: Int
    var userId: Int
    var title: String
    var completed: Bool
    
    init(json: JSON) {
        self.id = json["id"].intValue
        self.userId = json["userId"].intValue
        self.title = json["title"].stringValue
        self.completed = json["completed"].boolValue
    }
}
//MARK: - Example response
//{
//  "userId": 1,
//  "id": 2,
//  "title": "quis ut nam facilis et officia qui",
//  "completed": false
//}
