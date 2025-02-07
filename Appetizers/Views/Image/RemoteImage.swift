//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 21.01.25.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromUrlString urlString: String) {
        NetworkManager.shared.downloadImage(formURLString: urlString) { [weak self] uiimage in
            guard let uiimage else { return }
            
            DispatchQueue.main.async {
                self?.image = Image(uiImage: uiimage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}


struct AppetizerRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear() {
                imageLoader.load(fromUrlString: urlString)
            }
    }
}
