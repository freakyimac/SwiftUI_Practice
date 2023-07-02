//
//  Constant.swift
//  TouchDown
//
//  Created by 김동현 on 2023/07/02.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
// Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(.systemGray4)
// Layout
let columnsSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: .init(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
// Api
// Image
// Font
// String
// Misc
