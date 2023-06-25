//
//  GradientButtonStyle.swift
//  Hiking
//
//  Created by 김동현 on 2023/06/25.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        return configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Condition ? A : B
                configuration.isPressed ?
                // A: When user pressed button
                // B: When the button is not pressed
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                    ],
                    startPoint: .top
                    , endPoint: .bottom
                )
                :
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top
                    , endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
