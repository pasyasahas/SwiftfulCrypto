//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 11/7/24.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
