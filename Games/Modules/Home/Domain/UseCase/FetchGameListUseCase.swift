//
//  FetchGameListUseCase.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

typealias FetchGameListUseCaseCompletionHandler = (_ result: Result<[GameItemDataModel], FetchGameListError>) -> Void

protocol FetchGameListUseCase {
    func execute(pageNumber: Int?, pageSize: Int?, keyword: String?, completionHandler: @escaping FetchGameListUseCaseCompletionHandler)
}
