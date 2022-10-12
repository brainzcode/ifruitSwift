//
//  FruitModel.swift
//  iFRUIT
//
//  Created by SOG on 5/5/22.
//

import SwiftUI

// FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
