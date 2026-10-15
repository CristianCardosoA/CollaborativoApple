//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 24/09/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var stackLabels: UIStackView!
    var letra: UnicodeScalar = "F"
    
    @IBAction func onAdd(_ sender: UIButton) {
        if letra > "Z"{return}
        let boton = UIButton(type:.system)
        boton.setTitle(String(letra), for: .normal)
        boton.addTarget(self, action: #selector(letraTocada), for: .touchUpInside)
        stackLabels.addArrangedSubview(boton)
        letra = UnicodeScalar(letra.value + 1)!
    }
    
    @IBAction func letraTocada(_ sender: UIButton) {
        print("tocaste", sender.currentTitle ?? "")
        performSegue(withIdentifier: "segueDetalle", sender:sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare", segue.identifier ?? "")
        if let vc = segue.destination as? ViewControllerDetalle,
            let boton = sender as? UIButton{
                vc.titulo = boton.currentTitle
        }
    }
}
