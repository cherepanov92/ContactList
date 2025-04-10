//
//  Person.swift
//  ContactList
//
//  Created by User on 07.04.2025.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var personList: [Person] = []
        let personModel = DataStore()
        
        for _ in 0..<10 {
            personList.append(personModel.createRandomPerson())
        }
        
        return personList
    }
}
