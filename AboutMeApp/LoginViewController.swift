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
    
    private let user = "Alex"
    private let password = "123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.welcome = "Welcome, \(user)!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            view.endEditing(true)
            super.touchesBegan(touches , with:event)
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(whithTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
            return false
        }
        logInButtonTapped()
        return true
    }
    
    @IBAction func logInButtonTapped() {
    }
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(whithTitle: "Oops!", andMessage: "Your name is Alex")
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(whithTitle: "Oops!", andMessage: "123")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let welcomeVC = segue.source as? WelcomeViewController
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }
    private func showAlert(whithTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

