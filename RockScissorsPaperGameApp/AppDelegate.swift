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

    var widnow: UIWindow?
    var coordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        widnow = UIWindow(frame: UIScreen.main.bounds)
        coordinator = AppCoordinator(window: widnow!)
        coordinator?.start()
        return true
    }
}

