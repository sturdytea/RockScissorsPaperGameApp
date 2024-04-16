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

protocol Coordinator: AnyObject {
    func showHomeScreen()
    func showGameScreen()
    func showRulesScreen()
}

class AppCoordinator: Coordinator {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    
    func showHomeScreen() {
        let homeViewController = HomeViewController()
        homeViewController.coordinator = self
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    func showGameScreen() {
        let gameViewController = GameViewController()
        gameViewController.coordinator = self
        navigationController?.pushViewController(gameViewController, animated: true)
    }
    
    func showRulesScreen() {
        let rulesViewController = RulesViewController()
        rulesViewController.coordinator = self
        navigationController?.pushViewController(rulesViewController, animated: true)
    }
}
