//
//  ContactoCelda.swift
//  Listas Ejercicio 1
//
//  Created by Facultad de Contaduría y Administración on 13/10/26.
//

import Foundation
import UIKit

class ContactoCelda: UITableViewCell {
    
    private let nombreLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    private let apellidoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .gray
        return label
    }()
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func configure(con nombre: String, apellido: String) {
        nombreLabel.text = nombre
        apellidoLabel.text = apellido
        
        stackView.addArrangedSubview(nombreLabel)
        stackView.addArrangedSubview(apellidoLabel)
        
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }
}
