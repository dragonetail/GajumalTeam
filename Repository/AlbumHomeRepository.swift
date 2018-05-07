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

struct AlbumHomeRepository: ApiRequest {
    var method = RequestType.GET
    var path = "albumTitle"
    var param = [String : String]()
    
    init(num: String) {
        param["num"] = num
    }
}
