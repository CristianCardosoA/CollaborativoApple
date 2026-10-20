//
//  AuthService.swift
//  Coordinator
//
//  Created by Daniel López Barrón on 15/10/26.
//

import Foundation

class AuthService {
    
    var isAuthenticated: Bool = false
    
    func login(username: String, password: String) -> Bool {
        isAuthenticated = true
        return true
    }
}
