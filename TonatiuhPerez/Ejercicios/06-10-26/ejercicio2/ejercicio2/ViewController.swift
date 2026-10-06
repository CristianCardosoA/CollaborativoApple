//
//  ViewController.swift
//  ejercicio2
//
//  Created by Facultad Contaduría y Administración on 06/10/26.
//

import UIKit

class ViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Bienvenido"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Iniciar Sesión", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let formStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    } ()
    
    private let usernameField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Usuario"
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        formStack.addArrangedSubview(titleLabel)
        formStack.addArrangedSubview(usernameField)
        formStack.addArrangedSubview(loginButton)
        
        view.addSubview(formStack)
        
        NSLayoutConstraint.activate([
            
            formStack.centerXAnchor.constraint(
                equalTo: view.centerXAnchor),
            formStack.widthAnchor.constraint(
                equalToConstant: 300 ),
            loginButton.heightAnchor.constraint(
                equalToConstant: 48),
            formStack.centerYAnchor.constraint(
                equalTo: view.centerYAnchor)
        
        ])
        
    
        
    }


    
}

