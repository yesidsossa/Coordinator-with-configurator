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

    // MARK: Properties
    private var ownPresenter: TabBarPresenterType!{
        return presenter as? TabBarPresenterType
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TabBarViewController: TabBarViewType {
    // TODO: implement view output methods
}
