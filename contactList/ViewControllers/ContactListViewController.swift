//
//  ViewController.swift
//  contactList
//
//  Created by Anton Stogov on 23/03/2023.
//

import UIKit

class ContactListViewController: UITableViewController{
    
    var contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showContacts", for: indexPath)
        
        let randomContact = contactList.randomElement()
        
        var content = cell.defaultContentConfiguration()
        content.text = randomContact?.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailVC = segue.destination as? ContactDetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let selectedContact = contactList[indexPath.row]
        contactDetailVC.contact = selectedContact
        contactDetailVC.title = selectedContact.fullName
    }
}