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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeName = "Welcome, \(userNameTextField.text ?? "unknown user")"
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
        //Это у меня не работает, не знаю почему. Именно она была дана в ДЗ. 
        //super.touchesBegan(touches, with: event)
    }
    
    @IBAction func loginButtonTapped() {
        //Проверка имени
        guard userNameTextField.text == "Eugenya" else {
            showAlert(with: "Неверно!", and: "Неверное имя или пароль")
            passwordTextField.text = ""
            return
        }
        
        //Проверка пароля
        guard passwordTextField.text == "1111" else {
            showAlert(with: "Неверно!", and: "Неверное имя или пароль")
            passwordTextField.text = ""
            return
        }
    }
    
    @IBAction func forgotUserNameBtnTapped() {
        showAlert(with: "Подскажу Ваше имя \u{1F60F}", and: "Вас зовут - Eugenya")
    }

    @IBAction func forgotPasswordBtnTapped() {
        showAlert(with: "Ох уж эти пароли \u{1F605}", and: "Ваш пароль - 1111")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
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

