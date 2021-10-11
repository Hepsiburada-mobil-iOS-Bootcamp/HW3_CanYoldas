//
//  MainTabBarBuilder.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import UIKit


class MainTabBarBuilder {
    
    
    class func build() -> UITabBarController {
        
        let mainViewController = MainViewBuilder.build()
        let favoriteViewController = FavoriteViewBuilder.build()
        
        let tabBarController = MainTabBarController()
        tabBarController.viewControllers = [mainViewController,favoriteViewController]
        tabBarController.tabBar.backgroundColor = .systemBackground
        return tabBarController
    }
    
}
