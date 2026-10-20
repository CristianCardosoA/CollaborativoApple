//
//  HomeViewController.swift
//  Coordinator
//
//  Created by Daniel López Barrón on 15/10/26.
//

import Foundation
import UIKit

class HomeViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Home"
        
        let homeVC = UIViewController()
        let searchVC = UIViewController()
        let libraryVC = UIViewController()
        
        homeVC.tabBarItem = UITabBarItem(title: "Inicio", image: UIImage(systemName: "house"), tag: 0)
        
        searchVC.tabBarItem = UITabBarItem(title: "Buscar", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        
        libraryVC.tabBarItem = UITabBarItem(title: "Biblioteca", image: UIImage(systemName: "books.vertical"), tag: 2)
        
        self.viewControllers = [homeVC, searchVC, libraryVC]
    }
}
