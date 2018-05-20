//
//  AlbumHomeUseCase.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/04.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import RxSwift

class AlbumHomeUseCase {
    
    var albumHomeVM : AlbumHomeViewModels?
    var vc : AlbumHomeViewController?
    
    func makeQueue(_ param: String , _ type: CommunicationType, _ vm: AlbumHomeViewModels){
        self.albumHomeVM = vm
        // スレッド生成
        let queue = DispatchQueue(label: "communication", attributes: [])
        queue.async(execute: {
            switch type {
            case CommunicationType.getAlbumHome:
                self.getAlbumInfo(param)
            }
        })
    }
    
    func getAlbumInfo(_ param : String) {
        var param:[String:Any]?
        param = [String:Any]()
        let albumHomeRepo = AlbumHomeRepository("/albumTitle", "GET")
        param!["num"] = param
        albumHomeRepo.call(CommunicationType.getAlbumHome, param!, {(request:GajumalRequest?) -> Void in
            let json = request?.accessresponseData!.data(using:String.Encoding.utf8)
            self.parseJson(json: json!)
        }, {(request:GajumalRequest?) -> Void in
            print("error")
        })
    }
    
    func parseJson(json : Data) {
        let result = try! JSONDecoder().decode(AlbumHomeEntity.self, from: json as! Data)
        if result != nil {
            let albumInfos = result.models
            let count = result.count
            for ai in albumInfos! {
                print(ai)
                self.albumHomeVM?.albumInfos.append(ai)
            }
        }
    }
}
