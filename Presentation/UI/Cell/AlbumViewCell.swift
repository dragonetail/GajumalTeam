//
//  AlbumViewCell.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/12.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class AlbumViewCell: UITableViewCell {
    
    
    @IBOutlet weak var albumDate: UILabel!
    @IBOutlet weak var albumTitle: UILabel!
    
    func updateCell(_ albumHomeViewModel: AlbumHomeViewModel) {
        self.albumDate.text = albumHomeViewModel.albumDate
        self.albumTitle.text = albumHomeViewModel.albumTitle
    }
    
}
