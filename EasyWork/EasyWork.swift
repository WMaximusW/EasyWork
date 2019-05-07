//
//  EasyWork.swift
//  EasyWork
//
//  Created by Maximus Nguyen on 4/20/19.
//  Copyright © 2019 Maximus Nguyen. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public struct EasyWork {

    
    
}

//MARK: For API
extension EasyWork {
    public class EasyApi {
        
        /// Login method
        /// - parameter url: address of your api
        /// - parameter paras: model send in api. Example: ["Username": "admin", "Password": "easywork"]
        /// - parameter keypass: Key of your app. security. Explain: ~ Model KeyPass: String
        /// - returns: DataRequest (Alamofire)
        public static func Login(url: String, paras: [String : Any], keypass: String) -> DataRequest {
            
            
            return ApiService().Login(url: url, paras: paras, keypass: keypass);
        }
        
        /// Post method
        /// - parameter url: address of your api
        /// - parameter paras: model send in api. Example ["Field1": "ABC", "Field2": 1000]
        /// - returns: DataRequest (Alamofire)
        public static func Post(url: String, paras: [String : Any]) -> DataRequest {
            return ApiService().PostAPI(url: url, paras: paras);
        }
        
        /// Get method
        /// - parameter url: address of your api
        /// - parameter paras: model send in api. Example ["Field1": "ABC", "Field2": 1000]
        /// - returns: DataRequest (Alamofire)
        public static func Get(url: String, paras: [String : Any]) -> DataRequest {
            
            return ApiService().GetAPI(url: url, paras: paras);
        }
        
    }
    
}

//MARK: FunctionHelper
extension EasyWork {

    public class EasyHelper {
        
        /// Open UIAlertController
        /// - parameter parent: UiVIewController that you want to implement
        /// - parameter title: Title of alert you want to display
        /// - parameter message: Description of alert you want to display
        /// - returns: UIAlertController show in your view
        public static func Alert_UIAlertController(parent: UIViewController, title: String, message: String) -> Void {
            FunctionHelper().Message(parent: parent, title: title, message: message);
        }
        
        /// Show HUD in view
        /// - returns: HUD display (SVProgessHUD)
        public static func HUD_Show() -> Void {
            FunctionHelper().ShowHUD();
        }
        
        /// Show HUD in view
        /// - parameter message: Title of HUD you want to display
        /// - returns: HUD display (SVProgessHUD)
        public static func HUD_Show(message: String) -> Void {
            FunctionHelper().ShowHUD(message: message);
        }
        
        /// Hide HUD in view
        /// - returns: HUD hide (SVProgessHUD)
        public static func HUD_Hide() -> Void {
            FunctionHelper().HideHUD();
        }
        
        /// Format your current money to format: 000,000 VND
        /// - parameter value: you money in string
        /// - returns: string formatted of your money
        public static func Format_VND(value: String?) -> String {
            return FunctionHelper().VND(value);
        }
        
        /// Check device connect
        /// - returns: True / False
        func Alamofire_CheckConnection() -> Bool {
            return FunctionHelper().CheckDeviceIsConnectToInternet();
        }
    }

}

//MARK: ConvertJson
extension EasyWork {
    
    public class EasyConvert <T:Codable> {
        
        /// Decode data from api response to model you want
        /// - parameter data: data in response of api postback
        /// - returns: model of you define in api
        public static func DecodeDataToObject(data: Data) -> T {
            return ConvertJson<T>().DecodeDataToObject(data: data);
        }
        
        /// Decode data from api response to list of model you want
        /// - parameter data: data in response of api postback
        /// - returns: list of model that you define in api
        public static func DecodeDataToList(data: Data) -> [T] {
            return ConvertJson<T>().DecodeDataToList(data: data);
        }
        
        /// Encode your model to String
        /// - parameter data: model you want to encode
        /// - returns: string (optional)
        public static func EncodeObjectToString(data: T) -> String? {
            return ConvertJson<T>().EncodeObjectToString(obj: data);
        }
        
        /// Encode your list of model to String
        /// - parameter data: list of model you want to encode
        /// - returns: string (optional)
        public static func EncodeListToString(data: [T]) -> String? {
            return ConvertJson<T>().EncodeListToString(list: data);
        }
    }
    
}

//MARK: SwiftyJSON
extension EasyWork {

    public class EasySwiftyJSON {
        
        /// Convert String model
        /// - parameter modelSer: serialize model
        /// - returns: JSON (SwiftyJSON)
        public static func ConvertToJson(modelSer: String) -> JSON {
            return SwiftyJSONHelper().ConvertToModel(model: modelSer);
        }
        
    }

}


