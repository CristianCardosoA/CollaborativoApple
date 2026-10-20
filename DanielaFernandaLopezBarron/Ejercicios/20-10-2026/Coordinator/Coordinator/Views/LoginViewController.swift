//
//  LoginViewController.swift
//  Coordinator
//
//  Created by Daniel López Barrón on 15/10/26.
//


import UIKit

class LoginViewController: UIViewController {

    var onSuccess: (() -> Void)?

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Iniciar Sesión"
        label.font = .boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        return label
    }()

    private let usernameField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Usuario"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        return textField
    }()

    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Entrar", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()

    private lazy var stack: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                titleLabel,
                usernameField,
                loginButton
            ]
        )

        stackView.axis = .vertical
        stackView.spacing = 18
        stackView.alignment = .fill
        stackView.distribution = .fill

        // Evita conflictos con Auto Layout
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        view.addSubview(stack)

        loginButton.addTarget(
            self,
            action: #selector(login),
            for: .touchUpInside
        )

        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.centerYAnchor
            ),

            stack.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 32
            ),

            stack.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -32
            ),

            loginButton.heightAnchor.constraint(
                equalToConstant: 46
            )
        ])
    }

    @objc private func login() {
        onSuccess?()
    }
}

        

