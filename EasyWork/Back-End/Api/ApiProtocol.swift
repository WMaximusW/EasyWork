//
//  ApiProtocol.swift
//  ParkingManagerCenter
//
//  Created by MaximusMacOS on 3/5/19.
//  Copyright © 2019 KztekJSC. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

protocol ApiProtocol {
    //Get method
    func GetAPI(url:String, paras: [String : Any]) -> DataRequest;

    //Post method
    func PostAPI(url:String, paras: [String:Any]) -> DataRequest;
    
    //Login mdethod for get access
    func Login(url:String, paras: [String:Any], keypass: String) -> DataRequest;
}

