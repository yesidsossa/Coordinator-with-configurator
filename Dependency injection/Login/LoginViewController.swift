//
//  LoginViewController.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class LoginViewController: BaseViewController {

    // MARK: Properties
    private var ownPresenter: LoginPresenterType!{
        return presenter as? LoginPresenterType
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LoginViewController: LoginViewType {
    // TODO: implement view output methods
}
