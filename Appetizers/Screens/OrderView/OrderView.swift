//
//  OrderView.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import SwiftUI

struct OrderView: View {
    @StateObject var viewModel = OrderViewModel()
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
               
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(apperitizer: appetizer)
                        }.onDelete { index in
                            order.deleteItems(index: index)
                        }
                    }
                    
                    .listStyle(.inset)
                   
                    
                    Button(action: {
                        
                    }) {
                        if !order.items.isEmpty {
                            Text("$\(String(order.totalPrice)) - Place Order")
        
                        }
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have mo items in your order.")
                }
            }
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView()
}
