//
//  OnboardingView.swift
//  Fructus
//
//  Created by 김동현 on 2023/06/26.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properteis
    
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } // Loop
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
