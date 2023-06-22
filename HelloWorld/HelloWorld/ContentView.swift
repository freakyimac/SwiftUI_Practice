//
//  ContentView.swift
//  HelloWorld
//
//  Created by 김동현 on 2023/06/23.
//

import SwiftUI

struct ContentView: View {
    
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        // MARK: - 1. Basic
//        AsyncImage(url: URL(string: imageURL))
        // MARK: - 2. Scale
//        AsyncImage(url: URL(string: imageURL), scale: 3)
        // MARK: - 3. Placeholder
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 128)
                .foregroundColor(.purple)
                .opacity(0.5)
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
