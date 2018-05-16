//
//  ApiClient.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation

protocol GajumalClient {
    func call(type:CommunicationType, param:[String:Any]?,
                     _ onSuccess:@escaping (GajumalRequest?) -> Void,
                     _ onError:@escaping (GajumalRequest?) -> Void)
}
