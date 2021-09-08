//
//  DataManager.swift
//  PersonsList
//
//  Created by Nechaev Sergey  on 08.09.2021.
//

class DataManager {
    static let shared = DataManager().generatePersons()
    
    private var phones = [
        10022222,
        11122222,
        22222222,
        33322222,
        44422222,
        55522222,
        66622222,
        77722222,
        88822222,
        99922222
    ]
    private let firstNames = [
        "Kaira",
        "Fern",
        "Rita",
        "Roxanne",
        "Melanie",
        "Frank",
        "Ronan",
        "Tomas",
        "Carlos",
        "Lukas"
    ]
    private let lastNames = [
        "Tate",
        "Wang",
        "Wheeler",
        "Holloway",
        "Wong",
        "Salazar",
        "Osborne",
        "Lane",
        "Silva",
        "Carter"
    ]
    private let emails = [
        "111@mail.ru",
        "222@mail.ru",
        "333@mail.ru",
        "444@mail.ru",
        "555@mail.ru",
        "666@mail.ru",
        "777@mail.ru",
        "888@mail.ru",
        "999@mail.ru",
        "101@mail.ru"
    ]
    
    private func generatePersons() -> [Person] {
        var persons: [Person] = []
        let personName = firstNames.shuffled()
        let personSurename = lastNames.shuffled()
        let personPhone = phones.shuffled()
        let personEmail = emails.shuffled()
        
        for i in 0..<personName.count {
            persons.append(Person(
                firstName: personName[i],
                lastName: personSurename[i],
                phone: personPhone[i],
                email: personEmail[i]
            ))
        }
        
        return persons
    }
    
    private init() {}
}

