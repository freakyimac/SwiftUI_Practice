//
//  ContentView.swift
//  Africa
//
//  Created by 김동현 on 2023/06/29.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimaDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                }
            } // list
            .navigationBarTitle("Africa", displayMode: .large)
        } // Navigation
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
