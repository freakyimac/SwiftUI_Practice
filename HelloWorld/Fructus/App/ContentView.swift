//
//  ContentView.swift
//  Fructus
//
//  Created by 김동현 on 2023/06/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSetting: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) // Button
                    .sheet(isPresented: $isShowingSetting, content: {
                        SettingsView()
                    })
            )
        } // Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
