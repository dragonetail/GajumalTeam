//
//  SharedObserver.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/06.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import RxSwift

class SharedObserver {
    static let instance: SharedObserver = SharedObserver()
    
    fileprivate let ps : PublishSubject<Void> = PublishSubject()
}

public protocol AlbumHomeObserver {
    var albumHomeObserver : PublishSubject<Void> { get }
}

extension SharedObserver: AlbumHomeObserver {
    var albumHomeObserver: PublishSubject<Void> {
        return ps
    }
}
