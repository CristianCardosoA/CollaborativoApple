//
//  AuthService.swift
//  Coordinator Ejercicio1 15Oct
//
//  Created by Facultad de Contaduría y Administración on 15/10/26.
//

import Foundation

class AuthService {
    
    var isAuthenticated: Bool = false
    
    func login(username: String, password: String) -> Bool {
        isAuthenticated = true
        return true
    }
    
}
