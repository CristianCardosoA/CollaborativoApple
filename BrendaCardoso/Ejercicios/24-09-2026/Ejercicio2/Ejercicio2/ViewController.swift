//
//  ViewController.swift
//  Ejercicio2
//
//  Created by MacBook 6 on 24/09/26.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var atackLabels: UIStackView!
    
    var abeced: [String] = ["F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onAdd(_ sender: Any) {
        if !abeced.isEmpty{
            let button = UIButton(type: .system)
            
            button.setTitle(abeced.first ?? "", for: .normal)
            button.backgroundColor = .systemBlue
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(onLetraTap(_:)), for: .touchUpInside)
            atackLabels.addArrangedSubview(button)
            abeced.removeFirst()
            
        }
    }
    @objc func onLetraTap(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "detalle") as? ViewControllerDetalle else { return }
        vc.titulo = sender.currentTitle
        show(vc, sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let vc = segue.destination as? ViewControllerDetalle{
            switch segue.identifier{
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
