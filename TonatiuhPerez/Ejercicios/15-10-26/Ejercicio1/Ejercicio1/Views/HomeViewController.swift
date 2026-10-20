//
//  HomeViewController.swift
//  Ejercicio1
//
//  Created by Facultad Contaduría y Administración on 15/10/26.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Home"
        
        let homeVC = UIViewController()
        let searchVC = UIViewController()
        let libraryVC = UIViewController()
        
        homeVC.tabBarItem = UITabBarItem(
            title: ""
        )
    }
}
