//
//  ContactoCelda.swift
//  Ejercicio1
//
//  Created by Facultad de Contaduría y Administración on 13/10/26.
//

import Foundation
import UIKit

class ContactoCelda: UITableViewCell {
    
    private let contactoLabel: UILabel = {
        let l = UILabel()
        l.font = .boldSystemFont(ofSize: 24)
        l.textAlignment = .center
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private let apellidoLabel: UILabel = {
        let l = UILabel()
        l.font = .boldSystemFont(ofSize: 10)
        l.textAlignment = .center
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        stack.addArrangedSubview(contactoLabel)
        stack.addArrangedSubview(apellidoLabel)
        contentView.addSubview(stack)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: contentView.topAnchor),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func configure(con contacto: Contacto){
        contactoLabel.text = contacto.nombre
        apellidoLabel.text = contacto.apellido
    }
    
    
}
