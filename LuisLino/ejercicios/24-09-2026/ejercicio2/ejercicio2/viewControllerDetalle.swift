//
//  viewControllerDetalle.swift
//  ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 29/09/26.
//

import UIKit

class ViewControllerDetalle: UIViewController {

    // Outlet conectado al UILabel en el Storyboard
    @IBOutlet weak var labelDetalle: UILabel!

    // Variable que recibe la letra desde ViewController
    var titulo: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Asignar la letra recibida al texto de la etiqueta
        labelDetalle.text = titulo
    }
}
