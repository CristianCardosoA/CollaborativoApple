//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Facultad Contaduría y Administración on 17/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miTextField: UITextField!
    @IBOutlet weak var miLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        miLabel.text = ""
    }

    @IBAction func botonPresionado(_ sender: UIButton) {
        let nombre = miTextField.text ?? ""
        miLabel.text = "Hola \(nombre)"
        view.endEditing(true)
    }
}
