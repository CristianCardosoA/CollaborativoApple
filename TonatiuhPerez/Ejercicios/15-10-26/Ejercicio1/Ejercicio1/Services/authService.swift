//
//  authService.swift
//  Ejercicio1
//
//  Created by Facultad Contaduría y Administración on 15/10/26.
//

import Foundation

class AuthService {
    
    var isAuthenticated: Bool = false
    
    func login (user: String, password: String) -> Bool {
        isAuthenticated = true
        return true
    }
}
