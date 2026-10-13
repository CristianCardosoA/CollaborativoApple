//
//  Contacto.swift
//  Ejercicio1
//
//  Created by Daniel López Barrón on 13/10/26.
//

import Foundation

struct Contacto: Identifiable {
    var id: UUID = .init()
    var nombre: String
    var apellidos: String
}

extension Contacto{
    
    static var all: [Contacto] {
        
        [
            Contacto(nombre: "Daniel", apellidos: "López"),
            Contacto(nombre: "Tona", apellidos: "Pérez"),
            Contacto(nombre: "Luis", apellidos: "Lino"),
            Contacto(nombre: "Ale", apellidos: "Martinez"),
            Contacto(nombre: "Francisco", apellidos: "Medina")
        ]
    }
}
