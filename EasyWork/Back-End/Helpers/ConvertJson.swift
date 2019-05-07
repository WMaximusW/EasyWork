//
//  ConvertJson.swift
//  EasyWork
//
//  Created by Maximus Nguyen on 4/21/19.
//  Copyright © 2019 Maximus Nguyen. All rights reserved.
//

import Foundation

public class ConvertJson <T:Codable> {

    func DecodeDataToObject(data:Data) -> T {
        var model:T?
        
        do {
            model = try JSONDecoder().decode(T.self, from: data);
        } catch {
            model = nil;
        }
        
        return model!;
    }
    
    func DecodeDataToList(data:Data) -> [T] {
        var model:[T] = [];
        
        do {
            model = try JSONDecoder().decode([T].self, from: data);
        } catch {
            model = [];
        }
        
        return model;
    }
    
    func EncodeObjectToString(obj: T) -> String? {
        var json: String?
        
        let jsonEncoder = JSONEncoder()
        do {
            let jsonData = try jsonEncoder.encode(obj);
            
            json = String(data: jsonData, encoding: String.Encoding.utf8);
            
        } catch {
            json = "";
        }
        
        return json;
    }
    
    func EncodeListToString(list: [T]) -> String? {
        var json: String?
        
        let jsonEncoder = JSONEncoder()
        do {
            let jsonData = try jsonEncoder.encode(list);
            
            json = String(data: jsonData, encoding: String.Encoding.utf8);
            
        } catch {
            json = "";
        }
        
        return json;
    }
}
