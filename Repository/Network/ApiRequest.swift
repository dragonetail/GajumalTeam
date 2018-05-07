//
//  CXDRequest.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/05.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

enum RequestType: String {
    case GET, POST
}

protocol ApiRequest {
    var method: RequestType { get }
    var path:String { get }
    var param:[String: String] { get }
}

extension ApiRequest {
    func request(with baseURL: URL) -> URLRequest {
        guard var components = URLComponents(url: baseURL.appendingPathComponent(path), resolvingAgainstBaseURL: false)
            else {
                fatalError("")
        }
        
        components.queryItems = param.map {
            URLQueryItem(name: String($0), value: String($1))
        }

        guard let url = components.url else {
            fatalError("")
        }
        
        var request = URLRequest(url:url)
        request.httpMethod = method.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        return request
    }
}
