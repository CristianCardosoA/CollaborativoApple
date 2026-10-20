//
//  AuthCoordinator.swift
//  Coordinator
//
//  Created by Facultad de Contaduría y Administracíon on 15/10/26.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    var onSuccess: (() -> Void)?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController()
        vc.onSuccess = { [weak self] in self?.onSuccess?() }
        navigationController.pushViewController(vc, animated: true)
    }
        
}
