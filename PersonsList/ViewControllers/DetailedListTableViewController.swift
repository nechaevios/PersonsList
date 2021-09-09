//
//  DetailedPersonsListTableViewController.swift
//  PersonsList
//
//  Created by Nechaev Sergey  on 08.09.2021.
//

import UIKit

class DetailedListTableViewController: UITableViewController {
    
    var personsList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 40

    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        1
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personFullCell",
            for: indexPath
        )
        var content = cell.defaultContentConfiguration()
        let person = personsList[indexPath.section]
        
        content.text = String(person.phone)
        content.secondaryText = person.email
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(
        _ tableView: UITableView,
        willDisplayHeaderView view: UIView,
        forSection section: Int
    ) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        header.textLabel?.textColor = UIColor.black
        header.contentView.backgroundColor = UIColor(white: 0.8, alpha: 0.5)
    }
    
    override func tableView(
        _ tableView: UITableView,
        titleForHeaderInSection section: Int
    ) -> String? {
        let person = personsList[section]
        let header = person.fullName
        
        return header
    }
    
}
