//
//  DetailsViewController.swift
//  ContactsApp
//
//  Created by Иван Элькин on 09.09.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
    

}
