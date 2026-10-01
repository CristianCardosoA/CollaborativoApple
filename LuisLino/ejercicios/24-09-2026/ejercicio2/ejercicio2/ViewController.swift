//
//  ViewController.swift
//  ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 29/09/26.
//

import UIKit

class ViewController: UIViewController {

    // Outlet conectado al UIStackView donde están tus botones de letras
    @IBOutlet weak var stackView: UIStackView!
    
    // Arreglo completo del abecedario
    let abecedario = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
    // Empezamos en 5 ('F') porque A, B, C, D y E ya están fijas en el Storyboard
    var indiceActual = 5
    var letraSeleccionada: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // @IBAction del botón "Agregar Letra" (ubicado fuera del Stack)
    @IBAction func agregarLetraPresionado(_ sender: UIButton) {
        // Verificar que no hayamos superado la 'Z'
        guard indiceActual < abecedario.count else {
            sender.isEnabled = false // Deshabilita el botón al llegar al final
            return
        }
        
        let nuevaLetra = String(abecedario[indiceActual])
        
        // 1. Crear el nuevo botón por código
        let nuevoBoton = UIButton(type: .system)
        nuevoBoton.setTitle(nuevaLetra, for: .normal)
        nuevoBoton.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        
        // 2. Asignarle el evento al hacer tap
        nuevoBoton.addTarget(self, action: #selector(letraPresionada(_:)), for: .touchUpInside)
        
        // 3. Añadirlo al Stack View
        stackView.addArrangedSubview(nuevoBoton)
        
        // 4. Incrementar índice para la siguiente letra
        indiceActual += 1
    }
    
    // Función que se ejecuta al presionar cualquier botón creado por código
    @objc func letraPresionada(_ sender: UIButton) {
        letraSeleccionada = sender.currentTitle
        performSegue(withIdentifier: "segueDetalle", sender: self)
    }

    // Enviar el valor de la letra a ViewControllerDetalle
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewControllerDetalle {
            switch segue.identifier {
            case "segueA": vc.titulo = "A"
            case "segueB": vc.titulo = "B"
            case "segueC": vc.titulo = "C"
            case "segueD": vc.titulo = "D"
            case "segueE": vc.titulo = "E"
            case "segueDetalle": vc.titulo = letraSeleccionada // Para F hasta la Z
            default: break
            }
        }
    }
}
