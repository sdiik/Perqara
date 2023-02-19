//
//  TabBarModel.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation

enum tabBarType: String {
    case home
    case favorite
    
    var tabTitle: String {
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        }
    }
    
    var navigationTitle: String {
        switch self {
        case .home:
            return R.string.navigationTitle.home()
        case .favorite:
            return R.string.navigationTitle.favorite()
        }
    }
    
    
}

