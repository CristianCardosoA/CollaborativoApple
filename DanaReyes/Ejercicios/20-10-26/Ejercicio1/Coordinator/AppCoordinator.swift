//
//  AppCoordinator.swift
//  Ejercicio1
//
//  Created by Dana Gisel Reyes López on 15/10/26.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [any Coordinator] = []
    
    var navigationController =  UINavigationController()
    
    var uiWindow: UIWindow
    
    let authService = AuthService()
    
   lazy var isAuthenticated: Bool = {
       authService.isAuthenticated
    
    }()
    
    init(uiWindow: UIWindow) {
        self.uiWindow = uiWindow
    }
    
    func start(){
        uiWindow.rootViewController = navigationController
        uiWindow.makeKeyAndVisible()
        isAuthenticated ? showMain() : showAuth()
        
    }
    
    private func showMain(){
        let auth = MainCoordinator(navigationController: navigationController)
        addChild(auth)
        auth.start()
        
    }
    
    private func showAuth(){
        let auth = AuthCoordinator(navigationController: navigationController)
        auth.onSuccess = { [weak self, weak auth] in
        guard let self, let auth else {return}
        removeChild(auth)
        showMain()
        
    }
    addChild(auth)
    auth.start()
    
    }
}
