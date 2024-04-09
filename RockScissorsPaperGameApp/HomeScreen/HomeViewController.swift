//
//
// HomeViewController.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 09.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class HomeViewController: UIViewController {

    private lazy var homeView = HomeView()
    private lazy let coordinator = AppCoordinator()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.startButton.addTarget(self, action: #selector(startGameButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func startGameButtonTapped() {
        c
    }

}
