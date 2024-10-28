//
//  ContentView.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 10/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack(spacing: 40) {
                Text("AccentColor")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundStyle(Color.theme.red)
                
                Text("Green Color")
                    .foregroundStyle(Color.theme.green)
                
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
