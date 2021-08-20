//
//  ViewController.swift
//  HNGStage2Task
//
//  Created by Decagon on 19/08/2021.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var fNameTextField: UITextField!
    
    @IBOutlet weak var lNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedSignUpBtn(_ sender: Any) {
        let firstName = fNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let secondName = lNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let emailName = emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if firstName == "" || secondName == "" || emailName  == "" {
            Alert.showIncompleteFormAlert(on: self)
        } else {
            showDisplayInfo()
        }
    }
    
    func showDisplayInfo() {
        guard let displayViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dsplayVC") as? DisplayViewController else {
            fatalError("Unable to Instantiate Display View Controller")
        }
        displayViewController.firstName = fNameTextField.text
        displayViewController.lastName = lNameTextField.text
        displayViewController.email = emailTextField.text
        navigationController?.pushViewController(displayViewController, animated: true)
    }
}

