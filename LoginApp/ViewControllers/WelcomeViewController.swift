//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 22.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeName ?? "unknown user")!"
    }
}
