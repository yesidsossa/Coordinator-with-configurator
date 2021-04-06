//
//  WelcomeContract.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

protocol WelcomeViewType: BaseView {
    // PRESENTER -> VIEW
}

protocol WelcomePresenterType: BasePresenterProtocol {
    // VIEW -> PRESENTER
    func bind(withView view: WelcomeViewType)
}

protocol WelcomeCoordinatorType: AnyObject {
    // PRESENTER -> COORDINATOR
}
