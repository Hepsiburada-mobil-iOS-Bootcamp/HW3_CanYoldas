//
//  CharacterListDataFormatter.swift
//  TableviewProject
//
//  Created by Can Yoldas on 12.10.2021.
//

import Foundation

class CharacterListDataFormatter: CharacterListDataFormatterProtocol {
    
    func getItem(from data: CharacterData) -> ItemTableViewCellData {
        return ItemTableViewCellData(imageData: CustomImageViewComponentData(imageUrl: createImageData(by: data.thumbnail)), cellInfo: LabelPackComponentData(title: data.name, subTitle: getDescription(from: data.description)))
    }
    
    private func getDescription(from rawValue: String?) -> String {
        guard let value = rawValue, !value.isEmpty else {
            return "unknown"
        }
        return value

    }
    
    private func createImageData(by value: Thumbnail) -> String {
        return "\(value.path)/portrait_incredible.\(value.thumbnailExtension)"
    }
    
}
