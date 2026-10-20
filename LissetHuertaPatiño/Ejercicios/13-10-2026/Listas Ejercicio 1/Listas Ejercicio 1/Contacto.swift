//
//  Contacto.swift
//  Listas Ejercicio 1
//
//  Created by Facultad de Contaduría y Administración on 13/10/26.
//

import Foundation

struct Contacto {
    var id: UUID = .init()
    var nombre: String
    var apellido: String
}

extension Contacto{
    static var all: [Contacto] {
        [
            Contacto(nombre: "Ana", apellido: "Perez"),
            Contacto(nombre: "Carlos", apellido: "Sanchez"),
            Contacto(nombre: "Carmen", apellido: "Ramirez"),
            Contacto(nombre: "David", apellido: "Lopez"),
            Contacto(nombre: "Elena", apellido: "Garcia"),
        ]
    }
}
