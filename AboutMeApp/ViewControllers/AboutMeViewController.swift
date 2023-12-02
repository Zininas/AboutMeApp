//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 02.12.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet weak var aboutMeTextView: UITextView!
    
    var aboutMe: String!
    
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
        aboutMeTextView.text = aboutMe
    }
}
