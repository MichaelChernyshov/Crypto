//
//  DetailViewModel.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 31/03/2024.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    private let coinDetailService: CoinDetailDataService
    private var cancelables = Set<AnyCancellable>()
    
    init (coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("Recieved detail")
            }
            .store(in: &cancelables)
    }
}
