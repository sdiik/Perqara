//
//  URLSessionProtocol.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation

protocol URLSessionProtocol {
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol {}
