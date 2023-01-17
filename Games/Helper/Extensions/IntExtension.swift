//
//  IntExtension.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

typealias HTTPStatusCode = Int

extension HTTPStatusCode {
    var isOk: Bool {
        return self >= 200 && self < 300
    }
}
