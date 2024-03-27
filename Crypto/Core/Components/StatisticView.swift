//
//  StatisticView.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 27/03/2024.
//

import SwiftUI

struct StatisticView: View {
    let stat: StatisticModel
    var body: some View {
        VStack (alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(.degrees(
                        (stat.percantageChange ?? 0) >= 0 ? 0 : 180
                    ))
                Text(stat.percantageChange?.asPercentString() ?? "")
                    .font(.caption)
                .bold()
            }
            .foregroundStyle((stat.percantageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(stat.percantageChange == nil ? 0.0 : 1.0)
        }
    }
}


struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
            StatisticView(stat: dev.stat1)
    }
}
