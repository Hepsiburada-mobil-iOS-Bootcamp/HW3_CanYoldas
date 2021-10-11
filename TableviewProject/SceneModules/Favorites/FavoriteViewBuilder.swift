//
//  FavoriteViewBuilder.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import Foundation
import UIKit

class FavoriteViewBuilder {
    
    class func build() -> UIViewController {
        
        let viewModel = FavoriteViewModel()
        let viewController = FavoriteViewController(viewModel: viewModel)
        viewController.title = "Favorites"
        viewController.tabBarItem.image = TabBarImages.favorite.value
        
        return viewController
    }
    
}
