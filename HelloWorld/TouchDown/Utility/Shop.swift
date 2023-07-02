//
//  Shop.swift
//  TouchDown
//
//  Created by 김동현 on 2023/07/03.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
    
}
