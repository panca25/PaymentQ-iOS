//
//  MainTabBarController.swift
//  PaymentQ
//
//  Created by Panca Setiawan on 30/10/23.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBar()
    }
    
    func setTabBar() {
        self.delegate = self
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: HistoryViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house.fill")
        vc2.tabBarItem.image = UIImage(systemName: "list.bullet.rectangle.fill")
       
        vc1.title = "Home"
        vc2.title = "History"
        
        tabBar.tintColor = .blue
        
        setViewControllers([vc1, vc2], animated: true)
    }
}
