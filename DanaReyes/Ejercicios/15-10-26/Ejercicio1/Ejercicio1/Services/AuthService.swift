//
//  AuthService.swift
//  Ejercicio1
//
//  Created by Dana Gisel Reyes López on 15/10/26.
//

import Foundation
import UIKit

class AuthService{
    
    var isAuthenticated: Bool = false
    
    func login(username: String, password: String) -> Bool{
        isAuthenticated = true
        return true
    }
}
