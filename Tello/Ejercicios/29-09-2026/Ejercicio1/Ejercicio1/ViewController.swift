//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Dana Gisel Reyes López on 24/09/26.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var stackLabels: UIStackView!
    
   
    var abeced = ["F", "G", "H", "I", "J", "K", "L", "M", "N", "Ñ", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  
    @IBAction func onAdd(_ sender: Any) {
        if !abeced.isEmpty {
          
            let letra = abeced.removeFirst()
            
        
            let button = UIButton(type: .system)
            button.setTitle(letra, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            
            
            button.addTarget(self, action: #selector(botondinamicoPresionado(_:)), for: .touchUpInside)
            
           
            stackLabels.addArrangedSubview(button)
        }
    }
    
  
    @objc func botondinamicoPresionado(_ sender: UIButton) {
        if let letra = sender.currentTitle {
            performSegue(withIdentifier: "segueDetalle", sender: letra)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewControllerDetalles {
            if let letra = sender as? String {
              
                vc.titulo = letra
            } else {
            
                switch segue.identifier {
                case "segueA": vc.titulo = "A"
                case "segueB": vc.titulo = "B"
                case "segueC": vc.titulo = "C"
                case "segueD": vc.titulo = "D"
                case "segueE": vc.titulo = "E"
                default: break
                }
            }
        }
    }
}
