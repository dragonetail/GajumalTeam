//
//  AlbumHomeModel.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation

struct AlbumHomeModel {
    var title: String
    var date: Date
    
    init(rowAlbumHomeModel: AlbumHomeEntity) {
        title = rowAlbumHomeModel.title
        date = rowAlbumHomeModel.date
    }
}
