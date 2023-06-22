//
//  HomeView.swift
//  Restart
//
//  Created by 김동현 on 2023/06/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            Button {
            isOnboardingViewActive = true
            } label: {
                Text("Restart")
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
