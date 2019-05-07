//
//  MessageReport.swift
//  ParkingManagerCenter
//
//  Created by MaximusMacOS on 3/5/19.
//  Copyright © 2019 KztekJSC. All rights reserved.
//

import Foundation

public class MessageReport: Codable {
    public var isSuccess: Bool
    public var Message: String
    
    init(isSuccess: Bool, Message: String) {
        self.isSuccess = isSuccess
        self.Message = Message
    }
}

