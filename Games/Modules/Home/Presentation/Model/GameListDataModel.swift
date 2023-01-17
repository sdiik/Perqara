//
//  GameListDataModel.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation

struct GameListDataModel: Codable {
    let gameList: [GameItemDataModel]?
    
    enum CodingKeys: String, CodingKey {
        case gameList = "results"
    }
}
