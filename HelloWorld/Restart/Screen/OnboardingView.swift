//
//  OnboardingView.swift
//  Restart
//
//  Created by 김동현 on 2023/06/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                // MARK: - Header
                Spacer()
                VStack(spacing: .zero) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but how much love we put into giving
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } // Header
                // MARK: - Center
                ZStack {
                    CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } // Center
                Spacer()
                // MARK: - Footer
                HStack {
                    ZStack {
                        // parts of the custom button
                        // 1. Background
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                            .padding(8)
                        // 2. Action
                        Text("Get Started")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .offset(x: 20)
                        
                        // 3. Capsule(Dynamic Width)
                        HStack {
                            Capsule()
                                .fill(Color("ColorBlue"))
                                .frame(width: buttonOffset + 80)
                            Spacer()
                        }
                        // 4. Circle(Dragable)
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(Color("ColorRed"))
                                Circle()
                                    .fill(.black.opacity(0.15))
                                    .padding(6)
                                Image(systemName: "chevron.right.2")
                                    .font(.system(size: 24, weight: .bold))
                            }
                            .foregroundColor(.white)
                            .frame(width: 80, height: 80, alignment: .center)
                            .offset(x: buttonOffset)
                            .gesture (
                                DragGesture()
                                    .onChanged { gesture in
                                        if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                            
                                            buttonOffset = gesture.translation.width
                                        }
                                    }
                                    .onEnded { _ in
                                        if buttonOffset > buttonWidth / 2 {
                                            buttonOffset = buttonWidth - 80
                                            isOnboardingViewActive = false
                                        } else {
                                            buttonOffset = 0
                                        }
                                    }
                            ) // Gesture
                            
                            Spacer()
                        }
                    } // Footer
                    .frame(width: buttonWidth, height: 80, alignment: .center)
                    .padding()
                }
            } // VStack
        } // ZStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
