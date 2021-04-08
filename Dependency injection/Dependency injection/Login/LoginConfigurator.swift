//
//  LoginConfigurator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class LoginConfigurator {
    static func configure(moduleInput: LoginConfigurator.ModuleInput) -> UIViewController {
        let viewController = LoginViewController()

        let dependencies = createDependencies(coordinator: moduleInput.coordinator)

        viewController.presenter = LoginPresenter(dependencies: dependencies)

        return viewController
    }
    
    private static func createDependencies(
        coordinator: LoginCoordinatorType) -> LoginPresenter.InputDependencies {

        let dependencies = LoginPresenter.InputDependencies(coordinator: coordinator)

        return dependencies
    }
    
    static func module(moduleInput: LoginConfigurator.ModuleInput) -> UIViewController {
        return LoginConfigurator.configure(moduleInput: moduleInput)
    }
}
