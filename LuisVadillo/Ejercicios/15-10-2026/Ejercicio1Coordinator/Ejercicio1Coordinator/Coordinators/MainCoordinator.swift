//
//  MainCoordinator.swift
//  Ejercicio1Coordinator
//
//  Created by Facultad de Contaduría y Administración on 15/10/26.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [any Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let vc = HomeViewController()
        navigationController.setViewControllers([vc], animated: true)
    }
    
}
