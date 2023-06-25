//
//  CardView.swift
//  Hiking
//
//  Created by 김동현 on 2023/06/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - Card
        ZStack {
            CustomBackgroundView()
            ZStack {
                
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 256)
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()
                
            }
        } // Card
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
