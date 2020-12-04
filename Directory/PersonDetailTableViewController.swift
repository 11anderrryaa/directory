//
//  PersonDetailTableViewController.swift
//  Directory
//
//  Created by Kaleb Page on 12/3/20.
//

import UIKit

class PersonDetailTableViewController: UITableViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
 

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "unwindToPersonVC" else { return }
        
        let name = nameTextField.text ?? ""
        let age = ageTextField.text ?? ""
        let phone = phoneTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        person = Person(name: name, age: age, email: email, phone: phone)
    }
    
    

}
