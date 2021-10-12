//
//  CharacterListViewState.swift
//  TableviewProject
//
//  Created by Can Yoldas on 12.10.2021.
//

import Foundation

typealias CharacterListStateBlock = (CharacterListViewState) -> Void

enum CharacterListViewState {
    
    case loading
    case done
    case failure
    
}
