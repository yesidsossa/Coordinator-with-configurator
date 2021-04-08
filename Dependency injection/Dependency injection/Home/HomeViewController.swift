//
//  TabBarViewController.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class HomeViewController: BaseViewController {
    private let homeView = HomeView()

    // MARK: Properties
    private var ownPresenter: HomePresenterType!{
        return presenter as? HomePresenterType
    }

    override func loadView() {
        super.loadView()
        setupView()
        title = "Home"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupView() {
        view.addSubview(homeView)
        homeView.anchor(
            top: view.topAnchor,
            left: view.leftAnchor,
            bottom: view.bottomAnchor,
            right: view.rightAnchor
        )
    }
}

extension HomeViewController: HomeViewType {
    // TODO: implement view output methods
}
