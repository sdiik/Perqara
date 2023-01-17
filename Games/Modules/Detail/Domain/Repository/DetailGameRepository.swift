//
//  DetailGameRepository.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

typealias FetchDetailGameResult = (_ result: Result<DetailItemModel, FetchDetailGameError>) -> Void

protocol DetailGameRepository {
    func fetchDetailGame(with id: Int, result: @escaping FetchDetailGameResult)
}
