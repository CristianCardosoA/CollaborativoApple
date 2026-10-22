//
//  AuthCoordinator.swift
//  Cordinators
//
//  Created by MacBook 6 on 15/10/26.
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
    
    //iniciar el login view controller
    func start() {
        
        let vc = LoginViewController()
        vc.onSucess = { [weak self] in self?.onSuccess?() }
        navigationController.pushViewController(vc, animated: true)
    }
}
