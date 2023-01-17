//
//  TabBarViewController.swift
//  Games
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNavigationControllers()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(named: "background_color") 
        tabBar.tintColor = UIColor(named: "tab_color")
        let appearance = UITabBarItem.appearance(whenContainedInInstancesOf: [TabBarViewController.self])
        appearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(named: "tab_color") as Any], for: .normal)
        appearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(named: "tab_selected_color") as Any], for: .selected)
    }
    
    private func setupNavigationControllers() {
        viewControllers = [
            createNavController(for: HomeViewController(), title: .home, image: UIImage(systemName: "house")!),
            createNavController(for: FavoriteViewController(), title: .favorite, image: UIImage(systemName: "heart")!)
        ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: tabBarType, image: UIImage) -> UIViewController {
        let navController = showNavigationBar(controller: rootViewController)
        navController.tabBarItem.title = title.tabTitle
        navController.tabBarItem.image = image
        rootViewController.navigationItem.title = title.navigationTitle
        return navController
    }
}

