//
//  ContactsSectionViewController.swift
//  ContactsApp
//
//  Created by Иван Элькин on 08.09.2021.
//

import UIKit

struct PersonSection {
    var headlines: String
}

class ContactsSectionViewController: UITableViewController {

    private var personsList = Person.getPersonList()
    
    // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            return personsList.count
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            let person = personsList[section]
            return person.fullName
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 2
        }
        
        // Здесь у меня получилось вывести только email-адреса
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "sectionTrackID", for: indexPath)
            var email = cell.defaultContentConfiguration()
            var phone = cell.defaultContentConfiguration()
            let person = personsList[indexPath.row]
            
            email.text = person.email
            phone.text = person.phone
            
            cell.contentConfiguration = email

            return cell
        }
    }
