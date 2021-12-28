//
//  TabBarViewController.swift
//  Persons List
//
//  Created by Alina Sokolova on 29.12.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private var person = Person.getInfoAboutPerson()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                let personListVC = navigationVC.topViewController as! PersonsListTableViewController
                personListVC.person = person
            } else if let navigationVC = viewController as? UINavigationController {
                let personListWithSectVC = navigationVC.topViewController as! PersonsListWithSectionTableViewController
                personListWithSectVC.person = person
            }
        }
    }

}
