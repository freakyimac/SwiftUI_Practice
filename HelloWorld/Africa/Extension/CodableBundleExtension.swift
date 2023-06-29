//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by 김동현 on 2023/06/30.
//

import Foundation

extension Bundle {
    
    func decode(_ file: String) -> [CoverImage] {
        // 1. locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle")
        }
        // 2. create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        // 3. create the decoder
        let decoder = JSONDecoder()
        // 4. create a property for the decode data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("failed to decode \(file) from bundle")
        }
        // 5. return the ready to use data
        return loaded
    }
    
}
