//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 23/03/2024.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancelables = Set<AnyCancellable>()
    
    init() {
        addSubsribers()
    }
    
    func addSubsribers() {
        // Updates all coins and filter
        $searchText
            .combineLatest(dataService.$allCoins)
            .map (filterCoins)
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancelables)
    }
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins
        }
        
        let lowercasedText = text.lowercased()
        return coins.filter { coin -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
    }
}
