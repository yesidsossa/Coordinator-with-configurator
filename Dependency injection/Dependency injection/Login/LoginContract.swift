//
//  LoginContract.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

protocol LoginViewType: BaseView {
    // PRESENTER -> VIEW
}

protocol LoginPresenterType: BasePresenterProtocol {
    // VIEW -> PRESENTER
    func bind(withView view: LoginViewType)
    func loginSuccess()
}

protocol LoginCoordinatorType: AnyObject {
    // PRESENTER -> COORDINATOR
    func loginSuccessFake()
}
