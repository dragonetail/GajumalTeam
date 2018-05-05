//
//  AlbumHomeDataStore.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/05.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public protocol AlbumHomeDataStore {
    func getAlbumPhotos() -> Observable<[AlbumHomeEntity]>
}

struct AlbumHomeDataStoreImpl : ApiRequest, AlbumHomeDataStore {
    var method = RequestType.GET
    var path = "photo"
    var param = [String: String]()
    
    init(name: String) {
        param["name"] = name
    }
    
    let apiClient = ApiClient()
    
    func getAlbumPhotos() -> Observable<[AlbumHomeEntity]> {
        return apiClient.send(apiRequest: self)
    }
}
