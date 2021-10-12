//
//  ItemListView.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import UIKit
import BaseComponents


class ItemListView : BaseView {
    
    deinit {
        print("DEINIT: ItemListView")
    }
    
    weak var delegate : ItemListProtocol?
    
    lazy var tableView: UITableView = {
        let temp = UITableView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.delegate = self
        temp.dataSource = self
        
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addTableView()
    }
    
    private func addTableView() {
        addSubview(tableView)
        
        NSLayoutConstraint.activate([
        
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    

    func reloadTableView() {
        tableView.reloadData()
    }
    
}


extension ItemListView : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return delegate?.askNumberOfSection() ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate?.askNumberOfItem(in: section) ?? 0
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let data = delegate?.askData(at: indexPath.row) else {
            fatalError("provide some data")
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableViewCell.identifier, for: <#T##IndexPath#>)
        
        
        
        return UITableViewCell()
    }
 
}

