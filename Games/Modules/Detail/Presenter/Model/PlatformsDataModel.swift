//
//  PlatformsDataModel.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation

struct PlatformDataModel: Codable {
    let platform: imageBackgroundModel?
}

struct imageBackgroundModel: Codable {
    let imageBackground: String
    
    enum CodingKeys: String, CodingKey {
        case imageBackground = "image_background"
    }
}
