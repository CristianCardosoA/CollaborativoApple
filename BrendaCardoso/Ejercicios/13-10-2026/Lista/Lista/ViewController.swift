//
//  ViewController.swift
//  Lista
//
//  Created by MacBook 6 on 13/10/26.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
    
        tableView.register(ContactoCelda.self, forCellReuseIdentifier: "ContactoCelda")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let celda = tableView.dequeueReusableCell(withIdentifier: "ContactoCelda", for: indexPath) as? ContactoCelda {
            let contacto = Contacto.all[indexPath.row]
            celda.configure(con: contacto)
            return celda
        } else {
            return UITableViewCell()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Contacto.all.count
    }
}
