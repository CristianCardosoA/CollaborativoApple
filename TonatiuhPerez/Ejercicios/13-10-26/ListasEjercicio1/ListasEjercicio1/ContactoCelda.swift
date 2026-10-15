//
//  ContactoCelda.swift
//  ListasEjercicio1
//
//  Created by Facultad Contaduría y Administración on 13/10/26.
//

import Foundation
import UIKit

class ContactoCelda: UITableViewCell {
    
    private let nombreLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let apellidoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.textColor = .darkGray
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    private func setupUI() {
        contentView.addSubview(nombreLabel)
        contentView.addSubview(apellidoLabel)
        
        NSLayoutConstraint.activate([
            
            nombreLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            nombreLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            nombreLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            apellidoLabel.topAnchor.constraint(equalTo: nombreLabel.bottomAnchor, constant: 4),
            apellidoLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            apellidoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            apellidoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configure(nombre: String, apellido: String){
        nombreLabel.text = nombre
        apellidoLabel.text = apellido
    }
}
