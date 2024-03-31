//
//  DetailView.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 31/03/2024.
//

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: CoinModel?
     
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
    
}

struct DetailView: View {
    @StateObject var vm: DetailViewModel
    
    init (coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Init Detail view for: \(coin.name)")
    }
    
    var body: some View {
        Text("Hello")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
