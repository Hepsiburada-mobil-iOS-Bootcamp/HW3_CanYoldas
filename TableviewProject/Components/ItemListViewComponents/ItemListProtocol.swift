//
//  ItemListProtocol.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import Foundation
import BaseComponents

protocol ItemListProtocol: AnyObject {
    
    func askNumberOfSection() -> Int
    func askNumberOfItem(in section: Int) -> Int
    func askData(at index: Int) -> GenericDataProtocol?
}
