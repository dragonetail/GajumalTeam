//
//  SplashViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/18.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class SplashViewController : UIViewController {
    
    var useCase : AlbumHomeUseCase? = AlbumHomeUseCase()
    let albumInfos = AlbumHomeViewModels()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //useCase?.makeQueue("1", CommunicationType.getAlbumHome)
        albumInfos.getAlbumInfo()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let viewController = UIStoryboard(name: "AlbumHome", bundle: nil).instantiateViewController(withIdentifier: "AlbumHome") as! AlbumHomeViewController
        viewController.albumInfos = self.albumInfos
        DispatchQueue.main.async {
            self.present(viewController, animated: true, completion: nil)
        }
    }
    
}
