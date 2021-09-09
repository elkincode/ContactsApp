//
//  ContactsTableViewController.swift
//  ContactsApp
//
//  Created by Иван Элькин on 08.09.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    private var personsList = Person.getPersonList()
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataManager.dataManager.names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personsList[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let person = personsList[indexPath.row]
        detailsVC.person = person

    }


}
