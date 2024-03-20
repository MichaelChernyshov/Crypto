//
//  CryptoApp.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 17/03/2024.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .toolbar(.hidden)
            }
        }
    }
}
