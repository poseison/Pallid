//
//  Item.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 31/1/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
