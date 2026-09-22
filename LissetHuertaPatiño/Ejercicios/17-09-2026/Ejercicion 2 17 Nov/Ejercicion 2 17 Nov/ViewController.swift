//
//  ViewController.swift
//  Ejercicion 2 17 Nov
//
//  Created by Facultad de Contaduría y Administración on 22/09/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameDisplayLabel: UILabel!
    
    @IBOutlet weak var nameInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func showNameButton(_ sender: UIButton) {
        
        if let enteredName = nameInputField.text, !enteredName.isEmpty {
            
            let finalMessage = " \(enteredName)"
            
            nameDisplayLabel.text = finalMessage
            
            nameInputField.text = ""
            
            nameInputField.resignFirstResponder()
        } else {
            nameDisplayLabel.text = "Por favor, ingresa un nombre."
        }
    }
}

