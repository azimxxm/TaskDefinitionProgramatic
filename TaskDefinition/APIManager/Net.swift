//
//  Net.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import Foundation
import SwiftyJSON
import Alamofire

class Net {
    //Requests
    class func req(url: String, method: HTTPMethod, param: [String:Any]?,header: HTTPHeaders?, withLoader: Bool = false, encode type: ParameterEncoding = JSONEncoding.default, completion: @escaping(JSON?)-> Void ) {
        
        AF.request(url, method: method, parameters: param, encoding: type, headers: header).response { resonse in
            
            if let data = resonse.data {
                let jsonData = JSON(data)
                
                if jsonData["data"].dictionary == nil {
                    if  jsonData["error"].dictionary != nil {
                        print(jsonData["error"]["errorMessage"].stringValue)
                    }
                }
                completion(jsonData)
            } else {
                completion(nil)
            }
        }
    }
    
    //MARK: - Image upload
    class func reqMultiFormData(url: String, images: [UIImage], method: HTTPMethod, header: HTTPHeaders?, completion: @escaping (JSON?) -> (Void)) {
        
        AF.upload(multipartFormData: { multipartFormData in
            for i in images {
                if let imageData = i.jpegData(compressionQuality: 0.4) {
                    
                    multipartFormData.append(imageData, withName: "file", fileName: "filename.jpeg", mimeType: "image/jpeg")
                }
            }
        }, to: url, method: method, headers: header).responseString { response in
            
            switch response.result {
            case .success(_):
                if let data = response.data {
                    completion(JSON(data))
                }else {
                    completion(nil)
                }
            case .failure(_):
                completion(nil)
            }
        }
    }
}

