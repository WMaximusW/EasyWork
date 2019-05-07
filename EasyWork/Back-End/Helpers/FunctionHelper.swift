//
//  FunctionHelper.swift
//  EasyWork
//
//  Created by Maximus Nguyen on 4/21/19.
//  Copyright © 2019 Maximus Nguyen. All rights reserved.
//

import Foundation
import SVProgressHUD
import Alamofire

class FunctionHelper {
    
    //TODO: Hiển thị alert mặc định
    func Message(parent: UIViewController, title: String, message: String) -> Void
    {
        //Tạo ra hộp thoại thông báo
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert);
        let acDongY = UIAlertAction(title: "OK", style: .default, handler: nil);
        
        //Thêm nút vào thông báo
        alert.addAction(acDongY);
        
        //Hiển thị thông báo
        parent.present(alert, animated: true, completion: nil);
    }
    
    //TODO: Hiển thị HUD Loading
    func ShowHUD() -> Void {
        
        SVProgressHUD.show();
        
    }
    
    //TODO: Hiển thị HUD Loading với message
    func ShowInfoHUD(message: String) -> Void {
        
        SVProgressHUD.showInfo(withStatus: message);
        
    }
    
    //TODO: Hiển thị HUD Loading với message
    func ShowHUD(message: String) -> Void {
        
        SVProgressHUD.show(withStatus: message);
        
    }
    
    //TODO: Ẩn HUD Loading với message
    func HideHUD() -> Void {
        
        SVProgressHUD.dismiss();
        
    }
    
    //TODO: Format
    func VND(_ value: String?) -> String {
        guard value != nil else { return "0 VND" }
        let doubleValue = Double(value!) ?? 0.0
        let formatter = NumberFormatter()
        formatter.currencyCode = "VND"
        formatter.currencySymbol = ""
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .currencyAccounting
        return formatter.string(from: NSNumber(value: doubleValue)) ?? "\(doubleValue) VND"
    }

    func CheckDeviceIsConnectToInternet() -> Bool {
        return NetworkReachabilityManager()!.isReachable;
    }
}
