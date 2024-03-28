//
//  XMarkButton.swift
//  Crypto
//
//  Created by Mikhail Chernyshov on 28/03/2024.
//

import SwiftUI

struct XMarkButton: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "xmark")
        })
    }
}

#Preview {
    XMarkButton()
}
