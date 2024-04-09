//
//
// HomeView.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 09.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class HomeView: UIView {

    var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "home-image")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var gameTitle: UILabel = {
        let label = UILabel()
        label.font = .customFont(ofSize: 32)
        label.textAlignment = .center
        label.text = "Rock, Scissors & Paper"
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var startButton = PrimaryButton("Start")
    
    var rulesButton = SecondaryButton("Game Rules")
    
//    var settingButton = CustomImageButton(imageName: "")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        setupConstraints()
        
    }
    
    #warning("Add unused annotation")
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension HomeView {
    func setupViews() {
        addSubview(image)
        addSubview(gameTitle)
        addSubview(startButton)
        addSubview(rulesButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            image.widthAnchor.constraint(equalToConstant: 320),
            image.heightAnchor.constraint(equalToConstant: 320),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 88),
            
            gameTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            gameTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            gameTitle.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            
            startButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            startButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            startButton.topAnchor.constraint(equalTo: gameTitle.bottomAnchor, constant: 24),
            
            rulesButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            rulesButton.topAnchor.constraint(equalTo: startButton.bottomAnchor, constant: 8),
            
        ])
    }
}
