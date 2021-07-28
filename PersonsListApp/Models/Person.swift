//
//  Person.swift
//  PersonsListApp
//
//  Created by Sergey on 27.07.2021.
//

import Foundation

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        var firstNames = DataManager.shared.firstNames
        var secondNames = DataManager.shared.secondNames
        var emails = DataManager.shared.emails
        var phoneNumbers = DataManager.shared.phoneNumbers
        while !firstNames.isEmpty {
            persons.append(Person(firstName: firstNames.randomElement() ?? "",
                                  secondName: secondNames.randomElement() ?? "",
                                  email: emails.randomElement() ?? "",
                                  phoneNumber: phoneNumbers.randomElement() ?? ""))
            firstNames.removeAll { $0 == persons.last?.firstName }
            secondNames.removeAll { $0 == persons.last?.secondName }
            emails.removeAll { $0 == persons.last?.email }
            phoneNumbers.removeAll { $0 == persons.last?.phoneNumber }
        }
        return persons
    }
}
