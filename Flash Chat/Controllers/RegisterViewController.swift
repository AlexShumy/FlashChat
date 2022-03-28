//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Alex Shumylo on 29.11.2021.
//  Copyright © 2021 ShumApps. All rights reserved.
//


import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                    // or you can - print(e.localizedDescription) and place a label or pop up message on Register VC Scene to let the users know password contains errors
                } else {
                    //Navigate to the ChatViewController
                    // don't forget to add 'self.' before the method inside the closure ;)
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
        
    }
}
