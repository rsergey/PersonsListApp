//
//  SolidPersonsListTableViewController.swift
//  PersonsListApp
//
//  Created by Sergey on 27.07.2021.
//

import UIKit

class SolidTableViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personNameCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.firstName + " " + person.secondName
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personInfoVC.person = persons[indexPath.row]
    }

}
