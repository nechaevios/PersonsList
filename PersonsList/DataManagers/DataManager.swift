//
//  DataManager.swift
//  PersonsList
//
//  Created by Nechaev Sergey  on 08.09.2021.
//

class DataManager {
    static let shared = DataManager().generatePersons(amount: 10)
    

    private var phone = 0
    private let firstNames = ["Kaira", "Fern", "Rita", "Roxanne", "Melanie", "Frank", "Ronan", "Tomas", "Carlos", "Lukas"]
    private let lastNames = ["Tate", "Wang", "Wheeler", "Holloway", "Wong", "Salazar", "Osborne", "Lane", "Silva", "Carter"]
    private let emails = ["kkk@mail.ru", "aaaa@mail.ru", "bbbb@mail.ru", "ccc@mail.ru", "ddddd1@mail.ru", "ee12@mail.ru", "ffff42@mail.ru", "ggg1@mail.ru", "hhh5@mail.ru", "iiii112@mail.ru"]
    
    func generatePersons(amount: Int) -> Set<Person> {
        var persons: Set<Person> = []
        
        while persons.count < amount {
            let personName = firstNames[Int.random(in: 0...firstNames.count-1)]
            let personSurename = lastNames[Int.random(in: 0...lastNames.count-1)]
            let personPhone = Int.random(in: 10000001...99999999)
            let personEmail = emails[Int.random(in: 0...emails.count-1)]
            persons.insert(Person(
                            firstName: personName,
                            lastName: personSurename,
                            phone: personPhone,
                            email: personEmail
            ))
        }
        return persons
    }
    
    
    private init() {
        
    }
}

