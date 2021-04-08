//
//  WelcomeConfigurator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class WelcomeConfigurator {
    static func configure(moduleInput: WelcomeConfigurator.ModuleInput) -> UIViewController {
        let viewController = WelcomeViewController()

        let dependencies = createDependencies(coordinator: moduleInput.coordinator)

        viewController.presenter = WelcomePresenter(dependencies: dependencies)

        return viewController
    }
    
    private static func createDependencies(
        coordinator: WelcomeCoordinatorType) -> WelcomePresenter.InputDependencies {

        let dependencies = WelcomePresenter.InputDependencies(coordinator: coordinator)

        return dependencies
    }
    
    static func module(moduleInput: WelcomeConfigurator.ModuleInput) -> UIViewController {
        return WelcomeConfigurator.configure(moduleInput: moduleInput)
    }
}
