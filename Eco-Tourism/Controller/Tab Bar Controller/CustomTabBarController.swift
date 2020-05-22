//
//  CustomTabBarController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 03/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = #colorLiteral(red: 0.1150266005, green: 0.1186998733, blue: 0.1193884835, alpha: 1)
        tabBar.tintColor = .white
        
        let layout = UICollectionViewFlowLayout()
        let homeViewController = HomeViewController(collectionViewLayout: layout)
        homeViewController.tabBarItem.title = "Home"
        homeViewController.tabBarItem.image = #imageLiteral(resourceName: "home.filled")
        
        let newsViewController = NewsViewController(collectionViewLayout: UICollectionViewFlowLayout())
        newsViewController.tabBarItem.title = "News"
        newsViewController.tabBarItem.image = #imageLiteral(resourceName: "news")
        
        let settingsViewController = SettingsViewController(collectionViewLayout: UICollectionViewFlowLayout())
        settingsViewController.tabBarItem.title = "Settings"
        settingsViewController.tabBarItem.image = #imageLiteral(resourceName: "settings")
        
        
        viewControllers = [homeViewController, newsViewController, settingsViewController]
        
    }
    
}
