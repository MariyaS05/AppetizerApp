//
//  AppetizersViewModel.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import Foundation
import SwiftUI

final class AppetizersViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isDetailViewsShowing: Bool = false
    @Published var selectedAppetizer: Appetizer = MockData.sampleAppetize
    
    init() {
        getAppetizers()
    }
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result  in
            guard let self else { return }
            
            Task{ @MainActor in
                self.isLoading = false
                switch result {
                case .success(let appetizersModel):
                    self.appetizers = appetizersModel
                 
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .invalidUrl:
                        self.alertItem = AlertContext.invalidUrl
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
