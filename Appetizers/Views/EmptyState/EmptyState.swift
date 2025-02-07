//
//  EmptyState.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 5.02.25.
//

import SwiftUI

struct EmptyState: View {
    let imageName: String
    let message: String 
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            

            Text(message)
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding()
        }
        .background(Color(.systemBackground))
        .offset(y: -50)

    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Your order is empty" )
}
