//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Daniel López Barrón on 24/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    let letras = Array("FGHIJKLMNOPQRSTUVWXYZ")
       var indice = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func agregarBoton(_ sender: UIButton) {
        guard indice < letras.count else {
                    return
                }

                //Crea un nuevo botón
                let nuevoBoton = UIButton(type: .system)

                //Obtiene la letra correspondiente
                let letra = String(letras[indice])

                //Asigna la letra al botón
                nuevoBoton.setTitle(letra, for: .normal)

                //Agrega el botón al Stack View
                stackView.addArrangedSubview(nuevoBoton)

                //Avanza a la siguiente letra
                indice += 1
            }

            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

                if let vc = segue.destination as? ViewControllerDetalle {
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
