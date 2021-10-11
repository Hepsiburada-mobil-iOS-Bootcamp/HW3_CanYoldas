//
//  ViewController.swift
//  TableviewProject
//
//  Created by Can Yoldas on 9.10.2021.
//

import UIKit

class TestViewController: UIViewController {
    
    
    private lazy var pushButton: UIButton = {
        let temp = UIButton(type: .system)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.addTarget(self, action: #selector(pushButtonPressed), for: .touchUpInside)
        temp.setTitle("PUSH", for: .normal)
        return temp
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        view.addSubview(pushButton)
        
        NSLayoutConstraint.activate([
        
            pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
    }
    
    @objc func pushButtonPressed(_ sender: UIButton) {
        print("pressed")
        
        let viewController = TestViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }


}

