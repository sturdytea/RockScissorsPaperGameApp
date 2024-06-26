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
    
    weak var coordinator: AppCoordinator?
    private lazy var homeView = HomeView()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.startButton.addTarget(self, action: #selector(startGameButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func startGameButtonTapped() {
        coordinator?.showGameScreen()
    }

}
