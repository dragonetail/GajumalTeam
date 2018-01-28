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
        topView.layer.borderColor = UIColor.lightGray.cgColor
        topView.layer.borderWidth = 1.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
