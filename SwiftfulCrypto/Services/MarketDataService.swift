//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 10/31/24.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
                else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedGLobalData in
                self?.marketData = returnedGLobalData.data
                self?.marketDataSubscription?.cancel()
            })

    }
}
