//
//  AlbumHomePresenter.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

enum AlbumHomeStatus {
    case none
    case notAuthorized
    case error
}

protocol AlbumHomePresenter {
    
}

class AlbumHomePresenterImpl: AlbumHomePresenter {
    let wireframe: AlbumHomeWireframe
    let useCase: AlbumHomeUseCase
    
    
    fileprivate let disposeBag = DisposeBag()
    
    public required init(wireframe: AlbumHomeWireframe, useCase: AlbumHomeUseCase) {
        self.wireframe = wireframe
        self.useCase = useCase
    }
}
