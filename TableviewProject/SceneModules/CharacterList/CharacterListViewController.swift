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
        subscribeViewModelListeners()
        viewModel.getCharacterList()
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
    
    private func subscribeViewModelListeners() {
            
            viewModel.subscribeState { [weak self] state in
                switch state {
                case .done:
                    print("data is ready")
                    self?.mainComponent.reloadTableView()
                case .loading:
                    print("data is getting")
                case .failure:
                    print("errror")
                    // alert
                }
            }
        }
    
}




