//
//  CharacterListViewController.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import UIKit
import BaseComponents

class CharacterListViewController: BaseViewController<CharacterListViewModel> {

    private var mainComponent : ItemListView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addMainComponent()
    }

    func addMainComponent() {
        mainComponent = ItemListView()
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
        
            mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor),
            mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        mainComponent.delegate = viewModel
    }
}




