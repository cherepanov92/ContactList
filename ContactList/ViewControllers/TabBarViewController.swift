//
//  TabBarViewController.swift
//  ContactList
//
//  Created by User on 10.04.2025.
//

import UIKit

final class TabBarViewController: UITabBarController {

    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers?.forEach { viewController in
            guard let navVC = viewController as? UINavigationController else { return }
            
            
            if let personListVC = navVC.viewControllers.first as? PersonListTableViewController {
                personListVC.persons = persons
            }
            
            if let personSectionVC = navVC.viewControllers.first as? PersonSectionTableViewController {
                personSectionVC.persons = persons
            }
        }
    }
}
