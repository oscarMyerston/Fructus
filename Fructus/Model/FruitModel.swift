//
//  FruitModel.swift
//  Fructus
//
//  Created by Oscar David Myerston Vega on 26/06/24.
//

import SwiftUI

// MARK: - FRUIST DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
