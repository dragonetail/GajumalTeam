//
//  AlbumHomeModel.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import RxSwift
import RxCocoa

struct AlbumHomeModel {
    let model : Variable<AlbumHomeEntity>
    let title: Observable<String>
    let date: Observable<String>
    
    let disposeBag = DisposeBag()
    
    init(model: AlbumHomeEntity) {
        self.model = Variable(model)
        self.title = self.model.asObservable().map { $0.title }
        self.date = self.model.asObservable().map { $0.date }
    }

}
