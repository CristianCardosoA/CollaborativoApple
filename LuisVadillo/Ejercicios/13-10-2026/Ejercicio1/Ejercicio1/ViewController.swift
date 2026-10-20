//
//  ViewController.swift
//  Ejercicio1
//
//  Created by Facultad de Contaduría y Administración on 13/10/26.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.backgroundColor = .systemBackground
        
        tableView.register(ContactoCelda.self, forCellReuseIdentifier: "contactoCelda")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let celda = tableView.dequeueReusableCell(withIdentifier: "contactoCelda") as? ContactoCelda {
            let contacto = Contacto.all[indexPath.row]
            celda.configure(con: contacto)
            return celda
            
        }else {
            return UITableViewCell()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Contacto.all.count
    }
    

}

