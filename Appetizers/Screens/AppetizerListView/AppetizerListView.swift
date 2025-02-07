//
//  AppetixerListView.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizersViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    AppetizerListCell(apperitizer: appetizer)
                        .listRowSeparator(.visible, edges: .top)
                        .onTapGesture {
                            viewModel.isDetailViewsShowing = true
                            viewModel.selectedAppetizer = appetizer
                        }
        
                }
                .scrollIndicators(.never)
                .disabled(viewModel.isDetailViewsShowing)
                .listStyle(.plain)
                .navigationTitle("Appetiziers")
            }
            .blur(radius: viewModel.isDetailViewsShowing ? 20 : 0)
            
            if viewModel.isDetailViewsShowing {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer,
                                    isShowingDelailView: $viewModel.isDetailViewsShowing)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { item in
            Alert(title: item.title,
                  message: Text(item.message),
                  dismissButton: item.dissmissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
