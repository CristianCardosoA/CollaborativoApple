//
//  contacto.swift
//  ejercicio1
//
//  Created by Facultad de Contaduría y Administración on 13/10/26.
//

import Foundation

struct Contacto: Identifiable {
    var id: UUID = .init()
    var nombre: String
    var apellido: String
}

extension Contacto {
    static var all: [Contacto] {
        [
            Contacto(nombre: "Luis", apellido: "Lino"),
            Contacto(nombre: "Luis", apellido: "Lino"),
            Contacto(nombre: "Luis", apellido: "Lino"),
            Contacto(nombre: "Luis", apellido: "Lino"),
            Contacto(nombre: "Luis", apellido: "Lino")
        ]
    }
    
}
