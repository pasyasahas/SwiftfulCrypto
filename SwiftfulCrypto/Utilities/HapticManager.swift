//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 11/4/24.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func Notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
