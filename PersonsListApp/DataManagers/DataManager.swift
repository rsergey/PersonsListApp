//
//  DataManager.swift
//  PersonsListApp
//
//  Created by Sergey on 27.07.2021.
//

class DataManager {
    static let shared = DataManager()
    
    var firstNames = [
        "Sharon", "Aaron", "Bruce",
        "Ted", "Nicola", "Tim",
        "Carl", "John", "Allan"
    ]
    var secondNames = [
        "Murphy", "Black", "Williams",
        "Dow", "Robertson", "Smith",
        "Isaacson", "Pennyworth", "Jankin"
    ]
    var emails = [
        "aaa@mail.com", "bbb@mail.com", "ccc@mail.com",
        "ddd@mail.com", "eee@mail.com", "fff@mail.com",
        "ggg@mail.com", "hhh@mail.com", "iii@mail.com"
    ]
    var phoneNumbers = [
        "111-11-1", "222-22-2", "333-33-3",
        "444-44-4", "555-55-5", "666-66-6",
        "777-77-7", "888-88-8", "999-99-9"
    ]
    
    private init() {}
}
