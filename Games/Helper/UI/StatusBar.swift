//
//  StatusBar.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation
import UIKit

func setupStatusBar() {
    UIApplication.shared.statusBarStyle = .lightContent
    if #available(iOS 13.0, *) {
        let statusBar = UIView(frame: UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
        statusBar.backgroundColor = UIColor(named: "blue_color")
        statusBar.tintColor = UIColor(named: "blue_color")
        UIApplication.shared.keyWindow?.addSubview(statusBar)
    }
}
