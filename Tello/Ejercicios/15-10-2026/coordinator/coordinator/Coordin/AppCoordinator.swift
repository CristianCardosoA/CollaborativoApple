//
//  AppCoordinator.swift
//  coordinator
//
//  Created by Facultad de Contaduría y Administración on 15/10/26.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController?
    
    var uiWindow: UIWindow?
    
    let authService = AuthService()
    
    lazy var isAuthenticated: Bool = {
        return authService.isAuthenticated
    }()

    init(uiWindow: UIWindow? = nil) {
        self.uiWindow = uiWindow
        self.navigationController = UINavigationController()
    }
    
    func start() {
        uiWindow?.rootViewController = navigationController
        uiWindow?.makeKeyAndVisible()
        isAuthenticated ? showMain() : showAuth()
    }
    
    private func showMain() {
        guard let navigationController = navigationController else { return }
        let auth = MainCoordinator(navigationController: navigationController)
        addChild(auth)
        auth.start()
    }
    
    private func showAuth() {
        guard let navigationController = navigationController else { return }
        let auth = AuthCoordinator(navigationController: navigationController)
        auth.onSuccess = { [weak self] in
            guard let self else { return }
            self.removeChild(auth)
            self.showMain()
        }
        
        addChild(auth)
        auth.start()
    }
}
