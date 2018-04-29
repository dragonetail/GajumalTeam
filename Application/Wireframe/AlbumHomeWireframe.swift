//
//  AlbumHomeWireframe.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/04/30.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation

// 画面外のイベントの橋渡し
protocol AlbumHomeWireframe : class {
    var viewController: AlbumHomeViewController? { get set }
    
    func showYear()
    
}

class AlbumHomeWireframeImpl: AlbumHomeWireframe {
    weak var viewController: AlbumHomeViewController?
    
    // 年を選ぶ実装を入れる予定
    func showYear() {
        print("showYear")
    }
}
