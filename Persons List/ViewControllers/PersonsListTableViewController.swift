//
//  PersonsListTableViewController.swift
//  Persons List
//
//  Created by Alina Sokolova on 29.12.21.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var person: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameAndSurname", for: indexPath)

        let nameAndS = person[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = nameAndS.name + " " + nameAndS.surname
        cell.contentConfiguration = content
        return cell
    }
   

   

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personsListDetailsVC = segue.destination as? PhoneAndMailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return}
        let phoneAndEmail = person[indexPath.row]
        personsListDetailsVC.person = phoneAndEmail
    }
  

}
