//
//  ContactDetailTableViewController.swift
//  contactList
//
//  Created by Anton Stogov on 23/03/2023.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
        title = contact.fullName
    }
    
    
}
