//
//  LoginViewController.swift
//  Flash Chat
//
//  Created by Alex Shumylo on 29.11.2021.
//  Copyright © 2021 ShumApps. All rights reserved.
//


import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    //navigate to ChatViewController
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
                
            }
        }
    }
}
