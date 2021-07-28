//
//  PersonsTabBarController.swift
//  PersonsListApp
//
//  Created by Sergey on 27.07.2021.
//

import UIKit

class PersonsTabBarController: UITabBarController {
    
    private let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let viewControllers = self.viewControllers else {return}
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let solidTableVC = navigationVC.topViewController as? SolidTableViewController {
                solidTableVC.persons = persons
            } else if let segmentedTableVC = navigationVC.topViewController as? SegmentedTableViewController {
                segmentedTableVC.persons = persons
            }
        }
    }

}
