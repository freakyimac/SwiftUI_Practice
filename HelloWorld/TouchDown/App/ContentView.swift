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
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame (height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 10)
                        
                        CategoryGridView()
                            
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            } // Loop
                        } // VGrid
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    } // VStack
                } // SCroll
            } // VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } // ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
