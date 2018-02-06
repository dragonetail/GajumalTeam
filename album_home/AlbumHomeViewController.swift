//
//  AlbumHomeViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/20.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

class AlbumHomeViewController: BaseViewController {
    
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var seePhotos: UIButton!
    private var isButtonDisplayed = true
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AlbumTableViewControllerSegue" {
            let vc = segue.destination as! AlbumTableViewController
            vc.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    @IBAction func showPhotos(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ChoosePhotos", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "ChoosePhotosViewController")
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

extension AlbumHomeViewController: AlbumTableViewControllerDelegate {
    
    func viewDidscrolledUp() {
        if !isButtonDisplayed {
            seePhotos.isHidden = false
            isButtonDisplayed = true
        }
    }
    
    func viewDidscrolledDown() {
        if isButtonDisplayed {
            seePhotos.isHidden = true
            isButtonDisplayed = false
        }
    }
    
}
