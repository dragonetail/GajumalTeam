//
//  AlbumTableViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/21.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class AlbumTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "AlbumTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.separatorStyle = .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return .leastNormalMagnitude
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! AlbumTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
}
