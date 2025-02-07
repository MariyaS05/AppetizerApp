//
//  APButton.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 4.02.25.
//

import SwiftUI

struct APButton: View {
    var appetizerPrice: String
    var body: some View {
        Text("$" + String(appetizerPrice))
            .font(.title3)
            .padding()
            .foregroundColor(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(appetizerPrice: "")
}
