//
//  ContentView.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 17/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary")
                    .foregroundStyle(Color.theme.secondaryText)
                
                Text("Red")
                    .foregroundStyle(Color.theme.red)
                
                Text("Green")
                    .foregroundStyle(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
