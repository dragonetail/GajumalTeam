//
//  AlbumHomeModel.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

//json decode

import Foundation

struct AlbumHomeEntity : Codable {
    let models : [AlbumHomeEntities]?
    let count : Int64?
    struct AlbumHomeEntities : Codable {
        let albumId : Int64?
        let date : String
        let title : String
    }
}
