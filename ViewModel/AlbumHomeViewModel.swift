//
//  AlbumHomePresenter.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation

class AlbumHomeViewModels {
    var albumInfos = Array<AlbumHomeEntity.AlbumHomeEntities>()
    
    var count : Int64!
    
    var useCase = AlbumHomeUseCase()
    
    var success = false
    
    func getAlbumInfo() {
        useCase.makeQueue("1", CommunicationType.getAlbumHome, self)
    }
}
