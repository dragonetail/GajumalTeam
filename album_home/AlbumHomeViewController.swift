//
//  AlbumHomeViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/20.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class AlbumHomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var normalButton: NormalButton!
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
}

extension AlbumHomeViewController : UITableViewDelegate {
    
}

extension AlbumHomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! AlbumTableViewCell
        return cell
    }
    
}
