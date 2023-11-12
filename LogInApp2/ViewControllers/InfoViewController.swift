//
//  InfoViewController.swift
//  LogInApp2
//
//  Created by Александр Соболев on 12.11.2023.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var bornDateLabel: UILabel!
    @IBOutlet weak var zodiacSingLabel: UILabel!
    @IBOutlet weak var cityFromLabel: UILabel!
    @IBOutlet weak var cellPhoneLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        
        userImageView.image = UIImage(named: user.person.userImage)
        bornDateLabel.text = "\(user.person.bornDate)"
        zodiacSingLabel.text = "\(user.person.zodiacSing)"
        cityFromLabel.text = "\(user.person.cityFrom)"
        cellPhoneLabel.text = "\(user.person.cellPhone)"
        hobbyLabel.text = "\(user.person.hobby)"
    }
}
