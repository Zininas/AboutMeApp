//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 02.12.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet weak var aboutMeTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = "\(user.person.fullName) Bio"
        aboutMeTextView.backgroundColor = .clear
        aboutMeTextView.textColor = .white
        aboutMeTextView.text = user.person.biografy
    }
}
