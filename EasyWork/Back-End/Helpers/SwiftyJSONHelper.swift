//
//  SwiftyJSONHelper.swift
//  EasyWork
//
//  Created by Maximus Nguyen on 4/21/19.
//  Copyright © 2019 Maximus Nguyen. All rights reserved.
//

import Foundation
import SwiftyJSON

class SwiftyJSONHelper {
    
    func ConvertToModel(model: String) -> JSON {
        return JSON.init(parseJSON: model);
    }
    
}
