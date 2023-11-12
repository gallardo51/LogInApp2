//
//  LogInViewController.swift
//  LogInApp2
//
//  Created by Александр Соболев on 06.11.2023.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet weak var logInTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    //MARK: - Private properties
    private let user = User.getUserData()
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let infoVC = navigationVC.topViewController as! InfoViewController
                infoVC.user = user
            }
        }
    }
        
        // MARK: - IB Actions
        
        @IBAction func logInButtonPressed() {
            if logInTF.text != user.login || passwordTF.text != user.password {
                showAlert(
                    title: "Invalid login or password",
                    message: "Please, enter correct login and password",
                    textField: passwordTF
                )
            }
        }
        
        @IBAction func forgotRegisterData(_ sender: UIButton) {
            sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user.login) 😏")
            : showAlert(title: "Oops!", message: "Your password is \(user.password) 😎")
        }
        
        @IBAction func unwindSegue(segue: UIStoryboardSegue) {
            logInTF.text = ""
            passwordTF.text = ""
        }
    }
    
    
    // MARK: - Alert Controller
    extension LogInViewController {
        private func showAlert(title: String, message: String, textField: UITextField? = nil) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                textField?.text = ""
            }
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }
    
    // MARK: - Keyboard Settings
    extension LogInViewController: UITextFieldDelegate {
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == logInTF {
                passwordTF.becomeFirstResponder()
            } else {
                logInButtonPressed()
                performSegue(withIdentifier: "showWelcomeVC", sender: nil)
            }
            return true
        }
    }




