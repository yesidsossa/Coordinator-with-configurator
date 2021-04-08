//
//  TabBarViewController.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class TabBarViewController: BaseViewController {
    private let tabBarView = TabBarView()

    // MARK: Properties
    private var ownPresenter: TabBarPresenterType!{
        return presenter as? TabBarPresenterType
    }

    override func loadView() {
        super.loadView()
        setupView()
        title = "TabBar"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupView() {
        view.addSubview(tabBarView)
        tabBarView.anchor(
            top: view.topAnchor,
            left: view.leftAnchor,
            bottom: view.bottomAnchor,
            right: view.rightAnchor
        )
    }
}

extension TabBarViewController: TabBarViewType {
    // TODO: implement view output methods
}
