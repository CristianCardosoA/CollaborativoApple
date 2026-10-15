//
//  ViewController.swift
//  ejercicio 1
//
//  Created by Facultad de Contaduría y Administración on 01/10/26.
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
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let formStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let usernameField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Usuario"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    @objc func didTapLogin() {
        print("boton presionado")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Tello"
        
        loginButton.addTarget(self,
            action: #selector(didTapLogin),
            for: .touchUpInside)
        
        formStackView.addArrangedSubview(titleLabel)
        formStackView.addArrangedSubview(usernameField)
        formStackView.addArrangedSubview(loginButton)
        
        view.addSubview(formStackView)
        
        NSLayoutConstraint.activate([
            formStackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 0),
            formStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            formStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            
            loginButton.heightAnchor.constraint(equalToConstant: 46)
        ])
    }
}

