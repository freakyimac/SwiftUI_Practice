//
//  ContentView.swift
//  HelloWorld
//
//  Created by 김동현 on 2023/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("iOS")
            .font(.system(size: 180))
            .fontWeight(.black)
            .foregroundStyle(.teal.gradient)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
