//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 22/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cajaTexto: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func greetButtonTapped(_ sender: Any) {
        nameLabel.text = "Hola \(cajaTexto.text ?? "")"
    }
}

