//
//  CenterModifier.swift
//  Africa
//
//  Created by 김동현 on 2023/07/02.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
