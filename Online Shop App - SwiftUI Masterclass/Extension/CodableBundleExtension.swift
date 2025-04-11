//
//  CodableBundleExtension.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 11/4/25.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file).json in bundle")
        }
        // Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError( "Failed to load \(file).json from bundle")
        }
        // create a decoder
        let decoder = JSONDecoder()
        
        // create a property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError( "Failed to decode \(file).json from bundle")
            
        }
        // return ready-to-use data
        
        return decodedData
        
    }
}
