//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 28.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var myNameLabel: UILabel!
    
    var welcome: String!
    var myName: String!
    
    private let primaryColor = UIColor(
        red: 225/255,
        green: 150/255,
        blue: 185/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 115/255,
        green: 150/255,
        blue: 225/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = welcome
        myNameLabel.text = myName
    }
}
// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
