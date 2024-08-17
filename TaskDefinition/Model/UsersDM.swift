//
//  UsersDM.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation
import SwiftyJSON

struct UsersDM {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address
    
    init(json: JSON) {
        self.id = json["id"].intValue
        self.name = json["name"].stringValue
        self.username = json["username"].stringValue
        self.email = json["email"].stringValue
        self.address = Address(json: json["address"])
    }
}

struct Geo {
    var lat: String
    var lng: String
    
    init(json: JSON) {
        self.lat = json["lat"].stringValue
        self.lng = json["lng"].stringValue
    }
}
struct Address {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: Geo
    
    init(json: JSON) {
        self.street = json["street"].stringValue
        self.suite = json["suite"].stringValue
        self.city = json["city"].stringValue
        self.zipcode = json["zipcode"].stringValue
        self.geo = Geo(json: json["geo"])
    }
}
//MARK: - Example response
//{
//  "id": 1,
//  "name": "Leanne Graham",
//  "username": "Bret",
//  "email": "Sincere@april.biz",
//  "address": {
//    "street": "Kulas Light",
//    "suite": "Apt. 556",
//    "city": "Gwenborough",
//    "zipcode": "92998-3874",
//    "geo": {
//      "lat": "-37.3159",
//      "lng": "81.1496"
//    }
//  }
