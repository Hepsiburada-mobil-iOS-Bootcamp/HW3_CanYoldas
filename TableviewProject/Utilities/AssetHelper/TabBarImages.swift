//
//  TabBarImages.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import UIKit
import BaseComponents


enum TabBarImages: String, GenericValueProtocol {
    
    typealias Value = UIImage
    
    var value : UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case home = "home"
    case favorite = "favorite"
    
    
}
