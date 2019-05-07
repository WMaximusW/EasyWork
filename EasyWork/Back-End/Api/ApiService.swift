//
//  ApiService.swift
//  ParkingManagerCenter
//
//  Created by MaximusMacOS on 3/5/19.
//  Copyright © 2019 KztekJSC. All rights reserved.
//

import Foundation
import Alamofire

struct ApiService : ApiProtocol {
    
    
    func GetAPI(url: String, paras: [String : Any]) -> DataRequest {
        
        return Alamofire.request(url, method: .get, parameters: paras);
        
    }
    
    func PostAPI(url: String, paras: [String : Any]) -> DataRequest {

        
        return Alamofire.request(url, method: .post, parameters: paras);
        
    }
    
    func Login(url: String, paras: [String : Any], keypass: String) -> DataRequest {
        
        //KeyPass
        var fullParas = paras;
        fullParas.updateValue(keypass, forKey: "KeyPass");
        
        return Alamofire.request(url, method: .post, parameters: fullParas);
    }
 
}
