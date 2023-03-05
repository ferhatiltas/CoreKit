//
//  BaseLogger.swift
//  CoreKit
//
//  Created by ferhatiltas on 5.03.2023.
//

import UIKit
import Alamofire

public struct BaseLogger {
    public static let shared = BaseLogger()

    public func request<Value>(_ request: DataRequest, didParseResponse response: AFDataResponse<Value>, responseData: Data) {
        
        print("⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️    TYPE & URL & CODE    ⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️")
        print("\(request.description)\n")
        
        print("⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️    HEADERS    ⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️")
        print("\(String(describing: request.request?.headers))\n")
        
        print("⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️    BODY    ⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️⚡️")
        guard let data = request.request?.httpBody else { return }
        do {
            let json =  try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            let jsonData = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
            print("\(String(decoding: jsonData, as: UTF8.self))\n")
        } catch {
            print("errorMsg")
        }
        
        print("🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀    RESPONSE    🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀")
        loggerDataToJson(data: responseData)
    }
    
    public func loggerDataToJson(data: Data) {
        if let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers),
           let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted) {
            print("\(String(decoding: jsonData, as: UTF8.self)) ")
        } else {
            print("json data malformed")
        }
    }
}
