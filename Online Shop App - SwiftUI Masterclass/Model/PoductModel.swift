//
//  PoductModel.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 14/4/25.
//

import Foundation


struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
