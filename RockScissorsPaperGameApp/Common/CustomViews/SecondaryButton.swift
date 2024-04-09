//
//
// SecondaryButton.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 09.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class SecondaryButton: UIButton {
    
    init(_ text: String) {
        super.init(frame: .zero)
        configure(text)
    }
    
    func configure(_ text: String) {
        backgroundColor = .none
        frame.size.height = 24
        layer.cornerRadius = frame.size.height / 4
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = .customFont(ofSize: 16)
        titleLabel?.textAlignment = .center
//        titleLabel?.textColor = .purple
        tintColor = .purple
        setTitle(text, for: .normal)
        // Paddings
        var buttonConfig = UIButton.Configuration.plain()
        buttonConfig.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 30, bottom: 17, trailing: 30)
        configuration = buttonConfig
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
