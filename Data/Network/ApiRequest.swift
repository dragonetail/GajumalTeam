//
//  CXDRequest.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/05.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import UIKit

class ApiRequest {
    let HTTP_OK = 200
    
    let TIME_OUT_ERRORCODE = -1001
    
    fileprivate var method: String?
    fileprivate var url: String?
    fileprivate var param:[String: Any]?
    
    fileprivate var responseCode = 0
    var accessresponseCode:Int {
        get {return self.responseCode}
        set(Value){self.responseCode = Value}
    }
    fileprivate var ConnectTimeOut = (10.0 * 2)
    var accessConnectionTimeOut: Double {
        get{return Double(self.ConnectTimeOut)}
        set(Value){self.ConnectTimeOut = Value}
    }
    
    init(_ method:String, _ url:String, _ param:[String: Any]?) {
        self.method = method
        self.url = url
        self.param = param
    }
    
    func sendRequest() ->Bool {
        let requestUrl = URL(string: self.url!)
        var request = URLRequest(url:requestUrl!)
        request.httpMethod = self.method
        
        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.timeoutIntervalForRequest = ConnectTimeOut
        sessionConfig.timeoutIntervalForResource = ConnectTimeOut
        let session = URLSession(configuration: sessionConfig)
        
        if param != nil {
            if self.method == "POST" {
                do {
                    request.httpBody = try JSONSerialization.data(withJSONObject: param!, options: .prettyPrinted)
                } catch {
                    return false
                }
            }
        }
        let task = session.dataTask(with: request, completionHandler: {data, res, error in
            if error != nil {
                
            } else {
                
            }
        })
        task.resume()
        return true
    }
}
