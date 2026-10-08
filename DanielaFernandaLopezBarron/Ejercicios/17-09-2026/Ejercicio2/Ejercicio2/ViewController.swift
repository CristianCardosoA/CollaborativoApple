//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Daniel López Barrón on 22/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func greetButtonTapped(_ sender: Any) {
        nameLabel.text = nameTextField.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

