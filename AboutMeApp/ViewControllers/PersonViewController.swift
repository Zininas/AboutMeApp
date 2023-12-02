//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 02.12.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surenameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    
    var name: String!
    var surename: String!
    var age: Int!
    var profession: String!
    
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
        nameLabel.text = name
        surenameLabel.text = surename
        ageLabel.text = String(format: "Age: \(age ?? 0)", age)
        professionLabel.text = profession
    }
}


