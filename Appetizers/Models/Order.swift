//
//  Order.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 5.02.25.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        return items.map({ $0.price}).reduce(0, +)
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(index: IndexSet) {
        items.remove(atOffsets: index)
    }
}
