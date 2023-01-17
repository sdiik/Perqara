//
//  FavoriteViewController.swift
//  Games
//
//  Created by ahmad shiddiq on 17/01/23.
//

import Foundation
import UIKit

class FavoriteViewController: UIViewController {
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var favoritesTableView: UITableView! {
        didSet {
            favoritesTableView.delegate = self
            favoritesTableView.dataSource = self
        }
    }
    
    var favoriteViewModel = FavoriteViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteViewModel.delegate = self
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showTabBar()
        callFavorite()
    }
    
    private func setupView() {
        favoritesTableView.register(UINib(nibName: "GameTableCell", bundle: nil), forCellReuseIdentifier: "GameTableCell")
    }
    
    private func callFavorite() {
         self.favoriteViewModel.callFetchFavoriteGame()
    }
}
extension FavoriteViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteViewModel.detailGame.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return self.tableView(tableView, cellForGameRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, cellForGameRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GameTableCell", for: indexPath) as? GameTableCell
        else { return UITableViewCell() }
        cell.setupView(with: favoriteViewModel.detailGame[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gameSelected = favoriteViewModel.detailGame[indexPath.row]
        let detailGame = DetailViewController()
        detailGame.setDetailId(with: gameSelected.id ?? 0)
        self.navigationController?.pushViewController(detailGame, animated: true)
    }
}
extension FavoriteViewController: FavoriteDelegate {
    func isLoading(status: Bool) {
        if status {
            loadingIndicator.startAnimating()
        } else {
            loadingIndicator.stopAnimating()
        }
    }
    
    func fetchFavoriteSuccess() {
        onMainThreadAsync { [weak self] in
            self?.favoritesTableView.reloadData()
        }
    }
    
    func fetchFavoriteFailed(with message: String) {
        Alert.showMessage(with: message, controller: self)
    }
}

