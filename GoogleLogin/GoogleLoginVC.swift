//
//  ViewController.swift
//  GoogleLogin
//
//  Created by Mohammad Umar Khan of Appinventiv on 22/08/17.
//  Copyright © 2017 Appinventiv. All rights reserved.

import UIKit

class GoogleLoginVC: UIViewController {
    
    //MARK: IBOutlets...
    //MARK: ===============
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var imageUrlLabel: UILabel!
    
    //MARK: View LifeCycle...
    //MARK: =================
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: Google login action button...
    @IBAction func gogleLoginButton(_ sender: UIButton) {
        
        GoogleLoginController.shared.login(success: { (model :  GoogleUser) in
            
            self.nameLabel.text = model.name
            self.emailLabel.text = model.email
            self.imageUrlLabel.text = model.image?.absoluteString
        })
        { (err : Error) in
            print(err.localizedDescription)
        }
    }
}
