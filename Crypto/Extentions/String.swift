//
//  String.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 03/04/2024.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
