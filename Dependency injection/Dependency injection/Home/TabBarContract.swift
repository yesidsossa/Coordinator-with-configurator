//
//  TabBarContract.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

protocol TabBarViewType: BaseView {
    // PRESENTER -> VIEW
}

protocol TabBarPresenterType: BasePresenterProtocol {
    // VIEW -> PRESENTER
    func bind(withView view: TabBarViewType)
}

protocol TabBarCoordinatorType: AnyObject {
    // PRESENTER -> COORDINATOR
}
