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

    private let loginView = LoginView()

    // MARK: Properties
    private var ownPresenter: LoginPresenterType!{
        return presenter as? LoginPresenterType
    }

    override func loadView() {
        super.loadView()
        setupView()
        title = "Login"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.pressedLoginButton = { [unowned self] in
            ownPresenter.loginSuccess()
        }
    }
    
    private func setupView() {
        view.addSubview(loginView)
        loginView.anchor(
            top: view.topAnchor,
            left: view.leftAnchor,
            bottom: view.bottomAnchor,
            right: view.rightAnchor
        )
    }
}

extension LoginViewController: LoginViewType {
    // TODO: implement view output methods
}
