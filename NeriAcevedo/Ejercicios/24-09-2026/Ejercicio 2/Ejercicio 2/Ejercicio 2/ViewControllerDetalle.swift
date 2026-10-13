//
//  ViewControllerDetalle.swift
//  Ejercicio 2
//
import UIKit

class ViewControllerDetalle: UIViewController {

    @IBOutlet weak var labelDetalle: UILabel!

    var titulo: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        labelDetalle.text = titulo
    }

}
