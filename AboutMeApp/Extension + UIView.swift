//
//  Extension + UIView.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 05.12.2023.
//

import UIKit
// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 225/255,
            green: 150/255,
            blue: 185/255,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 115/255,
            green: 150/255,
            blue: 225/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

