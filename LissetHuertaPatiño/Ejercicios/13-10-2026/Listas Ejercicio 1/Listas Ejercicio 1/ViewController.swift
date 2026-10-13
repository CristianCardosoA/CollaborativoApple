//
//  ViewController.swift
//  Listas Ejercicio 1
//
//  Created by Facultad de Contaduría y Administración on 13/10/26.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(ContactoCelda.self, forCellReuseIdentifier: "contactoCelda")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let celda = tableView.dequeueReusableCell(withIdentifier: "contactoCelda", for: indexPath) as? ContactoCelda {
            let contacto = Contacto.all[indexPath.row]
            celda.configure(con: contacto.nombre, apellido: contacto.apellido)
            
            return celda
        } else {
            return UITableViewCell()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Contacto.all.count
    }
}

