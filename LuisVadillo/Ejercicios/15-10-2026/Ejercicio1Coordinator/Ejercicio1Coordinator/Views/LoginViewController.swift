//
//  LoginViewController.swift
//  Ejercicio1Coordinator
//
//  Created by Facultad de Contaduría y Administración on 15/10/26.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    var onSuccess: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Login Page"
    }
    
    //Agregar button de login
    
    var loginButton: UIButton {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }
    //Agregar un action "login" -> onSuccess
}
