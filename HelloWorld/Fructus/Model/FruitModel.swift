//
//  FruitModel.swift
//  Fructus
//
//  Created by 김동현 on 2023/06/26.
//

import SwiftUI

// MARK: - Fruits Data Model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
