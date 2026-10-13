//
//  Contacto.swift
//  Lista
//
//  Created by MacBook 6 on 13/10/26.
//

import Foundation

struct Contacto: Identifiable {
    var id: UUID = .init()
    var nombre: String
    var apellido: String
}

extension Contacto{
    
    static var all: [Contacto] {
        [
        Contacto(nombre: "Brenda", apellido: "Cardoso"),
        Contacto(nombre: "Maria", apellido: "Perez"),
        Contacto(nombre: "Jose", apellido: "Gonzalez"),
        Contacto(nombre: "Pablo", apellido: "Hernandez"),
        Contacto(nombre: "Ana", apellido: "Lopez")
        ]
    }
}
