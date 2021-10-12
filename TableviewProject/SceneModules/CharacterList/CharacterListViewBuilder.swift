//
//  CharacterListViewBuilder.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//


import UIKit

class CharacterListViewBuilder {
    
    class func build() -> UIViewController {
        
        let viewModel = CharacterListViewModel()
        let viewController = CharacterListViewController(viewModel: viewModel)
        
        return viewController
    }
}
