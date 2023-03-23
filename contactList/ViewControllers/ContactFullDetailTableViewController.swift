//
//  ContactFullDetailTableViewController.swift
//  contactList
//
//  Created by Anton Stogov on 23/03/2023.
//

import UIKit

class ContactFullDetailTableViewController: UITableViewController {

    var contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "contactCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contactList[indexPath.section]
        
        cell.textLabel?.text = (indexPath.row == 0) ? contact.email : contact.phoneNumber
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "contactCell", let contactDetailVC = segue.destination as? ContactDetailViewController, let contact = sender as? Person {
            contactDetailVC.contact = contact
            contactDetailVC.title = contact.fullName
        }
    }
}

