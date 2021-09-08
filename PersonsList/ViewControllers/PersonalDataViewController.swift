//
//  PersonalDataViewController.swift
//  PersonsList
//
//  Created by Nechaev Sergey  on 08.09.2021.
//

import UIKit

class PersonalDataViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personDetails.fullName
        phoneLabel.text = String(personDetails.phone)
        emailLabel.text = personDetails.email
    }
}
