//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Nechaev Sergey  on 08.09.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    let personsData = DataManager.shared.sorted()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 40

    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personsData[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
}



