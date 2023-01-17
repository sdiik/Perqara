//
//  DetailViewController.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var detailTableView: UITableView! {
        didSet {
            detailTableView.delegate = self
            detailTableView.dataSource = self
        }
    }
    
    var detailGameViewModel = DetailGameViewModel()
    var gameId = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        detailGameViewModel.delegate = self
        setupView()
        getDetailGame()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigation()
    }
    
    private func setupView() {
        detailTableView.register(UINib(nibName: "BannerTableCell", bundle: nil), forCellReuseIdentifier: "BannerTableCell")
        detailTableView.register(UINib(nibName: "DescriptionTableCell", bundle: nil), forCellReuseIdentifier: "DescriptionTableCell")
        detailTableView.register(UINib(nibName: "InfoTableCell", bundle: nil), forCellReuseIdentifier: "InfoTableCell")
        detailTableView.register(UINib(nibName: "PublisherTableCell", bundle: nil), forCellReuseIdentifier: "PublisherTableCell")
        detailTableView.estimatedRowHeight = 88.0
        detailTableView.rowHeight = UITableView.automaticDimension
    }
    
    private func setNavigation() {
        self.hiddenTabBar()
        self.title = "Detail"
        leftButtonNavigation()
        rightButtonNavigation()
    }
    
    private func leftButtonNavigation() {
        let backImage = UIImage(named: "icon_back")
        let leftButton = UIBarButtonItem(image: backImage, style: .plain, target: self, action: #selector(backTapped))
        leftButton.imageInsets = UIEdgeInsets(top: 0, left: -12, bottom: 0, right: 0)
        navigationItem.leftBarButtonItem = leftButton
        navigationItem.leftBarButtonItem?.tintColor = .white
    }
    
    private func rightButtonNavigation() {
        let favoriteImage = UIImage(named: "icon_heart")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: favoriteImage, style: .plain, target: self, action: #selector(favoriteTapped))
        if FavoritesSaved.isAlreadyFavoriteId(id: gameId) {
            navigationItem.rightBarButtonItem?.tintColor = .red
        } else {
            navigationItem.rightBarButtonItem?.tintColor = .white
        }
    }
    
    @objc func backTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func favoriteTapped() {
        if FavoritesSaved.isAlreadyFavoriteId(id: gameId) {
            FavoritesSaved.removeFavoriteId(id: gameId)
        } else {
            FavoritesSaved.setFavoriteIds(with: gameId)
        }
        rightButtonNavigation()
    }
    
    internal func setDetailId(with id: Int) {
        gameId = id
    }
    
    private func getDetailGame() {
        detailGameViewModel.callFetchDetailGame(with: gameId)
    }
}
extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            return self.tableView(tableView, cellBannerForRowAt: indexPath)
        case 1:
            return self.tableView(tableView, cellPublisherForRowAt: indexPath)
        case 2:
            return self.tableView(tableView, cellInfoForRowAt: indexPath)
        case 3:
            return self.tableView(tableView, cellDescriptionForRowAt: indexPath)
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    private func tableView(_ tableView: UITableView, cellBannerForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableCell",
                                                            for: indexPath) as? BannerTableCell else { return .init() }
        cell.setupView(with: detailGameViewModel.detailGame)
        return cell
    }
    
    private func tableView(_ tableView: UITableView, cellDescriptionForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionTableCell",
                                                            for: indexPath) as? DescriptionTableCell else { return .init() }
        cell.setupView(with: detailGameViewModel.detailGame)
        return cell
    }
    
    private func tableView(_ tableView: UITableView, cellInfoForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTableCell",
                                                            for: indexPath) as? InfoTableCell else { return .init() }
        cell.setupView(with: detailGameViewModel.detailGame)
        return cell
    }
    
    private func tableView(_ tableView: UITableView, cellPublisherForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PublisherTableCell",
                                                            for: indexPath) as? PublisherTableCell else { return .init() }
        cell.setupView(with: detailGameViewModel.detailGame)
        return cell
    }
}
extension DetailViewController: DetailGameViewDelegate {
    func isLoading(status: Bool) {
        if status {
            loadingIndicator.startAnimating()
        } else {
            loadingIndicator.stopAnimating()
        }
    }
    
    func fetchDetailGameSuccess() {
        onMainThreadAsync { [weak self] in
            self?.detailTableView.reloadData()
        }
    }
    
    func fetchDetailGameFailed(with message: String) {
        Alert.showMessage(with: message, controller: self)
    }
}
