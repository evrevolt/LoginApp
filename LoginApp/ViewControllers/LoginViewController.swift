//
//  ViewController.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 22.10.2022.
//

import UIKit

final class LoginViewController: UIViewController {

    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = someUser.login
    private let password = someUser.password
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Передача данных по seque
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.welcomeName = user
        
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.view.backgroundColor = .yellow
                welcomeVC.welcomeName = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let firstInNabigationVC = navigationVC.topViewController else { return }
                firstInNabigationVC.view.backgroundColor = .red
            }
        }
        
        
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func loginButtonTapped() {
        //Проверка имени и пароля
        guard userNameTextField.text == user,
        passwordTextField.text == password else {
            showAlert(with: "Неверно!", and: "Неверное имя или пароль")
            passwordTextField.text = ""
            return
        }
    }
    
    @IBAction func forgotUserNameBtnTapped() {
        showAlert(with: "Подскажу Ваше имя \u{1F60F}", and: "Вас зовут - \(user)")
    }

    @IBAction func forgotPasswordBtnTapped() {
        showAlert(with: "Ох уж эти пароли \u{1F605}", and: "Ваш пароль - \(password)")
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

