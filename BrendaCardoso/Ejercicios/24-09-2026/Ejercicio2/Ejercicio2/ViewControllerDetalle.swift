//
//  ViewControllerDetalle.swift
//  Ejercicio2
//
//  Created by MacBook 6 on 29/09/26.
//

import Foundation
import UIKit

class ViewControllerDetalle: UIViewController {
    
    @IBOutlet weak var labelDetalle: UILabel!
    
    var titulo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelDetalle.text = titulo
    }
}
