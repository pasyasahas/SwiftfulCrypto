//
//  CoinImageViewModel.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 10/30/24.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    
    init(coin: CoinModel){
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers(){
        
        dataService.$image
            .sink { [weak self] _ in
                self?.isLoading = false
            } receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
            }
            .store(in: &cancellables)

        
    }
}
