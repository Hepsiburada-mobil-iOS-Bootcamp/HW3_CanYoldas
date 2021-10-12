//
//  BaseTableViewCell.swift
//  TableviewProject
//
//  Created by Can Yoldas on 12.10.2021.
//

import UIKit


//the baseTableViewCell in the BaseComponents Package doesn't work, can not reach the identifier because it's not static

class BaseTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addMajorViews()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViews()
        setupView()
    }
    
    func setupView() {}
    func addMajorViews() {}
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
