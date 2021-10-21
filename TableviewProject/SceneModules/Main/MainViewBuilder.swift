//
//  MainViewBuilder.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import UIKit

class MainViewBuilder {    
    //factory method
    class func build() -> UIViewController {
        
        let viewModel = MainViewModel()
        let viewController = MainViewController(viewModel: viewModel)
        let navigationController = UINavigationController(rootViewController: viewController)
        
        
        viewController.title = "Main"
        viewController.tabBarItem.image = TabBarImages.home.value
        //to keep swiping, we dont use isHidden here
        viewController.navigationController?.setNavigationBarHidden(false, animated: false)

        return navigationController
        
    }
}

