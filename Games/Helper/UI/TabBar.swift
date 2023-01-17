//
//  TabBar.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showTabBar() {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func hiddenTabBar() {
        self.tabBarController?.tabBar.isHidden = true
    }
}
