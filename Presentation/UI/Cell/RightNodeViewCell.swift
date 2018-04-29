//
//  RightNodeViewCell.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/04/21.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class RightNodeViewCell: UITableViewCell {

    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var arrowView: UIView!
    @IBOutlet weak var topView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customInit()
        makeTriangle()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func customInit() {
        //        let layerView = UIView(frame: CGRect(x: 0, y: 0, width: mainView.frame.size.width, height: mainView.frame.size.height))
        //        layerView.center = mainView.center
        //        layerView.layer.borderWidth = 1.0
        let rgb = UIColor(red: 22/255, green: 160/255, blue: 133/255, alpha: 1.0)
        //layerView.layer.borderColor = UIColor.lightGray.cgColor
        //        layerView.layer.borderColor = rgb.cgColor
        //        mainView.addSubview(layerView)
        topView.layer.borderColor = UIColor.lightGray.cgColor
        topView.layer.borderWidth = 1.0
    }
    
    func makeTriangle() {
        let triangleLayer = CAShapeLayer.init()
        let triangleFrame = CGRect.init(x: 0, y: 0, width: arrowView.frame.size.width, height: arrowView.frame.size.height)
        triangleLayer.frame = triangleFrame
        
        // 輪郭の色
        triangleLayer.strokeColor = UIColor.lightGray.cgColor
        // 三角形の中の色
        let rgb = UIColor(red: 22/255, green: 160/255, blue: 133/255, alpha: 1.0)
        triangleLayer.fillColor = rgb.cgColor
        // 輪郭の太さ
        triangleLayer.lineWidth = 1.0
        
        // 三角形を描画
        let triangleLine = UIBezierPath()
        triangleLine.move(to: CGPoint.init(x: 0, y: triangleFrame.size.height))
        triangleLine.addLine(to: CGPoint.init(x: triangleFrame.size.width / 2, y: 0))
        triangleLine.addLine(to: CGPoint.init(x: triangleFrame.size.width, y: triangleFrame.size.height))
        triangleLine.close()
        
        // 三角形を描画
        triangleLayer.path = triangleLine.cgPath
        arrowView.layer.addSublayer(triangleLayer)
        arrowView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi * 270.0 / 180.0));
    }
    
}
