//
//  ContactoCelda.swift
//  Ejercicio1
//
//  Created by Dana Gisel Reyes López on 13/10/26.
//

import Foundation
import UIKit

class ContactoCelda: UITableViewCell{
    
    private let nombreLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0 //para que sea multilinea
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let apellidoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0 //para que sea multilinea
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let stackView: UIStackView = {
            let stack = UIStackView()
            stack.axis = .vertical
            stack.distribution = .fill
            stack.alignment = .fill
            stack.spacing = 16
            stack.translatesAutoresizingMaskIntoConstraints = false
            return stack
        }()
        
    required init?(coder: NSCoder){
        fatalError()
    }
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    private func setupViews(){
        stackView.addArrangedSubview(nombreLabel)
        stackView.addArrangedSubview(apellidoLabel)
        
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configure (con contacto: Contacto){
        nombreLabel.text = contacto.nombre
        apellidoLabel.text = contacto.apellido
    }
    }
    
/*
    }
    ]
    
    private let contactoLebel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0 //para que sea multilinea
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
}
    
    func configure (con contacto: String){
        contactoLebel.text = contacto
        contentView.addSubview(contactoLebel)
        NSLayoutConstraint.activate([
            contactoLebel.topAnchor.constraint(equalTo: contentView.topAnchor),
            contactoLebel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
*/
