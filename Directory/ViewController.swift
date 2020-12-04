//
//  ViewController.swift
//  Directory
//
//  Created by Kaleb Page on 12/3/20.
//

import UIKit

class ViewController: UITableViewController {
    
    var people: [CellData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Person") else {
            return UITableViewCell()
        }
        let person = people[indexPath.row]
        
        cell.textLabel?.text = person.name
        cell.detailTextLabel?.text = "\(person.age)"
        
        return cell
    }
    
    @IBAction func unwindToPersonVC(_ unwindSegue: UIStoryboardSegue) {
        
        guard unwindSegue.identifier == "unwindToPersonVC", let sourceViewController = unwindSegue.source as? PersonDetailTableViewController, let person = sourceViewController.person else { return }
        
        people.append(person)
        tableView.reloadData()
        // Use data from the view controller which initiated the unwind segue
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = people[indexPath.row] as! DetailViewData
        performSegue(withIdentifier: "EditPerson", sender: person)
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            people.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

}

