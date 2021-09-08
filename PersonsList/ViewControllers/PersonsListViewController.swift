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
        preLoadPersonsList()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        personsData.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personCell",
            for: indexPath
        )
        var content = cell.defaultContentConfiguration()
        let person = personsData[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonalDataViewController
        else { return }
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personsData[indexPath.row]
        personVC.personDetails = person
    }
}

extension PersonsListViewController {
    // MARK: tabBarPreLoadData
    private func preLoadPersonsList() {
        guard let tabBarController = self.tabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let navBarVC = $0 as? UINavigationController {
                guard let detailedVC = navBarVC.topViewController
                        as? DetailedListTableViewController else { return }
                detailedVC.personsList = personsData
            }
        }
    }
    
}


