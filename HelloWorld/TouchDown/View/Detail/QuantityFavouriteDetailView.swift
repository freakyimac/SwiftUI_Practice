//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by 김동현 on 2023/07/03.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - Properties
    @State private var counter: Int = .zero
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
                Text("\(counter)")
                    .fontWeight(.semibold)
                    .frame(minWidth: 36)
            }
            Button {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            Spacer()

            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        } // Hstack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

// MARK: - Preview
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
