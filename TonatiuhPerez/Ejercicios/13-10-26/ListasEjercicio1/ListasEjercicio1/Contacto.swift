//
//  Contacto.swift
//  ListasEjercicio1
//
//  Created by Facultad Contaduría y Administración on 13/10/26.
//

import Foundation

struct Contacto: Identifiable {
    var id: UUID = .init()
    var nombre: String
    var apellido: String
}

extension Contacto{
    static var all: [Contacto] {
        [Contacto( nombre: "Tonatiuh", apellido: "Perez"),
         Contacto( nombre: "Hugo", apellido: "Sanchez"),
         Contacto( nombre: "Ana", apellido: "Perez"),
         Contacto( nombre: "Luis", apellido: "Lopez")]
    }
}
