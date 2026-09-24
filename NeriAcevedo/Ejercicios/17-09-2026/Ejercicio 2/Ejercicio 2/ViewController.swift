//
//  ViewController.swift
//  Ejercicio 2
//
//  Created by Facultad de Contaduría y Administracíon on 22/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miLabel: UILabel!
    @IBOutlet weak var cajaTexto: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func greetButtonTapped(_ sender: UIButton) {
        nameLabel.text = "Hola \(cajaTexto.text ?? "")"
    }
    
}

