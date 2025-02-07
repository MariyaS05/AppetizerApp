//
//  OrderViewModel.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 5.02.25.
//

import SwiftUI

final class OrderViewModel: ObservableObject {
    
    @Published var orderedAppetizers: [Appetizer] = MockData.appetizers
        
    var totalPrice: Double {
        return orderedAppetizers.map({ $0.price}).reduce( 0, +)
    }
}
