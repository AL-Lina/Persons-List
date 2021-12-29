//
//  TabBarViewController.swift
//  Persons List
//
//  Created by Alina Sokolova on 29.12.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private var person = Person.getInfoAboutPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendInfo()

    }

    private func sendInfo() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                let personListVC = navigationVC.topViewController as? PersonsListTableViewController
                personListVC?.person = person
                let personListWithSectVC = navigationVC.topViewController as? PersonsListWithSectionTableViewController
                personListWithSectVC?.person = person
            }
        }
    }

}
