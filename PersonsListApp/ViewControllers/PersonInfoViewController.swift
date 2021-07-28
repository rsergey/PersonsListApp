//
//  ViewController.swift
//  PersonsListApp
//
//  Created by Sergey on 27.07.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tabBarController?.tabBar.isHidden = true
        navigationItem.title = person.firstName + " " + person.secondName
        phoneLabel.text = "phone: \(person.phoneNumber)"
        emailLabel.text = "e-mail: \(person.email)"
    }

}

