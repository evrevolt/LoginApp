//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 24.10.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var imageUser: UIImageView!
    
    @IBOutlet var nameUser: UILabel!
    @IBOutlet var surnameUser: UILabel!
    @IBOutlet var companyUser: UILabel!
    @IBOutlet var jobUser: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageUser.image = UIImage(named: user.person.photo)
        nameUser.text = user.person.name
        surnameUser.text = user.person.surname
        companyUser.text = user.person.job.title
        jobUser.text = user.person.job.jobTitle
    }
    
    override func viewWillLayoutSubviews() {
        imageUser.layer.cornerRadius = imageUser.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let textVC = segue.destination as? UserBioViewController
        else { return }
        textVC.user = user
    }
}
