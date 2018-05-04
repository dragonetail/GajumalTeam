//
//  LoginedViewController.swift
//  Gajumal
//
//  Created by koyama on 2018/04/19.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit
import Firebase

class LoginedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Auth.auth().addStateDidChangeListener{auth, user in
            if user != nil{
                if let user = user {
                    // The user's ID, unique to the Firebase project.
                    // Do NOT use this value to authenticate with your backend server,
                    // if you have one. Use getTokenWithCompletion:completion: instead.
                    let uid = user.uid
                    let email = user.email
                    let photoURL = user.photoURL
                    // ...
                }
                
            } else {
                print("fail")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func logout(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            goBack()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    
    func goBack() {
        let next = storyboard!.instantiateViewController(withIdentifier: "SocialLoginView")
        self.present(next,animated: true, completion: nil)
        //        let socialLoginViewController = SocialLoginViewController()
        //        self.navigationController?.pushViewController(socialLoginViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
