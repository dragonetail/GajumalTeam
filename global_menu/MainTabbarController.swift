//
//  MainTabbarController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/20.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initIcon()
        self.delegate = self
        let fontFamily: UIFont! = UIFont.systemFont(ofSize: 10)
        let nomalAttributes = [NSAttributedStringKey.font: fontFamily, NSAttributedStringKey.foregroundColor: UIColor.black] as [NSAttributedStringKey : Any]
        UITabBarItem.appearance().setTitleTextAttributes(nomalAttributes, for: UIControlState.normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initIcon() {
        let v0 = self.viewControllers?[0]
        let v1 = self.viewControllers?[1]
        let v2 = self.viewControllers?[2]
        let v3 = self.viewControllers?[3]
        
        v0?.tabBarItem.title = ""
        v1?.tabBarItem.title = ""
        v2?.tabBarItem.title = ""
        v3?.tabBarItem.title = ""
    }
    
}

