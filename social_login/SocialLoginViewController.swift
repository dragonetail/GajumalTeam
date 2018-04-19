//
//  SocialLoginViewController.swift
//  Gajumal
//
//  Created by koyama on 2018/04/19.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit
import Firebase

class SocialLoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Auth.auth().addStateDidChangeListener{auth, user in
            if user != nil{
                self.goNext()
            } else {
                print("fail")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //        if TWTRTwitter.sharedInstance().sessionStore.hasLoggedInUsers() {
        //        }
        
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if let session = session {
                let credential = TwitterAuthProvider.credential(withToken: session.authToken, secret: session.authTokenSecret)
                
                Auth.auth().signIn(with: credential, completion: { (user, error) in
                    if error == nil {
                        print("Twitter authentication succeed")
                        self.goNext()
                    } else {
                        print("Twitter authentication failed")
                    }
                })
            } else {
                print("error: \(String(describing: error?.localizedDescription))");
            }
        })
        //logInButton.center = self.view.center
        logInButton.layer.position = CGPoint(x: self.view.frame.width/2, y:400)
        self.view.addSubview(logInButton)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBAction func newLogin(_ sender: UIButton) {
        let check = checkTextField()
        if check.isEmpty {
            Auth.auth().createUser(withEmail: mailTextField.text!, password: passTextField.text!) { (user, error) in
                if error == nil {
                    print("newLogin succeed")
                    self.goNext()
                } else {
                    print("newLogin failed")
                }
            }
        } else {
            //アラートの表示
            let alertController = UIAlertController(title: "test",message: check, preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            alertController.addAction(okAction)
            present(alertController,animated: true,completion: nil)
        }
    }
    
    @IBAction func login(_ sender: UIButton) {
        let check = checkTextField()
        if check.isEmpty {
            Auth.auth().signIn(withEmail: mailTextField.text!, password: passTextField.text!) { (user, error) in
                if error == nil {
                    print("login succeed")
                    self.goNext()
                } else {
                    print("login failed")
                }
            }
        } else {
            //アラートの表示
            let alertController = UIAlertController(title: "test",message: check, preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            alertController.addAction(okAction)
            present(alertController,animated: true,completion: nil)
        }
    }
    
    func checkTextField() -> String {
        if mailTextField.text == nil || mailTextField.text!.isEmpty {
            return "メルアドが空です"
        } else if passTextField.text == nil || passTextField.text!.isEmpty {
            return "パスワードが空です"
        }
        return ""
    }
    
    func goNext() {
        let next = storyboard!.instantiateViewController(withIdentifier: "LoginedView")
        self.present(next,animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
