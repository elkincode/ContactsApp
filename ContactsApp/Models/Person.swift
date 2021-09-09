//
//  Person.swift
//  ContactsApp
//
//  Created by Иван Элькин on 08.09.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        
        var persons: [Person] = []
        
        for personsCounter in 0...DataManager.dataManager.names.count - 1 {
            let person = Person(
                name: DataManager.dataManager.names[personsCounter],
                surname: DataManager.dataManager.surnames[personsCounter],
                email: DataManager.dataManager.emails[personsCounter],
                phone: DataManager.dataManager.phones[personsCounter])
            
            persons.append(person)
        }
        return persons.shuffled()
    }
}

