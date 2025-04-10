//
//  ViewController.swift
//  ContactList
//
//  Created by User on 06.04.2025.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    let persons = Person.getPersons()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let personDetailVC = segue.destination as? PersonDetailsViewController
        
        personDetailVC?.person = persons[indexPath.row]
    }
}

extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
