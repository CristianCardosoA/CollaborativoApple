//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 24/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    var abeced = ["F", "G", "H", "I"]
    
    
    @IBOutlet weak var stackLabels: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAdd(_ sender: Any) {
        if !abeced.isEmpty {
            let letra = abeced.removeFirst()
            let button = UIButton(type: .system)
            button.setTitle(letra, for: .normal)
            button.backgroundColor = .red
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(onLetraTap(_:)), for: .touchUpInside)
            stackLabels.addArrangedSubview(button)
        }
    }
    
    @objc func onLetraTap(_ sender: UIButton) {
        performSegue(withIdentifier: "segueDinamico", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? ViewControllerDetalle {
            switch segue.identifier {
            case "segueA": vc.titulo = "A"
            case "segueB": vc.titulo = "B"
            case "segueC": vc.titulo = "C"
            case "segueD": vc.titulo = "D"
            case "segueE": vc.titulo = "E"
            case "segueDinamico":
                if let boton = sender as? UIButton {
                                vc.titulo = boton.title(for: .normal)
                            }
            default: break
            }
        }
    }


}

