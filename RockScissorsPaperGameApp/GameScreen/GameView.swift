//
//
// GameView.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 16.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class GameView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
