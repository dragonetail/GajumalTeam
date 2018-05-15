//
//  AlbumHomeRepository.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/05.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

enum CommunicationType: Int {
    case getAlbumHome
}


class AlbumHomeRepository {
    
    let baseURL = "http://192.168.1.12:8080/gajumal"
    var path : String?
    var method : String?
    var param : [String:Any]?
    
    init (_ path : String, _ method : String) {
        self.path = path
        self.method = method
    }
    
    func call(_ type:CommunicationType, _ param:[String:Any]?,
                         _ onSuccess:@escaping (GajumalRequest?) -> Void,
                         _ onError:@escaping (GajumalRequest?) -> Void) {
            self.param = param
            switch type {
            case CommunicationType.getAlbumHome:
                self.getAlbumInfo(onSuccess, onError)
            default:
                onError(nil)
            }
    }
        
    func getAlbumInfo(_ onSuccess: (GajumalRequest) -> Void, _ onError: (GajumalRequest) -> Void) {
        let url = "\(self.baseURL)\(self.path!)?num=1"
        var request = GajumalRequest(CommunicationType.getAlbumHome, self.method!, url, nil)
        print(request.url)
        if request.sendRequest() {
            onSuccess(request)
        } else {
            onError(request)
        }
    }
}
