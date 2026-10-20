//
//  AunthCoordinator.swift
//  COordinator
//
//  Created by Facultad de Contaduría y Administración on 15/10/26.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [any Coordinator] = []
    var onSuccess: (() -> Void)?
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewControler()
        vc.onSuccess = { [weak self] in self?.onSuccess?()}
        navigationController.pushViewController(vc, animated: true)
    }
}
