//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 28.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome

    }
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
}
