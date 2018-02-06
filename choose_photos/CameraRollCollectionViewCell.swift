//
//  CameraRollCollectionViewCell.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/02/06.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit
import Photos

class CameraRollCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // 画像を表示する
    func setConfigure(assets: PHAsset) {
        let manager = PHImageManager()
        manager.requestImage(for: assets,
                             targetSize: frame.size,
                             contentMode: .aspectFill,
                             options: nil,
                             resultHandler: { [weak self] (image, info) in
                                guard let wself = self, let outImage = image else {
                                    return
                                }
                                wself.photoImageView.image = image
        })
    }

}
