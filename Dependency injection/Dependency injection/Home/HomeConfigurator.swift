//
//  TabBarConfigurator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class HomeConfigurator {
    static func configure(moduleInput: HomeConfigurator.ModuleInput) -> UIViewController {
        let viewController = HomeViewController()

        let dependencies = createDependencies(coordinator: moduleInput.coordinator)

        viewController.presenter = HomePresenter(dependencies: dependencies)

        return viewController
    }
    
    private static func createDependencies(
        coordinator: HomeCoordinatorType) -> HomePresenter.InputDependencies {

        let dependencies = HomePresenter.InputDependencies(coordinator: coordinator)

        return dependencies
    }
    
    static func module(moduleInput: HomeConfigurator.ModuleInput) -> UIViewController {
        return HomeConfigurator.configure(moduleInput: moduleInput)
    }
}
