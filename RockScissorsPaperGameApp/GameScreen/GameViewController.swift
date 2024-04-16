//
//
// GameViewController.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 16.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class GameViewController: UIViewController {

    weak var coordinator: AppCoordinator?
    private lazy var gameView = GameView()
    
    override func loadView() {
        view = gameView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}
