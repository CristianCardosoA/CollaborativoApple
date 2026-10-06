//
//  ViewController.swift
//  Ejercicio1
//

import UIKit

class ViewController: UIViewController {
    
    private let usernameField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Usuario"
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Bienvenido"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Iniciar Sesión", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    // El stack acomoda a los tres en vertical, uno debajo de otro
    let formStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical          // en columna
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 16              // separación entre elementos
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Neribb"
        
        // 1. Meter los tres elementos AL STACK (no a la vista)
        formStack.addArrangedSubview(titleLabel)
        formStack.addArrangedSubview(usernameField)
        formStack.addArrangedSubview(loginButton)
        
        view.addSubview(formStack)
        
        // 3. Solo el stack lleva constraints: él acomoda lo de adentro
        NSLayoutConstraint.activate([
            formStack.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            formStack.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 24),
            formStack.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -24),   // negativo
            
            loginButton.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        loginButton.addTarget(self,
                              action: #selector(didTapLogin),
                              for: .touchUpInside)
    }

    @objc func didTapLogin() {
        print("Boton presionado")
    }

}
