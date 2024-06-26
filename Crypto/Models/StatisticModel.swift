//
//  StatisticModel.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 27/03/2024.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percantageChange: Double?
    
    init(title: String, value: String, percantageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percantageChange = percantageChange
    }
}
