//
//  AlbumHomeRepository.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/05.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


public protocol AlbumHomeRepository {
    func getAlbumTitle() -> Observable<[AlbumHomeEntity]>
}

struct AlbumHomeRepositoryImpl: AlbumHomeRepository {
    private let datastore : AlbumHomeDataStore
    
    public init(datastore: AlbumHomeDataStore) {
        self.datastore = datastore
    }
    
    func getAlbumTitle() -> Observable<[AlbumHomeEntity]> {
        return datastore.getAlbumPhotos()
    }
}
