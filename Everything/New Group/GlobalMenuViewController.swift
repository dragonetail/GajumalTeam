//
//  GlobalMenuViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/04/15.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class GlobalMenuViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initIcon()
        self.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initIcon() {
        let v0 = self.viewControllers?[0]
    }
    
}
