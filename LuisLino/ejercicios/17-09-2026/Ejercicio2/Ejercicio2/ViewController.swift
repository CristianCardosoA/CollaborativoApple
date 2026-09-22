//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 17/09/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ingreseNombre: UITextField!
    @IBOutlet weak var hola: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Greet(_ sender: UIButton){
        hola.text="Hola " + ingreseNombre.text!
    }


}

