//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 24.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {
    
    var user: User!

    @IBOutlet var textUser: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textUser.text = user.person.biography
    }
}
