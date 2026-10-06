//
//  ViewControllerDetails.swift
//  Ejercicio2 24 sept
//
//  Created by Facultad de Contaduría y Administración on 29/09/26.
//

import UIKit

class ViewControllerDetails: UIViewController {

    
    @IBOutlet weak var LabelDetails: UILabel!
    
    var titulo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let textoParaMostrar = titulo {
            LabelDetails?.text = textoParaMostrar
        }
    }
}
