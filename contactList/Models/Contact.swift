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

class DataStore {
    var firstNames: [String] = []
    var lastNames: [String] = []
    var emails: [String] = []
    var phoneNumbers: [String] = []
}

extension Person {
    static func getContactList() -> [Person] {
        [
            Person(firstName: "Александр", lastName: "Белов", email: "belov@brigada.ru", phoneNumber: "111-111"),
            Person(firstName: "Космос", lastName: "Холмогоров", email: "kholmogorov@brigada.ru", phoneNumber: "222-222"),
            Person(firstName: "Виктор", lastName: "Пчелкин", email: "pchelkin@brigada.ru", phoneNumber: "333-333"),
            Person(firstName: "Валерий", lastName: "Филатов", email: "filatov@brigada.ru", phoneNumber: "444-444"),
            Person(firstName: "Владимир", lastName: "Каверин", email: "kaverin@brigada.rum", phoneNumber: "555-555"),
            Person(firstName: "Максим", lastName: "Карельских", email: "karelskih@brigada.ru", phoneNumber: "666-666")
        ]
    }
}
