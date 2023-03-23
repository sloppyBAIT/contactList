//
//  Contacts.swift
//  contactList
//
//  Created by Anton Stogov on 23/03/2023.
//

struct Person {
    let firstName: String
    let secondName: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getContactList() -> [Person] {
        [
            Person(firstName: "Белов", secondName: "Александр (Саша Белый)"),
            Person(firstName: "Холмогоров", secondName: "Космос (Кос)"),
            Person(firstName: "Пчелкин", secondName: "Виктор (Пчёла)"),
            Person(firstName: "Филатов", secondName: "Валерий (Фил)"),
            Person(firstName: "Каверин", secondName: "Владимир (Володя-Опер)"),
            Person(firstName: "Карельских", secondName: "Максим (Макс)")
        ]
    }
    
    
}
