//
//  CharacterListDataFormatterProtocol.swift
//  TableviewProject
//
//  Created by Can Yoldas on 12.10.2021.
//

import Foundation

protocol CharacterListDataFormatterProtocol {
    
    func getItem(from data: CharacterData) -> ItemTableViewCellData
    
}
