//
//  ContentView.swift
//  Restart
//
//  Created by 김동현 on 2023/06/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") private var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeInOut(duration: 0.4), value: isOnboardingViewActive)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
