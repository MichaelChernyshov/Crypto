//
//  HapticManager.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 30/03/2024.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type )
    }
}
