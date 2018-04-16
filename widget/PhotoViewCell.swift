//
//  PhotoViewCell.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/04/15.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class PhotoViewCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        customViewCommonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.customViewCommonInit()
    }
    
    func customViewCommonInit(){
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "TitleView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|",
                                                      options:NSLayoutFormatOptions(rawValue: 0),
                                                      metrics:nil,
                                                      views: bindings))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|",
                                                      options:NSLayoutFormatOptions(rawValue: 0),
                                                      metrics:nil,
                                                      views: bindings))
        
    }
}
