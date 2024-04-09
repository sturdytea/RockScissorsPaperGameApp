//
//
// UIFont.swift
// RockScissorsPaperGameApp
//
// Created by sturdytea on 09.04.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

extension UIFont {
    static func customFont(ofSize size: CGFloat) -> UIFont {
        if let font = UIFont(name: "Name", size: size) {
            return font
        } else {
            return .systemFont(ofSize: size)
        }
    }
}
