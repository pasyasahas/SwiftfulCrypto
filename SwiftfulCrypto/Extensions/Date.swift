//
//  Date.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 11/6/24.
//

import Foundation

extension Date {
    
    // "2021-03-13T20:49:26.606Z
    init(coinGeckString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormater: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormater.string(from: self)
    }
    
}
