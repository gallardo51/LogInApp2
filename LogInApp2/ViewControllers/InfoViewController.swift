//
//  InfoViewController.swift
//  LogInApp2
//
//  Created by Александр Соболев on 12.11.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.name
    }
}
