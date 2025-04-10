//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by User on 09.04.2025.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailAddressLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person.fullName
        phoneNumberLabel.text = person.phone
        emailAddressLabel.text = person.email
    }
}
