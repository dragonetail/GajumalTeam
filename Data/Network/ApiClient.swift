//
//  ApiClient.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import Pods_Gajumal

struct ApiClient {
    //ログイン用API
    func getAccount() {
        //let url: String = ""
        //let request:
    }
    
    //アルバム取得用API
    func getAlbumPhoto(param:[String:Any], onSuccess:(ApiRequest?) -> Void, _ onError: (ApiRequest?) -> Void) {
        let url: String = ""
        let request = ApiRequest("POST",url,param)
        if request.sendRequest() {
            onSuccess(request)
        } else {
            onError(request)
        }
    }
}
