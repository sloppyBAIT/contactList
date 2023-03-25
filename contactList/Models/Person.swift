//
//  Contacts.swift
//  contactList
//
//  Created by Anton Stogov on 23/03/2023.
//


struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let firstName = DataStore.shared.firstNames.shuffled()
        let lastName = DataStore.shared.lastNames.shuffled()
        let email = DataStore.shared.emails.shuffled()
        let phoneNumber = DataStore.shared.phoneNumbers.shuffled()
        
        for index in 0..<firstName.count {
            let person = Person(firstName: firstName[index],
                                lastName: lastName[index],
                                email: email[index],
                                phoneNumber: phoneNumber[index])
            persons.append(person)
        }
        
        return persons
    }
}
