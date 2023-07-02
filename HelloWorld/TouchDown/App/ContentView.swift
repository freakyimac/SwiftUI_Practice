//
//  ContentView.swift
//  TouchDown
//
//  Created by 김동현 on 2023/07/02.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            FooterView()
                .padding(.horizontal)
        }
        .padding()
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
