//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by 김동현 on 2023/07/04.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
