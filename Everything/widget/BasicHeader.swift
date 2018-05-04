//
//  BasicHeader.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/04/17.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

@IBDesignable class BasicHeader: UIView {
    var delegate: OnClickDelegate?
    
    @IBOutlet weak var centerButton: UIButton!
    
    @IBInspectable var enable:Bool = true {
        didSet {
            if enable {
                
            } else {
            }
            
            
        }
    }
    // 真ん中と右のボタンのテキスト
    @IBInspectable var labelText: String = "" {
        didSet {
            centerButton.setTitle(labelText, for: UIControlState())
        }
    }
    
    
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
        let nib = UINib(nibName: "BasicHeader", bundle: bundle)
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
    
    @IBAction func centerButtonAction(_ sender: AnyObject) {
        delegate?.onClick(self)
    }
    
}
