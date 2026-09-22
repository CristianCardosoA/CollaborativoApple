//
//  ViewController.swift
//  Ejercicio2
//
//  Created by MacBook 6 on 17/09/26.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    
    
    @IBAction func greetButton(_ sender: Any) {
        let name = nameText.text ?? ""
        text.text = "Hello, \(name)"
    }
}

