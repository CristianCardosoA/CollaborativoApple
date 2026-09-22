//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Dana Gisel Reyes López on 22/09/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var CajaTexto: UITextField!
    @IBOutlet weak var NameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func greetButtonTap(_ sender: Any) {
        
        NameLabel.text = "Hola \(CajaTexto.text ?? "")"
    }
}

