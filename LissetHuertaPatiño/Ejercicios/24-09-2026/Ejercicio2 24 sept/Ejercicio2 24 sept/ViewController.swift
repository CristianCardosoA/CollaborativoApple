//
//  ViewController.swift
//  Ejercicio2 24 sept
//
//  Created by Facultad de Contaduría y Administración on 24/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    var abeced: [String] = ["F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var letraSeleccionada: String = ""
    
    override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    
    
    
    @IBAction func botonAgregar(_ sender: Any) {
        let letraActual = abeced.first ?? ""
                
        let button = UIButton(type: .system)
        button.setTitle(letraActual, for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
                
        button.addTarget(self, action: #selector(botonPresionado(_:)), for: .touchUpInside)
                
        stackView.addArrangedSubview(button)
                
        abeced.removeFirst()
    }
    
    @objc func botonPresionado(_ sender: UIButton) {
        letraSeleccionada = sender.currentTitle ?? ""
            
        performSegue(withIdentifier: "SegueA", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewControllerDetails {
           
            switch segue.identifier {
            case "SegueA":
                vc.titulo = "A"
            case "SegueB":
                vc.titulo = "B"
            case "SegueC":
                vc.titulo = "C"
            case "SegueD":
                vc.titulo = "D"
            case "SegueE":
                vc.titulo = "E"
            case "irADetalle":
                vc.titulo = letraSeleccionada
            default:
                break
            }
        }
    }
}



