//
//  PageModel.swift
//  Pinch
//
//  Created by 김동현 on 2023/06/25.
//

import Foundation

struct Page: Identifiable {
    
    let id: Int
    let imageName: String
    
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
