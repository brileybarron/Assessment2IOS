//
//  ViewController.swift
//  Assessment2IOS
//
//  Created by Briley Barron on 10/25/18.
//  Copyright © 2018 Briley Barron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        let firstName = firstNameTextField.text!
        let lastName = lastNameTextField.text!
        let email = emailTextField.text!
        
        if firstName == "" {
            let errorAlert = UIAlertController(title: "Error", message: "Please fill all fields", preferredStyle: UIAlertController.Style.alert)
            
            let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {UIAlertAction in})
            errorAlert.addAction(dismissAction)
            self.present(errorAlert, animated: true, completion: nil)
            return
            
        } else if lastName == "" {
            let errorAlert = UIAlertController(title: "Error", message: "Please fill all fields", preferredStyle: UIAlertController.Style.alert)
            
            let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {UIAlertAction in})
            errorAlert.addAction(dismissAction)
            self.present(errorAlert, animated: true, completion: nil)
            return
            
        } else if !email.contains("@") {
            let errorAlert = UIAlertController(title: "Error", message: "Please enter a correct email", preferredStyle: UIAlertController.Style.alert)
            
            let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {UIAlertAction in})
            errorAlert.addAction(dismissAction)
            self.present(errorAlert, animated: true, completion: nil)
            return
            
        } else {
            var person = Person(firstName: firstName, lastName: lastName, email: email)
            let creationAlert = UIAlertController(title: "Greetings", message: "Hello \(person.firstName) \(person.lastName)! Your email address is \(person.email)", preferredStyle: UIAlertController.Style.alert)
            
            let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {UIAlertAction in})
            creationAlert.addAction(dismissAction)
            self.present(creationAlert, animated: true, completion: nil)
            
            firstNameTextField.text?.removeAll()
            lastNameTextField.text?.removeAll()
            emailTextField.text?.removeAll()
            return
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

