//
//  LoginCoordinator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class LoginCoordinator: BaseCoordinator {

    func start() -> Presentable {
        
        let moduleInput = LoginConfigurator.ModuleInput(coordinator: self)

        return LoginConfigurator.module(moduleInput: moduleInput)
    }
}

extension LoginCoordinator: LoginCoordinatorType {
    // TODO: implement view output methods
}
