//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by 김동현 on 2023/06/28.
//

import SwiftUI

struct FuritNutrientsView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } // Box
    }
}

// MARK: - Preview
struct FuritNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FuritNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
