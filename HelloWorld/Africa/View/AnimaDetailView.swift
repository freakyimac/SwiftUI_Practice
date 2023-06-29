//
//  AnimaDetailView.swift
//  Africa
//
//  Created by 김동현 on 2023/06/30.
//

import SwiftUI

struct AnimaDetailView: View {
    
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "wilderness in pictures")
                    InsetGalleryView(animal: animal)
                }
                
                // facts
                
                // description
                
                // map
                
                // link
            }
            .navigationBarTitle("learn about \(animal.name)", displayMode: .inline)
        }
    }
}

// MARK: - Preview
struct AnimaDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimaDetailView(animal: animals[0])
        }
    }
}
