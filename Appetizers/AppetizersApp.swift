//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
