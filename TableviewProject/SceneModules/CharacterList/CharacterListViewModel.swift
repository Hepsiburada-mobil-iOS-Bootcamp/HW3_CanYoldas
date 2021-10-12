//
//  CharacterListViewModel.swift
//  TableviewProject
//
//  Created by Can Yoldas on 11.10.2021.
//

import Foundation
import BaseComponents
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    
    private let formatter: CharacterListDataFormatterProtocol
    private var state: CharacterListStateBlock?
    private var data: CharacterDataResponse?
    
    init(formatter: CharacterListDataFormatterProtocol) {
           self.formatter = formatter
       }
    
    func getCharacterList() {
        state?(.loading)
        fireApiCall(with: apiCallHandler)
        
    }
    
    func subscribeState(completion: @escaping CharacterListStateBlock) {
           state = completion
       }
    
    private func fireApiCall(with completion: @escaping (Result<CharacterDataResponse, ErrorResponse>) -> Void) {
        
        do {
            let urlRequest = try MarvelCharactersApiServiceProvider().returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error : \(error)")
        }
        
    }
    
    private func dataHandler(with response: CharacterDataResponse) {
          self.data = response
          state?(.done)
      }
    
    private lazy var apiCallHandler: (Result<CharacterDataResponse, ErrorResponse>) -> Void = { [weak self] result in
            // to show how to handle error .....
            switch result {
            case .failure(let error):
                print("error : \(error)")
                self?.state?(.failure)
            case .success(let data):
                self?.dataHandler(with: data)
            }
        }
    
    
}

//MARK: - ItemListProtocol Extension

extension CharacterListViewModel: ItemListProtocol {
    
    
    func askNumberOfSection() -> Int {
        return 1
    }
    
    func askNumberOfItem(in section: Int) -> Int {
        return 0
    }
    
    func askData(at index: Int) -> GenericDataProtocol? {
        return nil
    }
    
    
    
}
