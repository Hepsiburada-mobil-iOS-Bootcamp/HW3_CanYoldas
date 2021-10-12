//
//  ItemTableViewCellData.swift
//  TableviewProject
//
//  Created by Can Yoldas on 12.10.2021.
//

import Foundation
import BaseComponents

class ItemTableViewCellData: GenericDataProtocol {
    
    private(set) var imageData: CustomImageViewComponentData
    private(set) var cellInfo: LabelPackComponentData
    
    init(imageData: CustomImageViewComponentData,
         cellInfo: LabelPackComponentData) {
        self.imageData = imageData
        self.cellInfo = cellInfo
    }
    
}
