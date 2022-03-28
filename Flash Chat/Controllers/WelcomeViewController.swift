//
//  WelcomeViewController.swift
//  Flash Chat
//
//  Created by Alex Shumylo on 29.11.2021.
//  Copyright © 2021 ShumApps. All rights reserved.
//


import UIKit

class WelcomeViewController: UIViewController {
    

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = " "
        var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
//            print("-")
//            print(0.1 * charIndex)
//            print(letter)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
}
