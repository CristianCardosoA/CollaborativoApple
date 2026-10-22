//
//  ContactoCelda.swift
//  Ejercicio1
//
//  Created by Facultad de Contaduría y Administracíon on 13/10/26.
//

import Foundation
import UIKit

class ContactoCelda: UITableViewCell {
    
    let contactoLebel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let apellidoLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 16)
            label.textColor = .secondaryLabel
            label.textAlignment = .center
            label.numberOfLines = 0
            return label
        }()
    
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        stack.addArrangedSubview(contactoLebel)
        stack.addArrangedSubview(apellidoLabel)
        contentView.addSubview(stack)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    
    func configure(con contacto: Contacto) {
        contactoLebel.text = contacto.nombre
        apellidoLabel.text = contacto.apellido
    }
}
