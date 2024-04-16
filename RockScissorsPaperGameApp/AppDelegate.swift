//
//
// AppDelegate.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 09.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = UINavigationController()
        
        if let navigationController = window?.rootViewController as? UINavigationController {
            appCoordinator = AppCoordinator(navigationController: navigationController)
            appCoordinator?.showHomeScreen() // Start with the login screen
        }
        window?.makeKeyAndVisible()
        return true
    }
}

