//
//  ViewController.swift
//  contactList
//
//  Created by Anton Stogov on 23/03/2023.
//

import UIKit

class ViewController: UITableViewController{
    
    var contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController {
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

}

