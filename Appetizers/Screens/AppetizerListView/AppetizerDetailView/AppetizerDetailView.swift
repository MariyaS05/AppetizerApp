//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 21.01.25.
//

import SwiftUI

struct AppetizerDetailView: View {
    @EnvironmentObject var order: Order
    var appetizer: Appetizer
    @Binding var isShowingDelailView: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 320, height: 200)

            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding(20)
            
            HStack(spacing: 40) {
                NutritianInfoView(parameter: "Calories",
                                value:String(appetizer.calories))

                NutritianInfoView(parameter: "Carbs",
                                value:String(appetizer.carbs))
                
                NutritianInfoView(parameter: "Protein",
                                value:String(appetizer.protein))
            }
            
            Spacer()
            
            Button(action: {
                order.add(appetizer)
                isShowingDelailView = false
            }) {
                Text("$\(String(appetizer.price)) - Add To Order")
            }
            .modifier(StandartButtonStyle())
            .padding(.bottom,30)
        }
        .frame(width: 320, height: 525, alignment: .center)
        .background(Color(.secondarySystemBackground))
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button (action: {
                isShowingDelailView = false
            }) {
                XDissmissButton()
            }
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetize, isShowingDelailView: .constant(true))
}

struct NutritianInfoView: View {
    let parameter: String
    let value: String
    var body: some View {
        VStack(spacing: 5){
            Text(parameter)
                .font(.caption)
                .fontWeight(.bold)
                .padding(.vertical, 5)
            
            Text(value)
                .fontWeight(.semibold)
                .italic()
                .foregroundStyle(.secondary)
        }
    }
}
