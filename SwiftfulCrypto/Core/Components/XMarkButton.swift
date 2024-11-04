//
//  XMarkButton.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 10/31/24.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
            
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    XMarkButton()
}
