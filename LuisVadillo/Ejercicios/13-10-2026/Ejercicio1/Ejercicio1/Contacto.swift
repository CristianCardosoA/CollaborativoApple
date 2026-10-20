//
//  File.swift
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
            Contacto(nombre: "Cristian", apellido: "Cardoso"),
            Contacto(nombre: "Ana", apellido: "Perez",),
            Contacto(nombre: "Jose", apellido: "Sanchez",),
            Contacto(nombre: "Ana", apellido: "Perez",),
            Contacto(nombre: "Jose", apellido: "Carmona",),

        ]
    }

}
