//
//  AlbumHomeUseCase.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation

protocol AlbumHomeUseCase {
    
}

struct AlbumHomeUseCaseImpl: AlbumHomeUseCase {
    private let albumHomeRepository : AlbumHomeRepository
    
    public init(albumHomeRepository : AlbumHomeRepository) {
        self.albumHomeRepository = albumHomeRepository
    }
}
