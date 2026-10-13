//
//  ViewControllerDetalle.swift
//  
//
//  Created by Dana Gisel Reyes López on 29/09/26.
//

import Foundation
import UIKit

class ViewControllerDetalles: UIViewController {

    @IBOutlet weak var labelDetalle: UILabel!

    var titulo: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let letra = titulo {
            labelDetalle.text = letra
        }
    }
}
