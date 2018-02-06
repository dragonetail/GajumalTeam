//
//  AlbumTableViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/21.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

protocol AlbumTableViewControllerDelegate : class {
    func viewDidscrolledUp()
    func viewDidscrolledDown()
}

class AlbumTableViewController: UITableViewController {
    
    weak var delegate : AlbumTableViewControllerDelegate?
    // スクロールの開始点
    var scrollBeginingPoint: CGPoint!
    
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
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        scrollBeginingPoint = scrollView.contentOffset
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPoint = scrollView.contentOffset
        
        if scrollBeginingPoint.y < currentPoint.y {
            print("scroll to bottom")
            delegate?.viewDidscrolledDown()
        } else {
            print("scroll to top")
            delegate?.viewDidscrolledUp()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! AlbumTableViewCell
        //cell.makeBorder()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
}


