//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 17/09/26.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var labelText: UILabel!
    
    
    @IBOutlet weak var nametext: UITextField!
    
    @IBAction func greetButtonCap(_ sender: Any) {
        let nombre = nametext.text!
        
        if nombre.isEmpty {
            labelText.text = "Por favor, ingrese su nombre"
        } else {
            labelText.text = "¡Hola, \(nombre.capitalized)!"
        }
    }
}

