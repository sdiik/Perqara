//
//  NavigationBar.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation
import UIKit

func showNavigationBar(controller: UIViewController) -> UINavigationController {
    let navController = UINavigationController(rootViewController: controller)
    navController.navigationBar.barTintColor = UIColor(named: "blue_color")
    navController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    navController.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    navController.navigationBar.backgroundColor = UIColor(named: "blue_color")
    navController.title = "dasda"
    return navController
}
