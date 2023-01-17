//
//  GameListApiFactory.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation

protocol GameListApiFactory {
    func createGameListUrl(pageNumber: Int?, pageSize: Int?, keyword: String?) -> URLComponents
}
