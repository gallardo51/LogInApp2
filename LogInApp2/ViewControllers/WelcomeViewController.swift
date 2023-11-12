//
//  WelcomeViewController.swift
//  LogInApp2
//
//  Created by Александр Соболев on 06.11.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var userLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userLabel.text = "\(user.person.fullName)"
    }
}
