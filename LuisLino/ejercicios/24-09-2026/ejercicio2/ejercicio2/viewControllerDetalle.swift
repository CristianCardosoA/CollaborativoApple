//
//  viewControllerDetalle.swift
//  ejercicio2
//
//  Created by Facultad de Contaduría y Administración on 29/09/26.
//


import Foundation
import UIKit

class ViewControllerDetalle: UIViewController {
    
    @IBOutlet weak var labelDetalle: UILabel!
    
    var titulo: String?
        
    override func viewDidLoad() {
        super.viewDidLoad()

        labelDetalle.text = titulo
    }
}
