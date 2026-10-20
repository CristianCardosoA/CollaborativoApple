//
//  contacto.swift
//  Ejercicio1
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
            Contacto(nombre: "tona", apellido: "tona"),
            Contacto(nombre: "toto", apellido: "toto"),
            Contacto(nombre: "brenda", apellido: "brenda"),
            Contacto(nombre: "neri", apellido: "neri"),
            Contacto(nombre: "tello", apellido: "tello"),
        ]
    }
}
