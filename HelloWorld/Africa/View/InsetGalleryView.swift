//
//  InsetGalleryView.swift
//  Africa
//
//  Created by 김동현 on 2023/06/30.
//

import SwiftUI

struct InsetGalleryView: View {
    
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } // loop
            } // HStack
        }
    }
}

// MARK: - Preview
struct InsetGalleryView_Previews: PreviewProvider {
    static let animas: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animas[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
