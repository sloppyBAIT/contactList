//
//  ViewController.swift
//  contactList
//
//  Created by Anton Stogov on 23/03/2023.
//

import UIKit

class ContactListViewController: UITableViewController{
    
    var contactList = Person.getContactList()
    
}

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showContacts", for: indexPath)
        
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactDetailVC = segue.destination as? ContactDetailViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            
            let selectedContact = contactList[indexPath.row]
            contactDetailVC.contact = selectedContact
            contactDetailVC.title = selectedContact.fullName
        }
    }
}
