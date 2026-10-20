//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by Facultad de Contaduría y Administracíon on 15/10/26.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [any Coordinator] = []
    
    var navigationController = UINavigationController()
    
    var uiWindow: UIWindow
    
    var authService = AuthService()
    
    lazy var isAuthenticated: Bool = {
        authService.isAuthenticated
        
    }()
    
    init(uiWindow: UIWindow) {
        self.uiWindow = uiWindow
    }
    
    func start() {
        uiWindow.rootViewController = navigationController
        uiWindow.makeKeyAndVisible()
        isAuthenticated ? showMain() : showAuth()
        
    }
    
    private func showAuth(){
        let auth = AuthCoordinator(navigationController: navigationController)
        auth.onSuccess = { [weak self, weak auth] in
            guard let self, let auth else { return }
            self.removeChild(auth)
            self.showMain()
        }
        addChild(auth)
        auth.start()
        
    }
    
    private func showMain(){
        let main = MainCoordinator(navigationController: navigationController)
        addChild(main)
        main.start()
        
    }
}
