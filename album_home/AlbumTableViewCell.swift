//
//  AlbumTableViewCell.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/21.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    
    @IBOutlet weak var topView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.makeBorder()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func makeBorder() {
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: topView.frame.width, height: 1.0)
        topBorder.backgroundColor = UIColor.lightGray.cgColor
        
        //右線のCALayerを作成
        let rightBorder = CALayer()
        rightBorder.frame = CGRect(x: topView.frame.width, y: 0, width: 0.5, height:topView.frame.height)
        rightBorder.backgroundColor = UIColor.lightGray.cgColor
        
        //左線のCALayerを作成
        let leftBorder = CALayer()
        leftBorder.frame = CGRect(x: 0, y: 0, width: 0.5, height:topView.frame.height)
        leftBorder.backgroundColor = UIColor.lightGray.cgColor
        
        //下線のCALayerを作成
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: topView.frame.height, width: topView.frame.width, height:1.0)
        bottomBorder.backgroundColor = UIColor.lightGray.cgColor
         
        
        
        //作成したViewに上線を追加
        topView.layer.addSublayer(topBorder)
        //作成したViewに左線を追加
        topView.layer.addSublayer(leftBorder)
        //作成したViewに上線を追加
        topView.layer.addSublayer(rightBorder)
        //作成したViewに左線を追加
        topView.layer.addSublayer(bottomBorder)

    }
    
}
