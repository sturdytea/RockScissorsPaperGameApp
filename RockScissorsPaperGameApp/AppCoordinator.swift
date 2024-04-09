//
//
// AppCoordinator.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 09.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class AppCoordinator {
    let window: UIWindow
    let homeViewController = HomeViewController()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController(rootViewController: homeViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
