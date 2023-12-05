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
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var professionLabel: UILabel!
    
    var user: User!
    
    var name: String!
    var surename: String!
    var foto: String!
    var age: Int!
    var profession: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = user.person.fullName
        nameLabel.text = user.person.name
        surenameLabel.text = user.person.surName
        photoImage.image = UIImage(named: "zinin")
        professionLabel.text = user.person.profession
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMeVC = segue.destination as? AboutMeViewController else { return }
        aboutMeVC.user = user
    }
}


