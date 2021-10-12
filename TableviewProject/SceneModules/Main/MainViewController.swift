//
//  MainViewController.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import UIKit
import BaseComponents

extension Selector {
    
    static let testButtonTapped = #selector(MainViewController.pushButtonPressed)
}

class MainViewController: BaseViewController<MainViewModel> {

    
    private lazy var pushButton: UIButton = {
        let temp = UIButton(type: .system)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.addTarget(self, action: .testButtonTapped, for: .touchUpInside)
        temp.setTitle("PUSH", for: .normal)
        return temp
    }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        view.backgroundColor = .white
        
        view.addSubview(pushButton)
        
        NSLayoutConstraint.activate([ 
        
            pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
    }
    
    @objc func pushButtonPressed(_ sender: UIButton) {
        fireCharacterListView()
    }
    
    
    private func fireCharacterListView() {
        
        let characterListView = CharacterListViewBuilder.build()
        self.navigationController?.pushViewController(characterListView, animated: true)
    }
}
