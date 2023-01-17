//
//  GameListRepository.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

typealias FetchGameListResult = (_ result: Result<GameListDataModel, FetchGameListError>) -> Void

protocol GameListRepository {
    func fetchGameList(pageNumber: Int?, pageSize: Int?, keyword: String?, result: @escaping FetchGameListResult)
}
