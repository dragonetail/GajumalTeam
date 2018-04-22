//
//  AlbumHomeViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/20.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

/// ノード上に見せるメインの画面
class AlbumHomeViewController: UIViewController, OnClickDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var basicHeader: BasicHeader!
    @IBOutlet weak var plusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basicHeader.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "LeftNodeViewCell", bundle: nil), forCellReuseIdentifier: "leftCell")
        tableView.register(UINib(nibName: "RightNodeViewCell", bundle: nil), forCellReuseIdentifier: "rightCell")
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.separatorStyle = .none
        self.view.bringSubview(toFront: plusButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func onClick(_ sender: AnyObject?) {
        print("aaaa")
    }
    
    @IBAction func addAlbum(_ sender: Any) {
        
    }
    
}

extension AlbumHomeViewController : UITableViewDelegate {
}

extension AlbumHomeViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 || indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "leftCell") as! LeftNodeViewCell
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "rightCell") as! RightNodeViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
