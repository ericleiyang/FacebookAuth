//
//  ViewController.swift
//  FacebookAuth
//
//  Created by Eric Yang on 11/7/19.
//  Copyright © 2019 LeiYang. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTap(_ sender: Any) {
        
        facebookAuth()
    }
    
    fileprivate func facebookAuth() {
        let loginManager = LoginManager()
        let permissions = ["read_insights", "business_management", "instagram_basic", "instagram_manage_insights"]
        
        loginManager.logIn(permissions: permissions, from: self) { (result, erro) in
            
            if let date = AccessToken.current?.expirationDate {
                print("token expiration date:  \(date)")
            }else {
                print("nothing")
            }
        }
        
    }
    
}

