//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 28.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = User.getUser()
    private let person = Person.getPerson()

    override func viewDidLoad() {
        userNameTextField.text = user.userName
        passwordTextField.text = user.password
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach{ viewcontroller in
            if let welcomeVC = viewcontroller as? WelcomeViewController {
                welcomeVC.welcome = "Welcome, \(user.userName)!"
                welcomeVC.myName = "My name is \(person.name)!"
            } else if let navigationVC = viewcontroller as? UINavigationController {
                let personVC = navigationVC.topViewController as? PersonViewController
                personVC?.name = "Name: \(person.name)"
                personVC?.surename = "Surename: \(person.surName)"
                personVC?.age = person.age
                personVC?.profession = "Profession: \(person.profession)"
            } 
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func forgotUserData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.userName)")
        : showAlert(title: "Oops!", message: "\(user.password)") {
            self.passwordTextField.text = ""
        }
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    private func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

