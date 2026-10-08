//
//  ViewController.swift
//  Ejercicio1
//
//  Created by Daniel López Barrón on 01/10/26.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel: UILabel = {
        let l = UILabel()
        l.text = "Iniciar Sesión"
        l.font = .boldSystemFont(ofSize: 28)
        l.textAlignment = .center
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()

    private let usernameField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Usuario"
        tf.borderStyle = .roundedRect
        return tf
    }()

    private let loginButton: UIButton = {
        let b = UIButton(type: .system)
        b.setTitle("Entrar", for: .normal)
        b.backgroundColor = .systemBlue
        b.setTitleColor(.white, for: .normal)
        b.layer.cornerRadius = 8
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()

    private lazy var stack: UIStackView = {
        let s = UIStackView(arrangedSubviews:
            [titleLabel, usernameField, loginButton])
        s.axis = .vertical
        s.spacing = 18
        s.translatesAutoresizingMaskIntoConstraints = false
        return s
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(usernameField)
        stack.addArrangedSubview(loginButton)
        
        view.addSubview(stack)

        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(
                equalTo: view.centerYAnchor
            ),
            stack.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 32
            ),
            stack.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -32
            ),
            loginButton.heightAnchor.constraint(
                equalToConstant: 46
            )
        ])
    }
}

