//
//  VideoModel.swift
//  Africa
//
//  Created by 김동현 on 2023/07/01.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    
    var thumbnail: String {
        "video-\(id)"
    }
}
