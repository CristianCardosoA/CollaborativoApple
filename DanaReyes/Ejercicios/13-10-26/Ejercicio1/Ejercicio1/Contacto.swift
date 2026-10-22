//
//  Contacto.swift
//  Ejercicio1
//
//  Created by Dana Gisel Reyes López on 13/10/26.
//

import Foundation

struct Contacto: Identifiable{
    var id: UUID = .init()
    var nombre: String
    var apellido: String
}

extension Contacto{
    static var all: [Contacto]{
        [
        Contacto(nombre: "Dana", apellido: "Reyes"),
        Contacto(nombre: "Rodrigo", apellido: "Hernandez"),
        Contacto(nombre: "Juanito", apellido: "Banana"),
        Contacto(nombre: "José", apellido: "Sanchéz"),
        Contacto(nombre: "María", apellido: "Jimenez"),
        ]
        
    }
}
