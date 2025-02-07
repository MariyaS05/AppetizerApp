//
//  ContentView.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
                .badge(order.items.count)
        }
        .tint(Color.accent)
        .onAppear {
            UITabBar.appearance().backgroundColor = .systemGray4.withAlphaComponent(0.2)
        }
    }
}

#Preview {
    AppetizerTabView()
}
