//
//  StartButtonView.swift
//  Fructus
//
//  Created by 김동현 on 2023/06/26.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        Button {
            print("Exit the onboarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } // Button
        .accentColor(.white)
    }
}

// MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
