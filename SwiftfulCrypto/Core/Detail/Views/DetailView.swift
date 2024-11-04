//
//  DetailView.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 11/4/24.
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
    
    let coin: CoinModel
    
    init(coin: CoinModel){
        self.coin = coin
        print("Initializing DetailView for \(coin.name)")
    }
    
    var body: some View {
                Text(coin.name)
            }
}

#Preview {
    DetailView(coin: DeveloperPreview.instance.coin)
}
