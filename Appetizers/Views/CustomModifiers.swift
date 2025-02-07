//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 7.02.25.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.accent)
            .controlSize(.large)
    }
}
