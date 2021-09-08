//
//  PersonModel.swift
//  PersonsList
//
//  Created by Nechaev Sergey  on 08.09.2021.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: Int
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
