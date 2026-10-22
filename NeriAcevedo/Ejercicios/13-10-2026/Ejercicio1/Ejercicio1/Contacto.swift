//
//  Contacto.swift
//  Ejercicio1
//
//  Created by Facultad de Contaduría y Administracíon on 13/10/26.
//

import Foundation

struct Contacto: Identifiable {
    var id: UUID = .init()
    var nombre: String
    var apellido: String
}

extension Contacto {
    
    static var all: [Contacto]{
        
        [
        Contacto(nombre: "José", apellido: "García"),
        Contacto(nombre: "Ana", apellido: "Pérez"),
        Contacto(nombre: "María", apellido: "López"),
        Contacto(nombre: "Luis ", apellido: "Martínez"),
        Contacto(nombre: "Sofía", apellido: "Rodríguez")
        
        ]
    }
}
