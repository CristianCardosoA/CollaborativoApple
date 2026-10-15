//
//  ViewControllerDetalle.swift
//  Ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 29/09/26.
//

import Foundation
import UIKit

class ViewControllerDetalle: UIViewController {

    
    @IBOutlet weak var lebelDetalle: UILabel!
    
    var titulo: String? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lebelDetalle.text = titulo
        
    }


}
