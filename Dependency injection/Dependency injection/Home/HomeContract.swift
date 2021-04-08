//
//  TabBarContract.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

protocol HomeViewType: BaseView {
    // PRESENTER -> VIEW
}

protocol HomePresenterType: BasePresenterProtocol {
    // VIEW -> PRESENTER
    func bind(withView view: HomeViewType)
}

protocol HomeCoordinatorType: AnyObject {
    // PRESENTER -> COORDINATOR
}
