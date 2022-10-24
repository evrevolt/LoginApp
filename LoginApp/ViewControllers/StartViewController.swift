//
//  StartViewController.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 24.10.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.view.backgroundColor = .cyan
            } else if let navigationVC = viewController as? UINavigationController {
                
                navigationVC.viewControllers.forEach{ viewController in
                    if let infoVC = viewController as? InfoViewController {
                        infoVC.view.backgroundColor = .red
                    } else if let hobbiVC = viewController as? HobbiViewController {
                        hobbiVC.view.backgroundColor = .green
                    } else if let beforeVC = viewController as? BeforeViewController {
                        beforeVC.view.backgroundColor = .blue
                    }
                }
                
                
                
                guard let firstInNabigationVC = navigationVC.topViewController else { return }
                firstInNabigationVC.view.backgroundColor = .yellow
            }
        }
        
    }
    
    
    
}
