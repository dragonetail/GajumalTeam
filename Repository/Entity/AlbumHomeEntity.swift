//
//  AlbumHomeEntity.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/05.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//


import RxSwift

struct AlbumHomeEntity : Codable {
    var title : String
    var date : Date
    
    init(title: String, date: Date) {
        self.title = title
        self.date = date
    }
}
