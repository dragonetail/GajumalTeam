//
//  GridViewCell.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/02/07.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class GridViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var livePhotoBadgeImageView: UIImageView!
    
    
    var representedAssetIdentifier: String!
    
    var thumbnailImage: UIImage! {
        didSet {
            imageView.image = thumbnailImage
        }
    }
    var livePhotoBadgeImage: UIImage! {
        didSet {
            livePhotoBadgeImageView.image = livePhotoBadgeImage
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImage = nil
        livePhotoBadgeImageView.image = nil
    }
}

