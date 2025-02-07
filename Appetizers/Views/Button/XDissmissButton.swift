//
//  XDissmissButton.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 4.02.25.
//

import SwiftUI

struct XDissmissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30, alignment: .top)
                .foregroundStyle(Color.white)
                .opacity(0.6)
                .padding(5)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .foregroundStyle(Color.black)
                
        }
    }
}

#Preview {
    XDissmissButton()
}
