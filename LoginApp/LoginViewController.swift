//
//  ViewController.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 22.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginButtonTapped() {
    }
    
    
    @IBAction func forgotUserNameBtnTapped() {
        showAlert(with: "Подскажу Ваше имя \u{1F60F}", and: "Вас зовут - Eugenya")
    }
    

    @IBAction func forgotPasswordBtnTapped() {
        showAlert(with: "Ох уж эти пароли \u{1F605}", and: "Ваш пароль - 1111")
    }
    

    
}

// MARK: - UIAlertController
extension LoginViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

