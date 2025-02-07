//
//  AppetizeView.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import SwiftUI

struct AppetizerListCell: View {
    let apperitizer: Appetizer
    var body: some View {
        HStack(spacing: 20) {
            AppetizerRemoteImage(urlString: apperitizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(.rect(cornerRadius: 8))

            VStack(alignment: .leading, spacing: 5) {
                Text(apperitizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
              
                Text("$" + String(apperitizer.price))
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    AppetizerListCell(apperitizer: MockData.sampleAppetize)
}
