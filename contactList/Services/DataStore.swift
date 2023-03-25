//
//  DataStore.swift
//  contactList
//
//  Created by Anton Stogov on 25/03/2023.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let firstNames = ["Александр", "Космос", "Космос",
                      "Валерий", "Владимир", "Максим"
    ]
    let lastNames = ["Белов", "Холмогоров", "Пчелкин",
                     "Филатов", "Каверин", "Карельских"
    ]
    let emails = ["1@brigada.ru", "2@brigada.ru", "3@brigada.ru",
                  "4@brigada.ru", "5@brigada.ru", "6@brigada.ru"
    ]
    let phoneNumbers = ["111-111", "222-222", "333-333",
                        "444-444", "555-555", "666-666"
    ]
    
    private init() {}
}
