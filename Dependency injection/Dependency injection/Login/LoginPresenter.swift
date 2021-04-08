//
//  LoginPresenter.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation

final class LoginPresenter: BasePresenter {
    
    // MARK: Properties
    struct InputDependencies {
        weak var coordinator: LoginCoordinatorType?
    }
    
    private let dependencies: InputDependencies
    
    private var ownView: LoginViewType! {
        return view as? LoginViewType
    }
    
    init(dependencies: InputDependencies) {
        self.dependencies = dependencies
        super.init()
    }
}

extension LoginPresenter: LoginPresenterType {
    // TODO: implement presenter methods
    func bind(withView view: LoginViewType) {
        super.bind(withView: view)
    }
    
    func loginSuccess() {
        dependencies.coordinator?.loginSuccessFake()
    }
}
