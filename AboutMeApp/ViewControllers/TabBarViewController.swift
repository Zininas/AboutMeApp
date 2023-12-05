//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 02.12.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        dumpData()
    }
    
    private func dumpData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let personVC = navigationVC.topViewController
                guard let personVC = personVC as? PersonViewController else { return }
                personVC.user = user
            }
        }
        
    }
}
