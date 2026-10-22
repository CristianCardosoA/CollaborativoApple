//
//  HomeViewController.swift
//  coordinator
//
//  Created by Facultad de Contaduría y Administración on 15/10/26.
//

import Foundation
import UIKit

class HomeViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        title = "Home"
        
        let homeVC = UIViewController()
        let searchVC = UIViewController()
        let libraryVC = UIViewController()
        
        homeVC.tabBarItem = UITabBarItem(title: "Inicio", image: UIImage(systemName: "house"), tag: 0)
    }
}
