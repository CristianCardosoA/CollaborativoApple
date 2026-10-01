//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Dana Gisel Reyes López on 22/09/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cajaTexto: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func greetButtonTap(_ sender: Any) {
        
        nameLabel.text = "Hola \(cajaTexto.text ?? "")"
    }
}

