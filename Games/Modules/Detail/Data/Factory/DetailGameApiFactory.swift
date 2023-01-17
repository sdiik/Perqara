//
//  DetailGameApiFactory.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation

protocol DetailGameApiFactory {
    func createGameDetailUrl(with idGame: Int) -> URLComponents
}
