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
        l.font = .boldSystemFont(ofSize: 10)
        l.textAlignment = .center
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    convenience init() {
        fatalError()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func configure(con contacto: String, apellido: String) {
        contactoLabel.text = "\(contacto) \(apellido)"
        contentView.addSubview(contactoLabel)
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactoLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            contactoLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            contactoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            contactoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
            
        ])
    }
}
