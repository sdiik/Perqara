//
//  PublishedDataModel.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation

struct PublishedDataModel: Codable {
    let id: Int?
    let name: String?
    let gameCount: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case gameCount = "games_count"
    }
}
