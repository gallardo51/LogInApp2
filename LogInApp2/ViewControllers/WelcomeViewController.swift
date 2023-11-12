//
//  WelcomeViewController.swift
//  LogInApp2
//
//  Created by Александр Соболев on 06.11.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var userLabel: UILabel!
    
    private let primaryColor = UIColor(
        red: 210/255, 
        green: 190/255,
        blue: 180/255,
        alpha: 1
        )
    private let secondaryColor = UIColor(
        red: 107/255, 
        green: 100/255,
        blue: 240/255,
        alpha: 1
    )
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        userLabel.text = "\(user.person.fullName)"
    }
}
