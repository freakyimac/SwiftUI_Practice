//
//  SettingsRowView.swift
//  Fructus
//
//  Created by 김동현 on 2023/06/28.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properteis
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if let content {
                    Text(content)
                } else if let linkLabel, let linkDestination {
                  Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                  Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
        SettingsRowView(name: "Developer", content: "John / Jane")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
    }
}
