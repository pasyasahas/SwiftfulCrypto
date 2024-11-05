//
//  DetailViewModel.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 11/5/24.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellable = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("Recieved coin detail data")
                print(returnedCoinDetails)
            }
            .store(in: &cancellable)
    }
    
}
