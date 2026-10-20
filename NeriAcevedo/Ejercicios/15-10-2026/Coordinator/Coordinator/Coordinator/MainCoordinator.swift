//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Facultad de Contaduría y Administracíon on 15/10/26.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeViewcontroller()
        navigationController.setViewControllers([vc], animated: true)
    }
}
