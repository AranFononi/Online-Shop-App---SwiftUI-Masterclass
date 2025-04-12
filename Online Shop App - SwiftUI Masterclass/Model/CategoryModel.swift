//
//  CategoryModel.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 12/4/25.
//

import Foundation

struct Category: Codable, Identifiable {
    let id : Int
    let name: String
    let image: String
}
