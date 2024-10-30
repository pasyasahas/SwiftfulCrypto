//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 10/30/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
