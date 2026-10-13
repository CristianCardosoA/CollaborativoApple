//
//  ContactoCelda.swift
//  ejercicio1
//
//  Created by Facultad de Contaduría y Administración on 13/10/26.
//
import Foundation
import UIKit

class ContactoCelda: UITableViewCell {
    
    let contactoLabel: UILabel = {
        let label = UILabel()
        label.text = "Bienvenido"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let apellidoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        // Agregamos los labels al stack
        stackView.addArrangedSubview(contactoLabel)
        stackView.addArrangedSubview(apellidoLabel)
        
        // Agregamos el stack a la celda una sola vez
        contentView.addSubview(stackView)
        
        // Restricciones del stackView respecto al contentView
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configure(con contacto: Contacto) {
        contactoLabel.text = contacto.nombre
        apellidoLabel.text = contacto.apellido
    }
}
