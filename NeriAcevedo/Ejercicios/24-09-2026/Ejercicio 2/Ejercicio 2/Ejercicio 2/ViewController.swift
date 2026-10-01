//
//  ViewController.swift
//  Ejercicio 2
//

import UIKit

class ViewController: UIViewController {
    var abeced = ["F", "G", "H", "I", "Z"]

    @IBOutlet weak var stackLabels: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onAdd(_ sender: Any) {
        if !abeced.isEmpty {
            let button = UIButton(type: .system)
            button.setTitle(abeced.first ?? "", for: .normal)
            button.backgroundColor = .systemBlue
            button.setTitleColor(.white, for: .normal)
            stackLabels.addArrangedSubview(button)
            abeced.removeFirst()
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewControllerDetalle {
            switch segue.identifier {
            case "segueA": vc.titulo = "A"
            case "segueB": vc.titulo = "B"
            case "segueC": vc.titulo = "C"
            case "segueD": vc.titulo = "D"
            default: break
            }
        }
    }

}




