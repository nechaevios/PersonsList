//
//  PersonModel.swift
//  PersonsList
//
//  Created by Nechaev Sergey  on 08.09.2021.
//

struct Person: Hashable, Comparable {

    
    let firstName: String
    let lastName: String
    let phone: Int
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        lhs.firstName < rhs.firstName
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.phone == rhs.phone && lhs.email == rhs.email
    }
}
