//
//  ViewController.swift
//  ListasEjercicio1
//
//  Created by Facultad Contaduría y Administración on 13/10/26.
//

import UIKit

class ViewController: UITableViewController {
    
    let contactos = Contacto.all

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        tableView.register(ContactoCelda.self, forCellReuseIdentifier: "contactoCelda")
        
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return contactos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let celda = tableView.dequeueReusableCell(withIdentifier: "contactoCelda", for: indexPath) as? ContactoCelda else {
            return UITableViewCell()
        }
        
        
        let contacto = contactos[indexPath.row]
        celda.configure(nombre: contacto.nombre, apellido: contacto.apellido)
        
        return celda
    }
}

