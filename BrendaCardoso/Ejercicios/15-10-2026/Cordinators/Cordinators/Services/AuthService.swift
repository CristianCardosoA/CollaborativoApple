//
//  AuthService.swift
//  Cordinators
//
//  Created by MacBook 6 on 15/10/26.
//

import Foundation

class AuthService{
    
    var isauthenticated: Bool = false
    
    func Login(username: String, password: String) -> Bool {
        isauthenticated = true
        return true
        
    }
}
